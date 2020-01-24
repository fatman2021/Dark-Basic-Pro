library wavebackb;

uses
   sysutils;
var
   wave_array : array [0..99] of integer;
   wave_counter : integer;
   i : Integer;

type
   pscreenArray = ^ScreenArray;
   ScreenArray = Array [0..479,0..639] of word;

procedure wave(Screen:PScreenArray);stdcall;
var
   tx,TY : integer;
   posW : Integer;
   position, posOffset : Integer;
   i : Integer;
   MemBlock : PByteArray;
   MemBlockWord : PWordArray;
   StorageBufferWord : PWordArray;
begin
  inc(wave_counter);
  if wave_Counter > 99 then
     wave_counter := 0;
  posW := Wave_Counter;

  For ty := 0 to 479 do
     Begin
        if Wave_Array[PosW] >= 0 then
           Move(Screen^[ty,0],Screen^[ty,Wave_Array[PosW]],1240)
        else
           Move(Screen^[ty,-Wave_Array[PosW]],Screen^[ty,0],1240);
        inc(PosW);
        if PosW > 99 then
           posW := 0;
     end;
end;

exports
   wave index 1;

begin
  for i := 0 to 99 do
     wave_array[i] := trunc((sin((4.0*pi*i) / 100.0))*20);
  wave_Counter := 0;
end.
