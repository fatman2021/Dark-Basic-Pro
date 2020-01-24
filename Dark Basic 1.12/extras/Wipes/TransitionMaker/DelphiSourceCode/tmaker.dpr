program tmaker;

uses
  Forms,
  Unit1 in 'Unit1.pas' {TransitionMaker};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TTransitionMaker, TransitionMaker);
  Application.Run;
end.
