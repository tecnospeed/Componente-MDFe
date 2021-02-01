unit uCancelamentoMDFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls;

type
  TfrmCancelamentoMDFe = class(TForm)
    pgcDados: TPageControl;
    tbsDadosCancelamento: TTabSheet;
    Label2: TLabel;
    lblJustificativa: TLabel;
    edtChave: TLabeledEdit;
    edtProtocolo: TLabeledEdit;
    mJustificativa: TMemo;
    btnOk: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelamentoMDFe: TfrmCancelamentoMDFe;

implementation

{$R *.dfm}

end.
