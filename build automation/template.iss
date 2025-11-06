; Inno Setup Script Template
[Setup]
AppName=SimpleChess
AppPublisher=Laurent Bernabe
AppCopyright=© 2025 Laurent Bernabe
AppVersion={{APP_VERSION}}
DefaultDirName={commonpf}\SimpleChess
DefaultGroupName=SimpleChess
OutputBaseFilename=SimpleChess-Windows64_Installer
OutputDir=../Output
Compression=lzma
SolidCompression=yes
DisableDirPage=no
SetupIconFile=..\resources\icons\favicon.ico

[Files]
Source: "..\dist\SimpleChess\SimpleChess-win_x64.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\dist\SimpleChess\resources.neu"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\resources\icons\favicon.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\SimpleChess"; Filename: "{app}\SimpleChess-win_x64.exe"; IconFilename: "{app}\favicon.ico"
Name: "{commondesktop}\SimpleChess"; Filename: "{app}\SimpleChess-win_x64.exe"; IconFilename: "{app}\favicon.ico"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional icons:" 
