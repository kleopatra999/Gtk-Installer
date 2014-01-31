[Setup]
ShowLanguageDialog=no
AppName=Gtk+ Runtime (64-bits)
AppVersion=3.10.0
AppPublisher=GtkD Developers
DefaultDirName={pf}\Gtk-Runtime
SourceDir=../../pkg/
ChangesEnvironment=true
WizardImageFile=compiler:WizModernImage-IS.bmp
WizardSmallImageFile=../libs/99-installer/logo.gtk.bmp
WizardImageBackColor=clWhite
OutputDir=../
OutputBaseFilename=Gtk-Runtime-3.10-Setup(64-bits)
ArchitecturesInstallIn64BitMode=x64
ArchitecturesAllowed=x64

[Files]
Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Tasks]
Name: modifypath; Description: &Add application directory to your system path

[Code]
const
	ModPathName = 'modifypath';
	ModPathType = 'system';

function ModPathDir(): TArrayOfString;
begin
	setArrayLength(Result, 1)
	Result[0] := ExpandConstant('{app}\bin');
end;
#include "modpath.iss"