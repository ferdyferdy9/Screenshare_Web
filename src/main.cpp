#include "Socket.h"
#include "webserver.h"
#include <iostream>
#include <thread>
#include <chrono>

void Request_Handler(webserver::http_request* r);

int x,y,w,h;
int frameRate, quality;
char * buffer;
long long length;
std::string fileBuffer;

void myLoop(){
	std::string filepath;
	std::ifstream is;

	CaptureWindow cw;
	cw.quality = quality;
	while(1){
		cw.fileName = L"test.jpg";
		cw.capture(x,y,w,h);
		filepath = "test.jpg";

		is.open(filepath, std::ifstream::binary);
		if(!is.is_open())
			std::cout << "bloody file is nowhere to be found. Call the cops\n";
		delete[] buffer;
		is.seekg (0, is.end);
		length = is.tellg();
		is.seekg (0);
		buffer = new char [length];
		is.read (buffer,length);
		is.close();

		std::this_thread::sleep_for(std::chrono::milliseconds(frameRate));

		cw.fileName = L"test2.jpg";
		cw.capture(x,y,w,h);
		filepath = "test2.jpg";

		is.open(filepath, std::ifstream::binary);
		if(!is.is_open())
			std::cout << "bloody file is nowhere to be found. Call the cops\n";
		delete[] buffer;
		is.seekg (0, is.end);
		length = is.tellg();
		is.seekg (0);
		buffer = new char [length];
		is.read (buffer,length);
		is.close();

		std::this_thread::sleep_for(std::chrono::milliseconds(frameRate));
	}
}

int main() {
    std::cout << "x y w h : ";
    std::cin >> x >> y >> w >> h;
	std::cout << "Input frameRate : ";
	std::cin >> frameRate;
	frameRate = 1000/frameRate;

	std::cout << "Input quality : ";
	std::cin >> quality;

	webserver server;
	std::thread th(myLoop);

	system("ipconfig");

	server.start(8080, Request_Handler);

	return 0;
}

void Request_Handler(webserver::http_request* r)
{
    Socket s = *(r->s_);

	if(r->accept_ == "image/webp,*/*" || r->path_ == "/test.jpg"){
		s.SendBytes("HTTP/1.1 200 OK\r\nContent-Length:" + std::to_string(length) + "\nContent-type: image/webp\r\n\r\n");

		int sckt = s.s_;
		const char *ptr = static_cast<const char*>(buffer);
		send(sckt, ptr, length, 0);

		s.Close();

		return;
	}

    std::string title;
    std::string body;
    std::string bgcolor="#ffffff";
    std::string links =
        "<p><a href='/red'>red</a> "
        "<br><a href='/blue'>blue</a> "
        "<br><a href='/form'>form</a> "
        "<br><a href='/auth'>authentication example</a> [use <b>rene</b> as username and <b>secretGarden</b> as password"
        "<br><a href='/header'>show some HTTP header details</a> "
        ;

    if(r->path_ == "/")
    {
        title = "Screenshare Server";
		body  = "\n<div id=\"Viewer\" class=\"imgPreview\">\n"
				"	<img id=\"imgPrev\" src=\"test.jpg\" class=\"img-responsive\"/>\n"
				"</div>\n"
				"</br><button id=\"btnFullscreen\">Fullscreen</button>\n";
    }
    else if (r->path_ == "/auth")
    {
        if (r->authentication_given_)
        {
            if (r->username_ == "rene" && r->password_ == "secretGarden")
            {
                body = "<h1>Successfully authenticated</h1>" + links;
            }
            else
            {
                body = "<h1>Wrong username or password</h1>" + links;
                r->auth_realm_ = "Private Stuff";
            }
        }
        else
        {
            r->auth_realm_ = "Private Stuff";
        }
    }
    else if (r->path_ == "/header")
    {
        title   = "some HTTP header details";
        body    = std::string ("<table>")                                   +
                  "<tr><td>Accept:</td><td>"          + r->accept_          + "</td></tr>" +
                  "<tr><td>Accept-Encoding:</td><td>" + r->accept_encoding_ + "</td></tr>" +
                  "<tr><td>Accept-Language:</td><td>" + r->accept_language_ + "</td></tr>" +
                  "<tr><td>User-Agent:</td><td>"      + r->user_agent_      + "</td></tr>" +
                  "</table>"                                                +
                  links;
    }
    else
    {
        r->status_ = "404 Not Found";
        title      = "Wrong URL";
        body       = "<h1>Wrong URL</h1>";
        body      += "Path is : &gt;" + r->path_ + "&lt;";
    }

    r->answer_  = "<html><head><title>";
    r->answer_ += title;
    r->answer_ += "</title>\n";
	r->answer_ += "    <style>\n"
				  "        * {\n"
				  "            margin: 0;\n"
				  "            padding: 0;\n"
				  "        }\n"
				  "        .imgPreview {\n"
				  "            display: grid;\n"
				  "            height: 100%;\n"
				  "        }\n"
				  "        .img-responsive {\n"
				  "            max-width: 100%;\n"
				  "            max-height: 100hv;\n"
				  "            margin: auto;\n"
				  "        }\n"
				  "    </style>\n";
	r->answer_ += "</head>\n<body bgcolor='" + bgcolor + "'>";
    r->answer_ += body;
    r->answer_ += "</body>";
	r->answer_ +=
				"<script>\n"
				"	var refreshInterval = " + std::to_string(frameRate) + ";\n"
				"	var timer = setInterval(function () {\n"
				"		var ImagePreview = document.getElementById('imgPrev');\n"
				"		ImagePreview.src = 'test.jpg?rand=' + Math.random();\n"
				"	}, refreshInterval)\n"
				"   function requestFullScreen(element) {\n"
				"   // Supports most browsers and their versions.\n"
				"     var requestMethod = element.requestFullScreen || element.webkitRequestFullScreen"
				"|| element.mozRequestFullScreen || element.msRequestFullScreen;\n"
				"     if (requestMethod) { // Native full screen.\n"
				"        requestMethod.call(element);\n"
				"     } else if (typeof window.ActiveXObject !== \"undefined\") { // Older IE.\n"
				"        var wscript = new ActiveXObject(\"WScript.Shell\");\n"
				"        if (wscript !== null) {\n"
				"           wscript.SendKeys(\"{F11}\");\n"
				"        }\n"
				"     }\n"
				"   }"
				"   var btnFullscreen = document.getElementById('btnFullscreen');"
				"   btnFullscreen.onclick = function () {"
				"     var viewer = document.getElementById('Viewer');"
				"     requestFullScreen(viewer);"
				"   };"
				"</script>";
	r->answer_ += "</html>";
}
