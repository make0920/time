@echo off
start "" "cmd" /c "http-server -p 9988 -a 127.0.0.1"
timeout /t 1 >nul
start "" "http://localhost:9988/index.html"
echo 按任意键关闭服务器...
pause >nul
taskkill /f /im node.exe >nul 2>nul
exit