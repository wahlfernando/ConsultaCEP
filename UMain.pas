(*
  Autor: Walfrido César Cintra;
  Email: walfridocesar@hotmail.com
  Observação: esse exemplo foi baseado no webservice do REPÚBLICA VIRTUAL
  Se alguém melhorar o código com novas idéias me mande uma cópia

*)

unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, xmldom, XMLIntf, msxmldom, XMLDoc,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    IdHTTP1: TIdHTTP;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure ECEPKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TSConsulta: TStringList;
implementation

{$R *.dfm}

procedure TForm1.ECEPKeyPress(Sender: TObject; var Key: Char);
begin
     if not (Key in ['0'..'9', #8]) then
        Key := #0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 lodados : TStringList;
 Teste: ansistring;
begin

 lodados := TStringList.Create;

 lodados.Text := StringReplace(idhttp1.URL.URLDecode(idhttp1.Get('http://republicavirtual.com.br/web_cep.php?cep='+edit1.text+
                               '&formato=query_string')),'&',#13#10,[rfreplaceAll]);

 Teste := lodados.Values['TIPO_LOGRADOURO']+' '+lodados.Values['LOGRADOURO'].Replace('+',' ');

 Edit2.Text := UTF8String(Teste);




 Edit3.Text := lodados.Values['BAIRRO'].Replace('+',' ');
 Edit4.Text := lodados.Values['CIDADE'].Replace('+',' ');
 Edit5.Text := lodados.Values['UF'].Replace('+',' ');


end;

end.
