unit main.View;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

const
  {$ifdef MSWINDOWS}
  Test1Lib='Test1Lib.dll';
  {$else if defined MACOS}
  Test1Lib='libTest1Lib.dylib';
  {$endif}

function ReverseString(const AText:String):String;external Test1Lib;
function ShowMessage2(const AText:String):String;external Test1Lib;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Text:=ReverseString(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage2(Edit1.Text);
end;

end.
