{

Copyright © 2001
Dark Basic Software Limited
All Rights Reserved

Written by Guy Savoie <guy@nmisoftware.com>

This Delphi DLL source code is provided as a real world example of using support
DLLs to extend the power and functionality of DarkBASIC.

It is provided as is, with no warranties, expressed or implied.

If you want to modify this DLL for your uses, you MUST rename both the project
and the DLL. Other DarkBASIC projects will rely on the filename: DB2DWipes.DLL

Defined Transition Numbers:

      1 : TransitionProc := BumpDown;
      2 : TransitionProc := BumpUp;
      3 : TransitionProc := BumpLeft;
      4 : TransitionProc := BumpRight;
      5 : TransitionProc := TransitionDown;
      6 : TransitionProc := TransitionUp;
      7 : TransitionProc := TransitionLeft;
      8 : TransitionProc := TransitionRight;
      9 : TransitionProc := SpiralClockUL;
      10 : TransitionProc := SpiralClockBR;
      11 : TransitionProc := SpiralCounterClockUL;
      12 : TransitionProc := SpiralCounterClockBR;
      13 : TransitionPRoc := RandomBlocks;
      14 : TransitionProc := HorizontalBlocksDown;
      15 : TransitionProc := HorizontalBlocksUp;
      16 : TransitionProc := VerticalBlocksLeft;
      17 : TransitionProc := VerticalBlocksRight;
      18 : Case (sd) of
              16 : TransitionProc := CrossFade16;
              24 : TransitionProc := CrossFade24;
              32 : TransitionProc := CrossFade32;
           end;
      99 : TransitionProc := CustomBlocks;
      100 : TransitionProc := CustomBlocksReverse;
}

library db2dwipes;

uses
   sysutils;

const

clockspiralul : array [0..767] of word = (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,
63,95,127,159,191,223,255,287,319,351,383,415,447,479,511,543,575,607,639,671,703,735,767,766,765,764,763,762,761,760,759,758,
757,756,755,754,753,752,751,750,749,748,747,746,745,744,743,742,741,740,739,738,737,736,704,672,640,608,576,544,512,480,448,416,
384,352,320,288,256,224,192,160,128,96,64,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,
53,54,55,56,57,58,59,60,61,62,94,126,158,190,222,254,286,318,350,382,414,446,478,510,542,574,606,638,670,702,734,733,
732,731,730,729,728,727,726,725,724,723,722,721,720,719,718,717,716,715,714,713,712,711,710,709,708,707,706,705,673,641,609,577,
545,513,481,449,417,385,353,321,289,257,225,193,161,129,97,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,
82,83,84,85,86,87,88,89,90,91,92,93,125,157,189,221,253,285,317,349,381,413,445,477,509,541,573,605,637,669,701,700,
699,698,697,696,695,694,693,692,691,690,689,688,687,686,685,684,683,682,681,680,679,678,677,676,675,674,642,610,578,546,514,482,
450,418,386,354,322,290,258,226,194,162,130,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,
119,120,121,122,123,124,156,188,220,252,284,316,348,380,412,444,476,508,540,572,604,636,668,667,666,665,664,663,662,661,660,659,
658,657,656,655,654,653,652,651,650,649,648,647,646,645,644,643,611,579,547,515,483,451,419,387,355,323,291,259,227,195,163,131,
132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,187,219,251,283,315,347,379,411,
443,475,507,539,571,603,635,634,633,632,631,630,629,628,627,626,625,624,623,622,621,620,619,618,617,616,615,614,613,612,580,548,
516,484,452,420,388,356,324,292,260,228,196,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,
185,186,218,250,282,314,346,378,410,442,474,506,538,570,602,601,600,599,598,597,596,595,594,593,592,591,590,589,588,587,586,585,
584,583,582,581,549,517,485,453,421,389,357,325,293,261,229,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,
214,215,216,217,249,281,313,345,377,409,441,473,505,537,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555,554,553,552,
551,550,518,486,454,422,390,358,326,294,262,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,280,312,
344,376,408,440,472,504,536,535,534,533,532,531,530,529,528,527,526,525,524,523,522,521,520,519,487,455,423,391,359,327,295,263,
264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,311,343,375,407,439,471,503,502,501,500,499,498,497,496,495,494,
493,492,491,490,489,488,456,424,392,360,328,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,342,374,406,438,470,469,
468,467,466,465,464,463,462,461,460,459,458,457,425,393,361,329,330,331,332,333,334,335,336,337,338,339,340,341,373,405,437,436,
435,434,433,432,431,430,429,428,427,426,394,362,363,364,365,366,367,368,369,370,371,372,404,403,402,401,400,399,398,397,396,395
);

