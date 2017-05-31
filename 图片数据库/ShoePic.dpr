program ShoePic;

uses
  Forms,
  mainUnit in 'mainUnit.pas' {Form1},
  About in 'About.pas' {AboutBox},
  NoteUnit in 'NoteUnit.pas' {Form2},
  SetupPassUnit in 'SetupPassUnit.pas' {PassForm},
  LogonUnit in 'LogonUnit.pas' {LogonForm},
  AviUnit in 'AviUnit.pas' {AviForm},
  SplashUnit in 'SplashUnit.pas' {splashForm};

{$R *.res}

begin
  Application.Initialize;
  splashForm:=TsplashForm.Create(Application);
  splashForm.Show;
  SplashForm.Update;
  Application.Title := '图片管理系统';
  Application.CreateForm(TForm1, Form1);
  splashform.Hide;
  splashform.Free;
  Application.Run;
end.
