unit uEncerramentoMDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TfrmEncerramentoMDFe = class(TForm)
    pgcDados: TPageControl;
    tbsDadosCancelamento: TTabSheet;
    Label2: TLabel;
    edtChave: TLabeledEdit;
    edtProtocolo: TLabeledEdit;
    btnOk: TButton;
    btnCancelar: TButton;
    edtUFEnc: TLabeledEdit;
    edtMunEnc: TLabeledEdit;
    edtDHEventoEncerramento: TLabeledEdit;
    edtDataEncerramento: TLabeledEdit;
    edtFusoEncerramento: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEncerramentoMDFe: TfrmEncerramentoMDFe;

implementation

uses
  uExemplo;

{$R *.dfm}

end.
