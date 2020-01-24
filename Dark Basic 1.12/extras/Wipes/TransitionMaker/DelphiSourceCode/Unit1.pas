unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Buttons, Clipbrd, ExtCtrls;

type
  modes = (Add,Skip,Remove);
  TTransitionMaker = class(TForm)
    sg: TStringGrid;
    CommandsPanel: TPanel;
    Panel2: TPanel;
    sbRemove: TSpeedButton;
    sbAdd: TSpeedButton;
    sbSkip: TSpeedButton;
    ExportPanel: TPanel;
    cmdataclipboard: TButton;
    cmlistclipboard: TButton;
    cmDataFile: TButton;
    cmListFile: TButton;
    sd: TSaveDialog;
    FilePanel: TPanel;
    FileLoad: TOpenDialog;
    FileSave: TSaveDialog;
    Panel3: TPanel;
    cmToL: TButton;
    cmToR: TButton;
    cmToT: TButton;
    TmToB: TButton;
    cmToBR: TButton;
    cmToBL: TButton;
    cmToUL: TButton;
    cmToUR: TButton;
    cmFillV: TButton;
    cmFillH: TButton;
    cmClear: TButton;
    Panel4: TPanel;
    cmPlay: TButton;
    cmLoad: TButton;
    cmSave: TButton;
    Timer1: TTimer;
    procedure cmClearClick(Sender: TObject);
    procedure sgSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure sgDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sbRemoveClick(Sender: TObject);
    procedure sbSkipClick(Sender: TObject);
    procedure sgKeyPress(Sender: TObject; var Key: Char);
    procedure cmdataclipboardClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmlistclipboardClick(Sender: TObject);
    procedure cmListFileClick(Sender: TObject);
    procedure cmDataFileClick(Sender: TObject);
    procedure cmLoadClick(Sender: TObject);
    procedure cmSaveClick(Sender: TObject);
    procedure cmToLClick(Sender: TObject);
    procedure cmToRClick(Sender: TObject);
    procedure TmToBClick(Sender: TObject);
    procedure cmToTClick(Sender: TObject);
    procedure cmToULClick(Sender: TObject);
    procedure cmToURClick(Sender: TObject);
    procedure cmToBLClick(Sender: TObject);
    procedure cmToBRClick(Sender: TObject);
    procedure cmFillHClick(Sender: TObject);
    procedure cmFillVClick(Sender: TObject);
    procedure cmPlayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure grab_numlist;
    procedure enable_export;
    procedure disable_export;
  end;

var
  mode : modes;
  TransitionMaker: TTransitionMaker;
  counter : Integer;
  NumList : Array [0..767] of word;
  playing : Boolean;
  playnum : Integer;

implementation

{$R *.DFM}

procedure TTransitionMaker.cmClearClick(Sender: TObject);
var
   x,y : Integer;
begin
   Counter := 0;
   for y := 0 to 23 do
      for x := 0 to 31 do
         sg.cells[x,y] := '';
end;

procedure TTransitionMaker.sgSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
Var
   X,Y,N,I : Integer;
begin
   case (mode) of
      Add :
         Begin
            if sg.cells[Acol,Arow] = '' then
               Begin
                  sg.cells[Acol,Arow] := IntToStr(Counter);
                  Inc(Counter);
               End;
         End;
      Remove :
         Begin
            if sg.cells[Acol,Arow] <> '' then
               Begin
                  N := StrToInt(sg.cells[Acol,Arow]);
                  sg.Cells[Acol,Arow] := '';
                  Dec(Counter);
                  For X := 0 to 31 do
                     For Y := 0 to 23 do
                        Begin
                           if (sg.Cells[x,y] <> '') then
                              Begin
                                 I := StrToInt(sg.Cells[x,y]);
                                 if I > N Then
                                    sg.Cells[x,y] := IntToStr(I-1);
                              End;
                        End;
               End;
         End;
   End;
if counter = 768 then
   enable_export
else
   disable_export;
end;

Function Middle(X,y:Integer):Integer;
Begin
   Middle := (X + Y) Div 2;
End;

procedure TTransitionMaker.sgDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
   N : Integer;
