@echo off
pushd "%~dp0"
dir /b %systemroot%\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >gp.txt
dir /b  %systemroot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>gp.txt
for /f %%i in ('findstr /i . gp.txt 2^>nul') do dism /online /norestart /add-package:"%systemroot%\servicing\Packages\%%i"
pause

goto

[解决windows系统运行输入gpedit.msc打开组策略失败的问题_ZMS_JAMES的博客-CSDN博客](https://blog.csdn.net/ZMS_JAMES/article/details/80939856)

:start