clockspiralbr : array [0..767] of word = (767,766,765,764,763,762,761,760,759,758,757,756,755,754,753,752,751,750,749,748,747,746,745,744,743,742,741,740,739,738,737,736,
704,672,640,608,576,544,512,480,448,416,384,352,320,288,256,224,192,160,128,96,64,32,0,1,2,3,4,5,6,7,8,9,
10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,63,95,127,159,191,223,255,287,319,351,
383,415,447,479,511,543,575,607,639,671,703,735,734,733,732,731,730,729,728,727,726,725,724,723,722,721,720,719,718,717,716,715,
714,713,712,711,710,709,708,707,706,705,673,641,609,577,545,513,481,449,417,385,353,321,289,257,225,193,161,129,97,65,33,34,
35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,94,126,158,190,
222,254,286,318,350,382,414,446,478,510,542,574,606,638,670,702,701,700,699,698,697,696,695,694,693,692,691,690,689,688,687,686,
685,684,683,682,681,680,679,678,677,676,675,674,642,610,578,546,514,482,450,418,386,354,322,290,258,226,194,162,130,98,66,67,
68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,125,157,189,221,253,285,
317,349,381,413,445,477,509,541,573,605,637,669,668,667,666,665,664,663,662,661,660,659,658,657,656,655,654,653,652,651,650,649,
648,647,646,645,644,643,611,579,547,515,483,451,419,387,355,323,291,259,227,195,163,131,99,100,101,102,103,104,105,106,107,108,
109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,156,188,220,252,284,316,348,380,412,444,476,508,540,572,604,636,
635,634,633,632,631,630,629,628,627,626,625,624,623,622,621,620,619,618,617,616,615,614,613,612,580,548,516,484,452,420,388,356,
324,292,260,228,196,164,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,187,219,
251,283,315,347,379,411,443,475,507,539,571,603,602,601,600,599,598,597,596,595,594,593,592,591,590,589,588,587,586,585,584,583,
582,581,549,517,485,453,421,389,357,325,293,261,229,197,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,
183,184,185,186,218,250,282,314,346,378,410,442,474,506,538,570,569,568,567,566,565,564,563,562,561,560,559,558,557,556,555,554,
553,552,551,550,518,486,454,422,390,358,326,294,262,230,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,
216,217,249,281,313,345,377,409,441,473,505,537,536,535,534,533,532,531,530,529,528,527,526,525,524,523,522,521,520,519,487,455,
423,391,359,327,295,263,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,280,312,344,376,408,440,472,504,
503,502,501,500,499,498,497,496,495,494,493,492,491,490,489,488,456,424,392,360,328,296,264,265,266,267,268,269,270,271,272,273,
274,275,276,277,278,279,311,343,375,407,439,471,470,469,468,467,466,465,464,463,462,461,460,459,458,457,425,393,361,329,297,298,
299,300,301,302,303,304,305,306,307,308,309,310,342,374,406,438,437,436,435,434,433,432,431,430,429,428,427,426,394,362,330,331,
332,333,334,335,336,337,338,339,340,341,373,405,404,403,402,401,400,399,398,397,396,395,363,364,365,366,367,368,369,370,371,372
);

var
   Custom_Blocks:Array [0..767] of Word;
   TransitionProc:procedure(Image:PByteArray);
   screen1, screen2,destbuffer: pbyteArray;
   sh,sw,sd, Steps : Integer;
   Transition : Integer;
   StepNumber : Integer;
   ByteSize,BufferSize,HorizontalSize : Integer;
   SpiralArray : PWordArray;
   I : Integer;


