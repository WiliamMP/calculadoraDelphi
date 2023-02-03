unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompRectangle, RzButton, Vcl.Samples.Spin, Vcl.StdCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    btnEquals: TButton;
    btnThree: TButton;
    btnTwo: TButton;
    btnOne: TButton;
    btnAddition: TButton;
    btnSix: TButton;
    btnFive: TButton;
    btnFour: TButton;
    btnSubtract: TButton;
    btnNine: TButton;
    btnEight: TButton;
    btnSeven: TButton;
    btnMultiplication: TButton;
    btnDivision: TButton;
    btnCE: TButton;
    btnBackspace: TButton;
    pDados: TPanel;
    procedure btnOneClick(Sender: TObject);
    procedure btnTwoClick(Sender: TObject);
    procedure btnThreeClick(Sender: TObject);
    procedure btnFourClick(Sender: TObject);
    procedure btnFiveClick(Sender: TObject);
    procedure btnSixClick(Sender: TObject);
    procedure btnSevenClick(Sender: TObject);
    procedure btnEightClick(Sender: TObject);
    procedure btnNineClick(Sender: TObject);
    procedure btnCEClick(Sender: TObject);
    procedure btnAdditionClick(Sender: TObject);
    procedure btnEqualsClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure btnMultiplicationClick(Sender: TObject);
    procedure btnDivisionClick(Sender: TObject);
    procedure btnBackspaceClick(Sender: TObject);

  private
    { Private declarations }
  public
  end;

var
  Form1: TForm1;
  globalVal : Integer;
  globalVal2 : Integer;
  verificaOp : Integer;

implementation

{$R *.dfm}


function dividir(): Single;
begin
  Result := globalVal / globalVal2; // não funciona por causa da variavel
end;

function multiplicar(): Single;
begin
  Result := globalVal * globalVal2;
end;


function subtrair(): Single;
begin
  Result := globalVal - globalVal2;
end;

function somar(): Single;
begin
  Result := globalVal + globalVal2;
end;

procedure TForm1.btnAdditionClick(Sender: TObject);
begin
  verificaOp := 1;
  globalVal := StrToInt(pDados.Caption);
  pDados.Caption := '';
end;

procedure TForm1.btnBackspaceClick(Sender: TObject);
var
  tamanho : Integer;

begin
  tamanho := Length(pDados.Caption);
  pDados.Caption := Copy(pDados.Caption,1,tamanho-1);

end;

procedure TForm1.btnCEClick(Sender: TObject);
begin
  pDados.Caption := '';
end;

procedure TForm1.btnDivisionClick(Sender: TObject);
begin
  verificaOp := 4;
  globalVal := StrToInt(pDados.Caption);
  pDados.Caption := '';
end;

procedure TForm1.btnEightClick(Sender: TObject);
var
  val : string;

begin
  val := '8'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnEqualsClick(Sender: TObject);
begin
  globalVal2 := StrToInt(pDados.Caption);
  if verificaOp = 1 then
    pDados.Caption := somar().ToString;

  if verificaOp = 2 then
    pDados.Caption := subtrair().ToString;

  if verificaOp = 3 then
    pDados.Caption :=  multiplicar().ToString;

  if verificaOp = 4 then
    pDados.Caption := dividir().ToString;
end;

procedure TForm1.btnFiveClick(Sender: TObject);
var

  val : string;

begin
  val := '5'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnFourClick(Sender: TObject);
var
  val : string;

begin
  val := '4'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnMultiplicationClick(Sender: TObject);
begin
  verificaOp := 3;
  globalVal := StrToInt(pDados.Caption);
  pDados.Caption := '';
end;

procedure TForm1.btnNineClick(Sender: TObject);
var
  val : string;

begin
  val := '9'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnOneClick(Sender: TObject);
var
  val : string;

begin

    val := '1'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;


end;
procedure TForm1.btnSevenClick(Sender: TObject);
var
  val : string;

begin
  val := '7'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnSixClick(Sender: TObject);
var

  val : string;

begin
    val := '6'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

procedure TForm1.btnSubtractClick(Sender: TObject);
begin
  verificaOp := 2;
  globalVal := StrToInt(pDados.Caption);
  pDados.Caption := '';
end;

procedure TForm1.btnThreeClick(Sender: TObject);
var
  val : string;

begin
    val := '3'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;

end;

procedure TForm1.btnTwoClick(Sender: TObject);
var
  val : string;

begin
     val := '2'; // setar o valor do botão


    if not (pDados.Caption = '') then
    begin
        pDados.Caption := pDados.Caption + val;
    end else
    pDados.Caption := val;
end;

end.
