; Inno Setup Script Template
[Setup]
AppName=SampleApp
AppPublisher=Laurent Bernabe
AppCopyright=© 2025 Laurent Bernabe
AppVersion=0.0.8
DefaultDirName={commonpf}\SampleApp
DefaultGroupName=SampleApp
OutputBaseFilename=SampleApp-{#SetupSetting("AppVersion")}-Windows64_Installer
OutputDir=../Output
Compression=lzma
SolidCompression=yes
DisableDirPage=no
SetupIconFile=..\resources\icons\favicon.ico

[Files]
Source: "..\dist\SampleApp\SampleApp-win_x64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\SampleApp\resources.neu"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\resources\icons\favicon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\SampleApp"; Filename: "{app}\SampleApp-win_x64.exe"; IconFilename: "{app}\favicon.ico"
Name: "{commondesktop}\SampleApp"; Filename: "{app}\SampleApp-win_x64.exe"; IconFilename: "{app}\favicon.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional icons:" 