begin
   if sg.cells[Acol,ARow] = '' then
      Begin
         With sg.Canvas do
            Begin
               Brush.color := clWhite;
               FillRect(Rect);
            End;
      end
   Else
      Begin
         With sg.Canvas Do
            Begin
               N := StrToInt(sg.Cells[ACol,ARow]);
               if playing then
                  Begin
                     if playnum >= N Then
                        Brush.color := rgb(N Div 6,N Div 8,127+(N Div 6))
                     else
                        Brush.Color := clWhite;
                  end
               Else
                  Brush.color := rgb(N Div 6,N Div 8,127+(N Div 6));
               FillRect(Rect);
               Font.Color := rgb(255,255,100);
               Font.Style := [];
               if N Mod 32 = 0 then
                  Begin
                     Font.Style := Font.Style + [fsItalic];
                  End;
               if N=0 then
                  Begin
                     Font.Style := font.style + [fsbold] - [fsitalic];
                     Font.Color := clLime;
                  End;
               if N=767 then
                  Begin
                     Font.Style := font.style + [fsbold];
                     Font.Color := clRed;
                  End;
               TextRect(Rect,Middle(Rect.Left,Rect.Right)-(TextWidth(sg.cells[Acol,Arow]) Div 2),
                             Middle(Rect.Top,Rect.Bottom)-(TextHeight(sg.cells[Acol,Arow]) Div 2),sg.cells[Acol,Arow]);
            End;
      end;
   if gdSelected in state then
      Begin
         With sg.Canvas Do
            Begin
               Brush.color := rgb(255,255,0);
               FrameRect(Rect);
               Inc(Rect.Top);
               Inc(Rect.Left);
               Dec(Rect.Right);
               Dec(Rect.Bottom);
               Brush.color := clBlack;
               FrameRect(Rect);
            End;
      End;
end;

procedure TTransitionMaker.sbRemoveClick(Sender: TObject);
begin
   mode := Remove;
end;

procedure TTransitionMaker.sbSkipClick(Sender: TObject);
begin
   mode := skip;
end;

procedure TTransitionMaker.sgKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(32) then
      Begin
         case (mode) of
            add : begin
                     mode := remove;
                     sbremove.down := true;
                  end;
            remove : begin
                     mode := skip;
                     sbskip.down := true;
                  end;
            skip : begin
                     mode := add;
                     sbAdd.down := true;
                  end;
         end;
      End;
end;

Procedure TTransitionMaker.grab_numlist;
var
   x,y : Integer;
   I : Integer;
Begin
   for I := 0 to 767 do
      for x := 0 to 31 do
         for y := 0 to 23 do
            if (sg.cells[x,y] <> '') and (StrToInt(sg.cells[x,y])=I) then
               NumList[I] := x+(y*32);
End;

procedure TTransitionMaker.cmdataclipboardClick(Sender: TObject);
var
   i : Integer;
  s : String;
begin
   if counter < 768 then
      exit;
   grab_numlist;
   { Now we save it here. }
   s := '';
   for i := 0 to 767 do
      Begin
         if ((i mod 32)=0) then
            Begin
               if I > 0 then
                  s := s + #13+#10;
               s := s +'data '+IntToStr(NumList[i]);
            End
         else
            s := s +', '+IntToStr(NumList[i]);
      end;
   s := s + #13+#10;
   clipboard.AsText := s;
end;

procedure TTransitionMaker.sbAddClick(Sender: TObject);
begin
   mode := add;
end;

procedure TTransitionMaker.FormCreate(Sender: TObject);
begin
   counter := 0;
   mode := add;
   disable_export;
   playing := false;
end;

procedure TTransitionMaker.cmlistclipboardClick(Sender: TObject);
var
   i : Integer;
   s : String;
begin
   if counter < 768 then
      exit;
   grab_numlist;
   { Now we save it here. }
   s := '';
   for i := 0 to 767 do
      Begin
         s := s +IntToStr(NumList[i])+#13+#10;
      end;
   s := s + #13+#10;
   clipboard.AsText := s;
end;

procedure TTransitionMaker.cmListFileClick(Sender: TObject);
var
   i : Integer;
   ts : TStringList;
begin
   if counter < 768 then
      exit;
   ts := TStringList.Create;
   grab_numlist;
   { Now we save it here. }
   for i := 0 to 767 do
      ts.add(IntToStr(NumList[i]));
   if sd.execute then
      ts.SaveToFile(sd.filename);
   ts.free;
end;

procedure TTransitionMaker.cmDataFileClick(Sender: TObject);
var
   i : Integer;
  s : String;
  ts : TStringList;
