{$CODEPAGE utf-8} 
program Laba2;

uses
  SysUtils;

function Raschet(x: Integer): Integer;
begin
  if x < 0 then
    Raschet := -2 * x
  else
    Raschet := x * x;
end;

var
  arr_len, i: Integer;
  arr_x, arr_y: array of Integer;
  inputStr: string;
begin
  Write('введите кол-во элементов массива: ');
  ReadLn(inputStr);
  arr_len := StrToInt(inputStr);

  SetLength(arr_x, arr_len);
  SetLength(arr_y, arr_len);

  for i := 0 to arr_len - 1 do
  begin
    Write('Введите ', i + 1, ' число: ');
    ReadLn(inputStr);
    arr_x[i] := StrToInt(inputStr);
    arr_y[i] := Raschet(arr_x[i]);
  end;

  WriteLn('содержание масива y');
  for i := 0 to arr_len - 1 do
    Write(arr_y[i], ' ');
  WriteLn;
end.