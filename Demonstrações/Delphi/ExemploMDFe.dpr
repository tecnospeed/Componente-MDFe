program ExemploMDFe;

uses
  Forms,
  uExemplo in 'uExemplo.pas' {FrmExemplo},
  uCancelamentoMDFe in 'uCancelamentoMDFe.pas' {frmCancelamentoMDFe},
  uEncerramentoMDFe in 'uEncerramentoMDFe.pas' {frmEncerramentoMDFe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmExemplo, FrmExemplo);
  Application.Run;
end.
