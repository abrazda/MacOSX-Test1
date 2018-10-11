unit Unit1;

interface

function ReverseString(const AText:String):String;
function ShowMessage2(const AText:String):String;

implementation

uses
  System.SysUtils,
  FMX.Dialogs;

function ReverseString(const AText:String):String;
var
  I: Integer;
begin
  SetLength(Result,AText.Length);
  for I:=Low(AText) to High(AText) do
    Result[High(AText) - (I-Low(AText))]:= AText[I];
end;

function ShowMessage2(const AText:String):String;
begin
  FMX.Dialogs.ShowMessage(AText);
end;

end.
