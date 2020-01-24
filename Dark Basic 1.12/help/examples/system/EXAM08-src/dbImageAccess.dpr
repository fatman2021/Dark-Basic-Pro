library dbImageAccess;
uses
  SysUtils;

type
{  In this DLL, we are going to use a 640x480x16 bit screen, but we will leave
   the other type definitions in place - Delphi will ignore them.
}

   RGB = packed record
      b,g,r : Byte;
   End;

   RGBA = packed record
      b,g,r,a : Byte;
   End;

   ScreenPtr16 = ^Screen640x480x16;
   Screen640x480x16 = Packed Array [0..479,0..639] of Word; { A Word is a 2 byte word
                                                       PERFECT for 16 bit screens }
   ScreenPtr24 = ^Screen640x480x24;
   Screen640x480x24 = Packed Array [0..479,0..639] of RGB;

   ScreenPtr32 = ^Screen640x480x32;
   Screen640x480x32 = Packed Array [0..479,0..639] of RGBA;
   
{$R *.res}

// UTILITY FUNCTIONS

function rgbTo16bit(r,g,b:word):Word;
{ We supply this function with regular RGB values, and it converts to 16 bit }
begin
   rgbTo16bit := ((b shr 3) shl 11) + ((g shr 2) shl 5) + (r shr 3);
{   This is because 16 bit colors are encoded in 565 format, where the bits are:
    BBBBBGGGGGGRRRRR --- conversion is easy, because we drop the least significant
    bits to get to the proper amount of bits --- the SHR operands do that for us
}
end;

procedure rgbFROM16bit(value:word;var r,g,b:word);
{ We supply this procedure with a 16 bit value, and it decodes the RGB components }
{ NOTE: you will never get a 255 out of this, since 16 bit values don't have those
        last few bits. The max values are 252 for green, and 248 for Red and Blue. }
Begin
   b := ((value shr 11) and 31) shl 3; { The AND 31 limits to 5 bits }
   g := ((value shr 5) and 63) shl 2;  { The AND 63 limits to 6 bits }
   r := (value and 31) shl 3;          { The AND 31 limits to 5 bits }
End;

procedure alter_bitmap(ImagePointer:ScreenPtr16);stdcall;
var
   x, y, i : integer;
   Color16bit : Word;
Begin
   { Just to do something, we'll color 500 random pixels }
   For I := 1 to 500 do
      Begin
         { calculate a random position }
         x := Random(640);
         Y := Random(480);
         { and a random color }
         Color16bit := rgbTo16Bit(random(256),random(256),random(256));

         { To change a pixel, just write to the array pointer (dereferenced, of course) }
         ImagePointer^[y,x] := Color16bit;
      End;
End;

exports
{ CASE MATTERS FOR EXPORTING! }
   alter_bitmap Index 1;

begin
   Randomize;
end.
