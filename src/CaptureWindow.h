#ifndef CaptureWindow_H__
#define CaptureWindow_H__

#include <Windows.h>
#include <gdiplus.h>
#include <string>

class CaptureWindow{
private:
	ULONG_PTR gdiplusToken;
public:
	std::wstring fileName;
	ULONG quality;
	
	CaptureWindow();
	~CaptureWindow();
	void capture();
	void screenshot(POINT a, POINT b);
	int GetEncoderClsid(const WCHAR* format, CLSID* pClsid);
};

#endif
