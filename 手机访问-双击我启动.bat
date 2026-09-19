@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo  概率/高数/线代笔记 - 手机访问服务器
echo  ------------------------------------
powershell -NoProfile -Command "$ip=(Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias WLAN -ErrorAction SilentlyContinue | Select-Object -First 1 -ExpandProperty IPAddress); if(-not $ip){$ip='本机IP'}; Write-Host ''; Write-Host ('  手机浏览器打开:  http://' + $ip + ':8000') -ForegroundColor Green; Write-Host ''; Write-Host '  (手机需与本电脑连同一个 Wi-Fi / 热点)'; Write-Host ''
echo  ------------------------------------
echo  保持本窗口开着; 按 Ctrl+C 停止服务器
echo.
python -m http.server 8000
pause
