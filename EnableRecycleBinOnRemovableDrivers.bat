@echo off
echo 1. ��ȡ����ԱȨ��...
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
echo.
echo.

echo 2. �޸�ע����� HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer �� RecycleBinDrives ��ֵΪ 0xffffffff...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "RecycleBinDrives" /t REG_DWORD /d 0xffffffff /f
echo.
echo.

echo 3. �޸�ע����� HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer �� RecycleBinDrives ��ֵΪ 0xffffffff...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "RecycleBinDrives" /t REG_DWORD /d 0xffffffff /f
echo.
echo.

echo 5. ���ƶ��������Ļ���վ�ѿ���������ϵͳ����Ч����������ڡ�����վ�������в鿴�������������...
echo Please restart your system...
echo.
echo.
@pause