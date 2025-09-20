{$CODEPAGE utf-8} 
program Laba3;

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
  arr_len, i, zero_count: Integer;
  arr_x, arr_y: array of Integer;
  inputStr: string;
begin
  WriteLn('введите кол-во элементов массива:');
  ReadLn(inputStr);
  arr_len := StrToInt(inputStr);

  SetLength(arr_x, arr_len);
  SetLength(arr_y, arr_len);

  zero_count := 0;

  for i := 0 to arr_len - 1 do
  begin
    Write('Введите ', i + 1, ' число: ');
    ReadLn(inputStr);
    arr_x[i] := StrToInt(inputStr);
    arr_y[i] := Raschet(arr_x[i]);
    if arr_x[i] = 0 then
      Inc(zero_count);
  end;

  WriteLn('содержание масива y');
  for i := 0 to arr_len - 1 do
    Write(arr_y[i], ' ');
  WriteLn;

  WriteLn('Было введино вот столько нулей: ', zero_count);
end.