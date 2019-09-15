#include "CaptureWindow.h"

CaptureWindow::CaptureWindow()
{
    Gdiplus::GdiplusStartupInput gdiplusStartupInput;
    Gdiplus::GdiplusStartup(&gdiplusToken, &gdiplusStartupInput, NULL);
}

CaptureWindow::~CaptureWindow()
{
	Gdiplus::GdiplusShutdown(gdiplusToken);
}

void CaptureWindow::capture(int x, int y, int w, int h){
	RECT      rc;
    GetClientRect(GetDesktopWindow(), &rc);
    POINT a{ x, y };
    POINT b{ w, h };

    screenshot(a, b);
}

void CaptureWindow::screenshot(POINT a, POINT b)
{
    int w = b.x - a.x;
    int h = b.y - a.y;

    if(w <= 0) return;
    if(h <= 0) return;

    HDC     hScreen = GetDC(HWND_DESKTOP);
    HDC     hDc = CreateCompatibleDC(hScreen);
    HBITMAP hBitmap = CreateCompatibleBitmap(hScreen, w, h);
    HGDIOBJ old_obj = SelectObject(hDc, hBitmap);
    BitBlt(hDc, 0, 0, w, h, hScreen, a.x, a.y, SRCCOPY);

    Gdiplus::Bitmap bitmap(hBitmap, NULL);
    CLSID clsid;

    GetEncoderClsid(L"image/jpeg", &clsid);

	Gdiplus::EncoderParameters encoderParameters;

	encoderParameters.Count = 1;
	encoderParameters.Parameter[0].Guid = Gdiplus::EncoderQuality;
	encoderParameters.Parameter[0].Type = Gdiplus::EncoderParameterValueTypeLong;
	encoderParameters.Parameter[0].NumberOfValues = 1;
	encoderParameters.Parameter[0].Value = &quality;

    //GDI+ expects Unicode filenames
	fileName = L"./" + fileName;
    bitmap.Save(fileName.c_str(), &clsid, &encoderParameters);

    SelectObject(hDc, old_obj);
    DeleteDC(hDc);
    ReleaseDC(HWND_DESKTOP, hScreen);
    DeleteObject(hBitmap);
}

int CaptureWindow::GetEncoderClsid(const WCHAR* format, CLSID* pClsid)
{
    UINT  num = 0;          // number of image encoders
    UINT  size = 0;         // size of the image encoder array in bytes

    Gdiplus::GetImageEncodersSize(&num, &size);
    if(size == 0)
        return -1;  // Failure

    Gdiplus::ImageCodecInfo* pImageCodecInfo = (Gdiplus::ImageCodecInfo*)(malloc(size));
    if(pImageCodecInfo == NULL)
        return -1;  // Failure

    GetImageEncoders(num, size, pImageCodecInfo);

    for(UINT j = 0; j < num; ++j)
    {
        if(wcscmp(pImageCodecInfo[j].MimeType, format) == 0)
        {
            *pClsid = pImageCodecInfo[j].Clsid;
            free(pImageCodecInfo);
            return j;  // Success
        }
    }

    free(pImageCodecInfo);
    return -1;  // Failure
}
