library delphitemplate;

{$R *.res}

uses
   sysutils,Dialogs;

var
   p : PChar;
   s1 : String;

function SendIntReturnInt(I:Integer):Integer;StdCall;
Begin
   ShowMessage('The Integer sent was: '+IntToStr(I)+' and '+IntToStr(-I)+' will be returned.');
   SendIntReturnInt := -I;
End;

function SendFloatReturnFloat(I:single):Integer;StdCall;
var
   F : Single;
Begin
   ShowMessage('The float sent was: '+FloatToStrF(I,ffFixed,12,4)+' and '+FloatToStrF(-I,ffFixed,12,4)+' will be returned.');
   F := -I;
   SendFloatReturnFloat := Integer(addr(F)^);
End;

function SendStringReturnString(s:pchar):Integer;StdCall;

Begin
   ShowMessage('The string sent was: '+s+' and NOT '+s+' will be returned.');
   s1 := 'NOT '+s;
   SendStringReturnString := Integer(PChar(S1));
End;

exports
   SendIntReturnInt index 1,
   SendFloatReturnFloat index 2,
   SendStringReturnString index 3;

begin
   P := Nil;
end.