begin
   if counter < 768 then
      exit;
   grab_numlist;
   { Now we save it here. }
   s := '';
   ts := TStringList.Create;
   for i := 0 to 767 do
      Begin
         if ((i mod 32)=0) then
            Begin
               if I > 0 then
                  ts.Add(s);
               s := 'data '+IntToStr(NumList[i]);
            End
         else
            s := s +', '+IntToStr(NumList[i]);
      end;
   ts.Add(s);
   if sd.execute then
      ts.SaveToFile(sd.filename);
   ts.free;
end;

procedure tTransitionMaker.enable_export;
begin
   cmDataFile.Enabled := true;
   cmListFile.Enabled := true;
   cmDataClipboard.Enabled := true;
   cmListClipboard.Enabled := true;
end;

procedure tTransitionMaker.disable_export;
begin
   cmDataFile.Enabled := false;
   cmListFile.Enabled := false;
   cmDataClipboard.Enabled := false;
   cmListClipboard.Enabled := false;
end;

procedure TTransitionMaker.cmLoadClick(Sender: TObject);
var
   f : File of Word;
   w : Word;
   TimeToQuit : Boolean;
begin
   if FileLoad.Execute Then
      Begin
         cmClearClick(Self);
         TimeToQuit := False;
         AssignFile(F,FileLoad.Filename);
         Reset(F);
         counter := 0;
         While Not(TimeToQuit) Do
            Begin
               Read(F,W);
               If (W >= 0) and (w < 768) then
                  Begin
                     Numlist[counter] := W;
                     Sg.Cells[w mod 32,w div 32] := IntToStr(Counter);
                     Inc(Counter);
                  End
               Else
                  TimeToQuit := True;
               If Counter > 767 then
                  TimeToQuit := True;
               If Eof(F) Then
                  TimeToQuit := True;
            End;
         CloseFile(F);
         Repaint;
      End;

end;

procedure TTransitionMaker.cmSaveClick(Sender: TObject);
var
   f : File of Word;
   i : Integer;
   w : Word;
   TimeToQuit : Boolean;
begin
   grab_numlist;
   if FileSave.Execute Then
      Begin
         AssignFile(F,FileSave.Filename);
         Rewrite(F);
         For I := 0 to Counter-1 do
            Write(F,Numlist[I]);
         CloseFile(F);
      End;
end;

procedure TTransitionMaker.cmToLClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      dec(x);
   Until x < 0;
end;

procedure TTransitionMaker.cmToRClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      inc(x);
   Until x > 31;
end;

procedure TTransitionMaker.TmToBClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      inc(y);
   Until y > 23;
end;

procedure TTransitionMaker.cmToTClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      dec(y);
   Until y < 0;
end;

procedure TTransitionMaker.cmToULClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      dec(x);
      dec(y);
   Until (x < 0) or (y < 0);

end;

procedure TTransitionMaker.cmToURClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      inc(x);
      dec(y);
   Until (x > 31) or (y < 0);

end;

procedure TTransitionMaker.cmToBLClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      dec(x);
      inc(y);
   Until (x < 0) or (y > 23);
end;

procedure TTransitionMaker.cmToBRClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   x := sg.Selection.Left;
   y := sg.Selection.Top;
   repeat
      sgSelectCell(self,x,y,CanSelect);
      inc(x);
      inc(y);
   Until (x > 31) or (y > 23);
end;

procedure TTransitionMaker.cmFillHClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   For Y := 0 to 23 do
      For X := 0 to 31 do
         sgSelectCell(self,x,y,CanSelect);
end;

procedure TTransitionMaker.cmFillVClick(Sender: TObject);
var
   x,y : integer;
   CanSelect : Boolean;
begin
   For X := 0 to 31 do
      For Y := 0 to 23 do
         sgSelectCell(self,x,y,CanSelect);
end;

procedure TTransitionMaker.cmPlayClick(Sender: TObject);
begin
   commandsPanel.Visible := False;
   playing := true;
   playnum := -1;
   Timer1.Enabled := True;
end;

procedure TTransitionMaker.Timer1Timer(Sender: TObject);
begin
   inc(playnum);

   sg.Invalidate;

   if playnum > counter then
      Begin
         playing := false;
         Timer1.Enabled := false;
         commandsPanel.Visible := True;
      End;
end;

end.

