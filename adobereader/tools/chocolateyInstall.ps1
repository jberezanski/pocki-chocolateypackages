﻿$packageName = 'adobereader'
$installerType = 'EXE'
#Command Line Switches for the Bootstrap Web Installer: https://forums.adobe.com/message/3291894#3291894
$silentArgs = '/sAll /msi /norestart /quiet ALLUSERS=1 EULA_ACCEPT=YES SUPPRESS_APP_LAUNCH=YES'
$url = 'http://ardownload.adobe.com/pub/adobe/reader/win/AcrobatDC/1501720050/AcroRdrDC1501720050_MUI.exe'
$validExitCodes = @(0, 3010)

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
