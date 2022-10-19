@echo off
echo 1. 获取管理员权限...
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
echo.
echo.

echo 2. 修改注册表项 HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer 下 RecycleBinDrives 项值为 0xffffffff...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "RecycleBinDrives" /t REG_DWORD /d 0xffffffff /f
echo.
echo.

echo 3. 修改注册表项 HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer 下 RecycleBinDrives 项值为 0xffffffff...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "RecycleBinDrives" /t REG_DWORD /d 0xffffffff /f
echo.
echo.

echo 5. 可移动驱动器的回收站已开启，重启系统后生效。重启后可在【回收站】属性中查看。请重启计算机...
echo Please restart your system...
echo.
echo.
@pause