Procedure Free_Screens;
Begin
// Free the memory previously allocated for 2D screens
   If Screen1 <> nil then FreeMem(Screen1);
   If Screen2 <> nil then FreeMem(Screen2);
   Screen1 := nil;
   Screen2 := nil;
End;

Procedure Allocate_Screens;
Begin
// Allocate memory to store internal copies of the 2D screens
   GetMem(Screen1,BufferSize);
   GetMem(Screen2,BufferSize);
End;

// This is a general purpose function, which supports all of the
// grid based transition effects.

Procedure BlockFill(Image:PByteArray;Which:Integer;NegativeFlow:Boolean);
Var
   I,N : Integer;
   StartBlock,EndBlock,BCount : Integer;
   BlockWidth : Integer;
   Position : Integer;
Begin
   Case (WHich) of
      1 : SpiralArray := @ClockSpiralUL;
      2 : SpiralArray := @ClockSpiralBR;
      3 : SpiralArray := @Custom_Blocks;
   End;;

   StartBlock := ((StepNumber-2)*768) div Steps;
   EndBlock := ((StepNumber-1)*768) div Steps;

   BCount := sw div 32;
   BlockWidth := BCount*sd div 8;

   For i := StartBlock to EndBlock do
      Begin
         if negativeFlow then
            Position := ((SpiralArray[767-i] Mod 32)*BlockWidth)+(SpiralArray[767-i] div 32)*BCount*HorizontalSize
         Else
            Position := ((SpiralArray[i] Mod 32)*BlockWidth)+(SpiralArray[i] div 32)*BCount*HorizontalSize;
         For n := 1 to BCount Do
            Begin
               Move(Screen2[position],Image[position],BlockWidth);
               Position := POsition + HorizontalSize;
            End;
      End;
End;


Procedure SpiralClockUL(Image:PByteArray);
begin
   BlockFill(Image,1,False);
End;

Procedure SpiralClockBR(Image:PByteArray);
begin
   BlockFill(Image,2,False);
End;

Procedure SpiralCounterClockUL(Image:PByteArray);
begin
   BlockFill(Image,1,True);
End;

Procedure SpiralCounterClockBR(Image:PByteArray);
begin
   BlockFill(Image,2,True);
End;

Procedure SwapWord(Var x,y:word);
Var
   tmp : Word;
Begin
   tmp := x;
   x := y;
   y := tmp;
End;

Procedure RandomBlocks(Image:PByteArray);
var
   I : Integer;
Begin
   If StepNumber = 2 then
      Begin
         Randomize;
         For I := 0 to 767 do
            Begin
               SwapWord(Custom_Blocks[i],Custom_Blocks[Random(768)]);
            End;
      End;
   BlockFill(Image,3,False);
End;

Procedure HorizontalBlocksDown(Image:PByteArray);
var
   I : Integer;
Begin
   If StepNumber = 2 then
      Begin
         Randomize;
         For I := 0 to 767 do
            Begin
               Custom_Blocks[i] := I;
            End;
      End;
   BlockFill(Image,3,False);
End;

Procedure HorizontalBlocksUp(Image:PByteArray);
var
   I : Integer;
Begin
   If StepNumber = 2 then
      Begin
         Randomize;
         For I := 0 to 767 do
            Begin
               Custom_Blocks[i] := 767-I;
            End;
      End;
   BlockFill(Image,3,False);
End;

Procedure VerticalBlocksRight(Image:PByteArray);
var
   X,Y : Integer;
   I : Integer;
Begin
   If StepNumber = 2 then
      Begin
         Randomize;
         I := 0;
         For X := 0 to 31 do
            For Y := 0 to 23 do
               Begin
                  Custom_Blocks[I] := X+Y*32;
                  Inc(I);
               End;
      End;
   BlockFill(Image,3,False);
End;

Procedure VerticalBlocksLeft(Image:PByteArray);
var
   X,Y : Integer;
   I : Integer;
Begin
   If StepNumber = 2 then
      Begin
         Randomize;
         I := 0;
         For X := 31 downto 0 do
            For Y := 23 downto 0 do
               Begin
                  Custom_Blocks[I] := X+Y*32;
                  Inc(I);
               End;
      End;
   BlockFill(Image,3,False);
End;

Procedure CustomBlocks(Image:PByteArray);
Begin
   BlockFill(Image,3,False);
