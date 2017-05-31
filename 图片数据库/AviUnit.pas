unit AviUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TAviForm = class(TForm)
    Animate1: TAnimate;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    stop:boolean;
  end;

var
  AviForm: TAviForm;

implementation

{$R *.dfm}

procedure TAviForm.Button1Click(Sender: TObject);
begin
   stop:=true;
end;

end.
