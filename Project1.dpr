program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  main.View in 'main.View.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
