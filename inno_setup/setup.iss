; Script Inno Setup pour RSA Secure Messenger

[Setup]
AppName=RSA Secure Messenger
AppVersion=1.0
DefaultDirName={pf}\RSA Secure Messenger
DefaultGroupName=RSA Secure Messenger
OutputBaseFilename=RSA_Secure_Messenger_Installer
Compression=lzma
SolidCompression=yes
SetupIconFile=icon.ico
ArchitecturesInstallIn64BitMode=x64
DisableProgramGroupPage=yes

[Files]
Source: "dist\SecureMessenger\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\RSA Secure Messenger"; Filename: "{app}\SecureMessenger.exe"; WorkingDir: "{app}"
Name: "{commondesktop}\RSA Secure Messenger"; Filename: "{app}\SecureMessenger.exe"; WorkingDir: "{app}"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Créer un raccourci sur le bureau"; GroupDescription: "Icônes supplémentaires :"

[Run]
Filename: "{app}\SecureMessenger.exe"; Description: "Lancer RSA Secure Messenger"; Flags: nowait postinstall skipifsilent