End;

Procedure CustomBlocksReverse(Image:PByteArray);
Begin
   BlockFill(Image,3,True);
End;


Procedure CrossFade16(Image:PByteArray);
Var
   I : Integer;
Begin
   For I := 0 to (BufferSize div 2)-1 do
      PWordArray(Image)[I] := ((((PWordArray(Screen2)[I] and 31)*stepNumber)+((PWordArray(Screen1)[I] and 31)*(Steps-StepNumber))) Div Steps) +
                               ((((((PWordArray(Screen2)[I] shr 5) and 63)*stepNumber)+(((PWordArray(Screen1)[I] shr 5) and 63)*(Steps-StepNumber))) Div Steps) shl 5) +
                               ((((((PWordArray(Screen2)[I] shr 11) and 31)*stepNumber)+(((PWordArray(Screen1)[I] shr 11) and 31)*(Steps-StepNumber))) Div Steps) shl 11);
End;

Procedure CrossFade24(Image:PByteArray);
Var
   I : Integer;
Begin
   For I := 0 to BufferSize-1 do
      Image[I] := (Screen2[I]*StepNumber + Screen1[I]*(Steps-StepNumber)) Div Steps;
End;

Procedure CrossFade32(Image:PByteArray);
Var
   I,Position : Integer;
Begin
   For I := 0 to (BufferSize div 4)-1 do
      Begin
         Position := I * 4;
         Image[Position] := (Screen2[Position]*StepNumber + Screen1[Position]*(Steps-StepNumber)) Div Steps;
         Inc(Position);
         Image[Position] := (Screen2[Position]*StepNumber + Screen1[Position]*(Steps-StepNumber)) Div Steps;
         Inc(Position);
         Image[Position] := (Screen2[Position]*StepNumber + Screen1[Position]*(Steps-StepNumber)) Div Steps;
      End;
End;

Procedure BumpDown(Image:PByteArray);
var
   Offset : Integer;
Begin
   Offset := (((StepNumber-1)*sh) div steps)*HorizontalSize;
   Move(Screen2[buffersize-offset],Image[0],offset);
   Move(Screen1[0],Image[Offset],buffersize-Offset);
End;

Procedure BumpUp(Image:PByteArray);
var
   Offset : Integer;
Begin
   Offset := (((StepNumber-1)*sh) div steps)*HorizontalSize;
   Move(Screen2[0],Image[buffersize-offset],offset);
   Move(Screen1[offset],Image[0],buffersize-Offset);
End;

Procedure BumpRight(Image:PByteArray);
Var
   Offset : Integer;
   i : Integer;
Begin
   Offset := ((StepNumber-1)*(sw) Div (Steps))* ByteSize;
   for i := 0 to sh-1 do
      Begin
         Move(Screen2[(i+1)*Horizontalsize-Offset],Image[i*HorizontalSize],Offset);
         Move(Screen1[i*HorizontalSize],Image[I*Horizontalsize+Offset],HorizontalSize-Offset);
      End;
End;

Procedure BumpLeft(Image:PByteArray);
Var
   Offset : Integer;
   i : Integer;
Begin
   Offset := ((StepNumber-1)*(sw) Div (Steps))* ByteSize;
   for i := 0 to sh-1 do
      Begin
         Move(Screen1[i*HorizontalSize+Offset],Image[I*Horizontalsize],HorizontalSize-Offset);
         Move(Screen2[i*Horizontalsize],Image[(i+1)*HorizontalSize-Offset],Offset);
      End;
End;

Procedure TransitionDown(Image:PByteArray);
var
   Offset : Integer;
   OffsetPrevious : Integer;
Begin
   Offset := ((StepNumber-1)*sh) div steps*HorizontalSize;
   OffsetPrevious := (StepNumber-2)*(sh div steps)*HorizontalSize;
   Move(Screen2[OffsetPrevious],Image[OffsetPrevious],Offset-OffsetPrevious);
End;

Procedure TransitionUp(Image:PByteArray);
var
   Offset : Integer;
   OffsetPrevious : Integer;
