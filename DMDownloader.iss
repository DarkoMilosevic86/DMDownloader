; DMDownloader installation program
; (C) 2025-2026  Darko MILOŠEVIĆ <daremc86@gmail.com>
; GPL v3 License

[Setup]
AppName=DM Downloader
AppVersion=2.0
AppCopyright=Copyright (C) 2025-2026 Darko Milošević <daremc86@gmail.com>
AppPublisher=Darko Milošević
AppPublisherURL=https://github.com/daremc86/DMDownloader
OutputBaseFilename=DM Downloader 2.0
DefaultDirName={autopf}\DM Downloader
DefaultGroupName=DM Downloader
UninstallDisplayIcon={app}\DMDownloader.exe
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
OutputDir=Dist
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
LicenseFile=LICENSE
VersionInfoVersion=2.0.0.0
; multilang installer
ShowLanguageDialog=yes

[Languages]
Name: "de"; MessagesFile: "compiler:Languages\German.isl"
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "es"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "fr"; MessagesFile: "compiler:Languages\French.isl"
Name: "hr"; MessagesFile: "compiler:Languages\Croatian.isl"
Name: "it"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "ja"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "sr"; MessagesFile: "compiler:Languages\SerbianLatin.isl"

[Files]
; Main EXE
Source: "dist\DMDownloader\DMDownloader.exe"; DestDir: "{app}"; DestName: "DMDownloader.exe"; Flags: ignoreversion
; License file
Source: "LICENSE"; DestDir: "{app}"; DestName: "LICENSE.txt"
; Readme
Source: "README.md"; DestDir: "{app}"; Flags: isreadme

; Configuration file for the specific language
Source: "conf\de.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: de
Source: "conf\en.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: en
Source: "conf\es.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: es
Source: "conf\fr.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: fr
Source: "conf\hr.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: hr
Source: "conf\it.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: it
Source: "conf\ja.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: ja
Source: "conf\sr.json"; DestDir: "{userappdata}\DMDownloader"; DestName: "config.json"; Flags: onlyifdoesntexist; languages: sr

; Internal folder and all subfolders
Source: "dist\DMDownloader\_internal\*"; DestDir: "{app}\_internal"; Flags: recursesubdirs createallsubdirs

; Languages folder (for JSON localizations)
Source: "languages\*"; DestDir: "{app}\_internal\languages"; Flags: recursesubdirs createallsubdirs
; Default configuration file
Source: "config.json"; DestDir: "{app}"; Flags: onlyifdoesntexist
[Icons]
Name: "{group}\DM Downloader"; Filename: "{app}\DMDownloader.exe"
Name: "{group}\DM Downloader License"; Filename: "{app}\LICENSE.txt"
Name: "{commondesktop}\DM Downloader"; Filename: "{app}\DMDownloader.exe"; Tasks: desktopicon

[Dirs]
; Ensure appdata folder exists
Name: "{userappdata}\DMDownloader"

[UninstallDelete]
; Delete installed program files
Type: filesandordirs; Name: "{app}"
; Delete AppData folder (whole, including config)
Type: filesandordirs; Name: "{userappdata}\DMDownloader"
[Tasks]
Name: desktopicon; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"
[Run]
Filename: "{app}\DMDownloader.exe"; Description: "{cm:LaunchProgram,DM Downloader}"; Flags: postinstall nowait skipifsilent unchecked