Begin
   Offset := ((StepNumber-1)*sh) div steps*HorizontalSize;
   OffsetPrevious := (StepNumber-2)*(sh div steps)*HorizontalSize;
   Move(Screen2[BufferSize-Offset],Image[BufferSize-Offset],Offset-OffsetPrevious-1);
End;

Procedure TransitionRight(Image:PByteArray);
Var
   Offset : Integer;
   OffsetPRevious : Integer;
   i : Integer;
Begin
   Offset := ((StepNumber-1)*(sw) Div (Steps))* ByteSize;
   OffsetPrevious := ((StepNumber-2)*(sw) Div (Steps))* ByteSize;
   for i := 0 to sh-1 do
      Begin
         Move(Screen2[i*HorizontalSize+OffsetPrevious],Image[i*HorizontalSize+OffsetPrevious],Offset-OffsetPrevious);
      End;
End;

Procedure TransitionLeft(Image:PByteArray);
Var
   Offset : Integer;
   OffsetPRevious : Integer;
   i : Integer;
Begin
   Offset := ((StepNumber-1)*(sw) Div (Steps))* ByteSize;
   OffsetPrevious := ((StepNumber-2)*(sw) Div (Steps))* ByteSize;
   for i := 0 to sh-1 do
      Begin
         Move(Screen2[(i+1)*HorizontalSize-Offset],Image[(i+1)*HorizontalSize-Offset],Offset-OffsetPrevious);
      End;
End;

Procedure Init_Transition(TNum,w,h,d,Frames:Integer;Source,Final:PByteArray);stdcall;
Begin
   sw := w;
   sh := h;
   sd := d;
   Bytesize := sd div 8;
   HorizontalSize := SW*bytesize;
   BufferSize := HorizontalSize*sh;
   Free_Screens;
   Allocate_Screens;
   Move(Source[0],Screen1[0],BufferSize);
   Move(Final[0],Screen2[0],BufferSize);

   Transition := TNum;
   steps := Frames;
   StepNumber := 0;

   { This is where we set the transition procedure -- keep the conditionals out
     of the inner loop for maximum speed }
   Case (TNum) of
      1 : TransitionProc := BumpDown;
      2 : TransitionProc := BumpUp;
      3 : TransitionProc := BumpLeft;
      4 : TransitionProc := BumpRight;
      5 : TransitionProc := TransitionDown;
      6 : TransitionProc := TransitionUp;
      7 : TransitionProc := TransitionLeft;
      8 : TransitionProc := TransitionRight;
      9 : TransitionProc := SpiralClockUL;
      10 : TransitionProc := SpiralClockBR;
      11 : TransitionProc := SpiralCounterClockUL;
      12 : TransitionProc := SpiralCounterClockBR;
      13 : TransitionPRoc := RandomBlocks;
      14 : TransitionProc := HorizontalBlocksDown;
      15 : TransitionProc := HorizontalBlocksUp;
      16 : TransitionProc := VerticalBlocksLeft;
      17 : TransitionProc := VerticalBlocksRight;
      18 : Case (sd) of
              16 : TransitionProc := CrossFade16;
              24 : TransitionProc := CrossFade24;
              32 : TransitionProc := CrossFade32;
           end;
      99 : TransitionProc := CustomBlocks;
      100 : TransitionProc := CustomBlocksReverse;
   End;
End;

Procedure Next_Transition_Frame(Image:PByteArray);stdcall;
Begin
   If Not(Assigned(TransitionProc)) Then
      Exit;
   Inc(StepNumber);
   if stepnumber = 1 then
      move(Screen1[0],Image[0],buffersize)
   else if (stepnumber >= steps) then
      Begin
         TransitionProc := Nil;
         Move(Screen2[0],Image[0],buffersize);
      End
   else
      TransitionProc(Image);
End;

Procedure Set_Custom_Blocks(Blockset:PWordArray);stdcall;
Var
   I : Integer;
Begin
   For I := 0 to 767 do
      Custom_Blocks[i] := Blockset[i];
End;

exports
   Free_Screens index 1,
   Init_Transition index 2,
   Next_Transition_Frame index 3,
   Set_Custom_Blocks Index 4;

begin
   screen1 := nil;
   screen2 := nil;
   For I := 0 to 767 do
      Custom_Blocks[i] := I;
end.
