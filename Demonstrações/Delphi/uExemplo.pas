unit uExemplo;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ComCtrls,
  IniFiles,
  Buttons,
  ExtCtrls,
  ShellAPI,
  spdMDFe,
  spdMDFeUtils,
  spdMDFeTypes,
  spdXsdMDFeUtils,
  spdMDFeException,
  spdMDFeDatasetX_TLB,
  spdMDFeDataSetAdapter,
  {$I GovTLB.inc};

  const
  INI_FILE = 'mdfeConfig.ini';
  INI_SECTION = 'MDFE';

type
  TTipoConfiguracao = (tcViaIni, tcViaPropriedades);

  TFrmExemplo = class(TForm)
    pnlMenu: TPanel;
    OpnDlgTx2: TOpenDialog;
    OpnDlgXML: TOpenDialog;
    svDlgExportar: TSaveDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    grpOptions: TGroupBox;
    Label1: TLabel;
    btnConfigIni: TBitBtn;
    btnConsultarReciboMDFe: TBitBtn;
    btnCancelarMDFe: TBitBtn;
    btnEnviarMDFe: TBitBtn;
    btnConsultarMDFe: TBitBtn;
    btnGerarXMLViaDataSet: TButton;
    btnGerarXMLViaTx2: TButton;
    btnVerificarStatus: TBitBtn;
    btnLoadConfig: TButton;
    btnConfiguraSH: TBitBtn;
    cbListaCertificados: TComboBox;
    btnEncerrarMDFe: TBitBtn;
    grpImpressao: TGroupBox;
    btnExportarPDF: TBitBtn;
    btnVisualizar: TBitBtn;
    pgCtrlMessages: TPageControl;
    tbSheetMemo: TTabSheet;
    lblHidden: TLabel;
    mStatus: TMemo;
    mOutput: TMemo;
    gbConfig: TGroupBox;
    edtCNPJ: TLabeledEdit;
    edtProtocolo: TLabeledEdit;
    edtUF: TLabeledEdit;
    edtRecibo: TLabeledEdit;
    edtChave: TLabeledEdit;
    edtAmbiente: TLabeledEdit;
    btnAssinar: TButton;
    btnPreverDamdfe: TButton;
    edtCNPJSoftwareHouse: TLabeledEdit;
    edtTokenSoftwareHouse: TLabeledEdit;
    lblInfo: TLabel;
    // Inicializa��o do formul�rio
    procedure FormCreate(Sender: TObject);
    // Destrui��o do formul�rio
    procedure FormDestroy(Sender: TObject);
    // 1.1. Configurar o CNPJ da Software House
    procedure btnConfiguraSHClick(Sender: TObject);
    // 1.2. Configurar MDFe via arquivo .ini
    procedure btnConfigIniClick(Sender: TObject);
    // 2. LoadConfig
    procedure btnLoadConfigClick(Sender: TObject);
    // 3.Verificar Status do Servi�o
    procedure btnVerificarStatusClick(Sender: TObject);
    // 4.1.Gerar XML via TX2
    procedure btnGerarXMLViaTx2Click(Sender: TObject);
    // 4.2.Gerar XML via DataSet
    procedure btnGerarXMLViaDataSetClick(Sender: TObject);
    // 5.1 Assinar MDFe
    procedure btnAssinarClick(Sender: TObject);
    // 5.2 Prever DAMDFE
    procedure btnPreverDamdfeClick(Sender: TObject);
    // 6.Enviar MDFe
    procedure btnEnviarMDFeClick(Sender: TObject);
    // 7. Consultar Recibo MDFe
    procedure btnConsultarReciboMDFeClick(Sender: TObject);
    // 8.Consultar MDFe
    procedure btnConsultarMDFeClick(Sender: TObject);
    // 9.Encerrar MDFe
    procedure btnEncerrarMDFeClick(Sender: TObject);
    // 10.Cancelar MDFe
    procedure btnCancelarMDFeClick(Sender: TObject);
    // 11.Visualizar
    procedure btnVisualizarClick(Sender: TObject);
    // 12.Exportar para PDF
    procedure btnExportarPDFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);



  private
    MDFe: TspdMDFe;
    MDFeDataSet: TspdMDFeDatasetX;
    fUtils: TspdGovUtils;

    // guarda o tipo da configura��o, pode ser via arquivo ini ou propriedades configuradas no componente.
    fTipoConfiguracao: TTipoConfiguracao;
    // guarda o nome do arquivo do XML Tomador Servi�o para utiliz�-lo posteriormente na impress�o
    FXMLDestinatarioFileName: string;
    // m�todo para configurar o componente via o arquivo cteConfig.ini
    procedure ConfiguraViaArquivo;

  public
    // Carrega as configura��es do arquivo .ini
    procedure LoadConfig;
    // Atualiza��o do status na tela
    procedure UpdateStatus(aMsg: string; Clear: Boolean = true; ReplaceLast: Boolean = False);
    // Atualiza��o de mensagens de texto no objeto mOutput(Memo)
    procedure UpdateOutput(aMessage: string);
    // Escreve configura��es em um arquivo .ini
    procedure WriteToIni(aName, aValue: string);
    // Valida a presen�a do arquivo .ini
    procedure CheckConfig(ClearOutput: Boolean = true);
    // Retorna o d�gito verificador da chave
    function RetornaDV(aChave: string): string;
    //Retorna a chave do MDF-e
    function GetValueChave(aXml : string) : string;
    // Retorna o XML Destinat�rio do MDF-e
    function getXMLDestinatario : string;
    //retorna o fuso hor�rio da m�quina
    function GetTimeZone: string;
    function HorarioVeraoAtivo: Boolean;
  end;

var
  FrmExemplo: TFrmExemplo;

implementation

uses
  uCancelamentoMDFe,
  uEncerramentoMDFe;
{$R *.dfm}



// Inicializa��o do formul�rio
procedure TFrmExemplo.FormCreate(Sender: TObject);
begin
  MDFe := TspdMDFe.Create(nil);
  MDFeDataSet := TspdMDFeDatasetX.Create(nil);
  fUtils := TspdGovUtils.Create(nil);
  edtCNPJSoftwareHouse.text := '00000000000000';
  edtCNPJ.text := '00000000000000';

  MDFe.LoadConfig();

  FrmExemplo.Caption := 'Tecnospeed MDFe - Vers�o: ' + MDFe.Versao;
  fTipoConfiguracao := tcViaIni;

  MDFe.ListarCertificados(cbListaCertificados.Items);

end;

// Destrui��o do formul�rio
procedure TFrmExemplo.FormDestroy(Sender: TObject);
begin
  MDFe.Free;
  FUtils.Free;
end;

//Retorna a chave do MDF-e
function TFrmExemplo.GetValueChave(aXml: string): string;
Var
  aPINI : integer;
begin
  aPINI := pos('Id="MDFe', aXml)+ 8;
  Result := Copy(aXml, aPINI, 44);
end;

// Retorna o XML Destinat�rio do MDF-e
function TFrmExemplo.getXMLDestinatario: string;
var
aXMLDestinatario : string;
begin
      aXMLDestinatario := MDFe.DiretorioXmlDestinatario + '\' + edtChave.Text + '-mdfe.xml';
      if FileExists(aXMLDestinatario) then
      begin
        Result := fUtils.LoadFromFile(aXMLDestinatario);
      end
      else  if mOutput.Text <> '' then
      begin
        Result := mOutput.Text;
      end
      else
      begin
         raise Exception.Create('Informe a chave de um MDF-e Autorizado ou preencha o memo com o valor do XML Destinat�rio');
      end;
end;

procedure TFrmExemplo.FormShow(Sender: TObject);
begin
  btnLoadConfigClick(nil);
end;

procedure TFrmExemplo.ConfiguraViaArquivo;
var
  _ExecuteFile: string;
  _NomeCertificado: string;
begin
  try
    if (cbListaCertificados.Text <> '') and (cbListaCertificados.Text <> 'Selecione o Certificado') then
    begin
      _NomeCertificado := Trim(cbListaCertificados.Text);
      WriteToIni('NomeCertificado', _NomeCertificado);
    end;
    _ExecuteFile := ExtractFilePath(ParamStr(0)) + 'mdfeConfig.ini';
    ShellExecute(Application.Handle, nil, Pchar(_ExecuteFile), nil, nil, SW_SHOWNORMAL);
  except
    raise EspdMDFeException.Create('Erro ao tentar abrir o arquivo ' + INI_FILE +
      '. Verifique se o arquivo est� na mesma pasta que o execut�vel.');
  end;
end;

// Atualiza��o do status na tela
procedure TFrmExemplo.UpdateStatus(aMsg: string; Clear: Boolean = true; ReplaceLast: Boolean = False);
begin
  if Clear then
    mStatus.Clear;
  if ReplaceLast then
    mStatus.Lines[mStatus.Lines.Count - 1] := mStatus.Lines[mStatus.Lines.Count - 1] + aMsg
  else
    mStatus.Lines.Add(aMsg);
  mStatus.Refresh;
end;

// Atualiza��o de mensagens de texto no objeto mOutput(Memo)
procedure TFrmExemplo.UpdateOutput(aMessage: string);
begin
  mOutput.Lines.Text := aMessage;
end;

// Carrega as configura��es do arquivo .ini
procedure TFrmExemplo.LoadConfig;
var
  aMessage: string;
begin
  UpdateStatus('', true);
  try
    MDFe.LoadConfig;
  except
    on e: Exception do
      raise EspdMDFeException.Create(e.Message);
  end;

  if MDFe.Ambiente = akProducao then
    edtAmbiente.Text := '1 - Produ��o'
  else begin
    edtAmbiente.Text := '2 - Homologa��o'
  end;

  aMessage := '';
  edtUF.Text := MDFe.UF;
  edtCNPJ.Text := MDFe.CNPJ;
  cbListaCertificados.Text := MDFe.NomeCertificado;

  UpdateStatus('Configura��es carregadas via arquivo ini.');
end;

// Escreve configura��es em um arquivo .ini
procedure TFrmExemplo.WriteToIni(aName, aValue: string);
var
  IniFile: TIniFile;
  aCurrentDir: string;
begin
  aCurrentDir := ExtractFilePath(ParamStr(0));
  SetCurrentDir(aCurrentDir);
  IniFile := TIniFile.Create(aCurrentDir + INI_FILE);
  try
    IniFile.WriteString(INI_SECTION, aName, aValue);
  finally
    IniFile.Free;
  end;
end;
// Valida a presen�a do arquivo .ini
procedure TFrmExemplo.CheckConfig(ClearOutput: Boolean = true);
var
  bConfig : Boolean;
begin
  if ClearOutput then
  begin
    mOutput.Clear;
  end;

  Application.ProcessMessages;

  bConfig := True;

  if trim(MDFe.UF) = '' then
    bConfig := False;
  if trim(MDFe.CNPJ) = '' then
    bConfig := False;
  if trim(MDFe.NomeCertificado) = '' then
  begin
    if (Trim(MDFe.CaminhoCertificado) = '')  or  (Trim(MDFe.SenhaCertificado) = '') then
      bConfig := False;
  end;
  if (fTipoConfiguracao = tcViaIni) and (not bConfig) then
    raise Exception.Create('Favor configurar o componente antes de prosseguir (via ini ou via propriedades).');
end;

// Retorna o d�gito verificador da chave
function TFrmExemplo.RetornaDV(aChave: string): string;
begin
  Result := aChave[Length(aChave)];
end;

function TFrmExemplo.GetTimeZone: string;
var
  TimeZone: TTimeZoneInformation;
  Minutos: Integer;
begin
  GetTimeZoneInformation(TimeZone);
  Minutos := TimeZone.Bias;

//Se em TIME_ZONE_ID_DAYLIGHT indica que o horario de ver�o esta ativado na m�quina
  if HorarioVeraoAtivo then
begin
//No caso do fusorario de brasilia -3:00 o TimeZone.Bias retorna 180, no caso de hor�rio de ver�o deve ser 120(-02:00) entao desconto 60
  if (Minutos > 0) then
    Minutos := Minutos - 60
  else
    Minutos := Minutos + 60;
end;
  Result := FormatFloat('00', Minutos div -60) + ':00';
end;

function TFrmExemplo.HorarioVeraoAtivo: Boolean;
var
  TimeZoneInfo: TTimezoneinformation;
begin
  Result := GetTimezoneInformation(TimeZoneInfo) in [TIME_ZONE_ID_DAYLIGHT]
end;

// ******************************************************************************************************
//
// Aqui come�am as fun��es de exemplo do componente spdCTe
//
// ******************************************************************************************************


// 1.1 Configurar o CNPJ da Software House
procedure TFrmExemplo.btnConfiguraSHClick(Sender: TObject);
begin
  try
    edtCNPJSoftwareHouse.SetFocus;
    MDFe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text, '');
  except
    on e: Exception do
      raise EspdMDFeException.Create(e.Message);
  end;
end;

// 1.2 Configurar Arquivo .ini
procedure TFrmExemplo.btnConfigIniClick(Sender: TObject);
begin
  (Sender as TWinControl).Enabled := False;
  try
    ConfiguraViaArquivo;
 finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

// 2.Executando LoadConfig
procedure TFrmExemplo.btnLoadConfigClick(Sender: TObject);
begin
  MDFe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text,edtTokenSoftwareHouse.Text);
  LoadConfig;
  edtCNPJ.Text := MDFe.CNPJ;
  edtUF.Text := MDFe.UF;
  cbListaCertificados.Text := MDFe.NomeCertificado;
end;

// 3.Verificar Status do Servi�o
procedure TFrmExemplo.btnVerificarStatusClick(Sender: TObject);
var
  _returnValue: WideString;
begin
  CheckConfig(False);
  try
    (Sender as TWinControl).Enabled := False;
    try
      UpdateStatus('Verificando status...');
      _returnValue := MDFe.StatusDoServicoMDFe;
      UpdateOutput(_returnValue);
      UpdateStatus('Status do Servi�o OK.');
    finally
      (Sender as TWinControl).Enabled := true;
    end;
  except
    UpdateStatus(' falha', False, true);
    raise ;
  end;
end;

// 4.1.Gerar XML via TX2
procedure TFrmExemplo.btnGerarXMLViaTx2Click(Sender: TObject);
var
  aXML: string;
begin
  CheckConfig(False);
  mOutput.Clear;

  (Sender as TWinControl).Enabled := False;
  try
    OpnDlgTx2.FileName := 'mdfe.tx2';
    if OpnDlgTx2.Execute then
    begin
      aXML := MDFe.ConverterTx2ParaXml(OpnDlgTx2.FileName);
      UpdateOutput(aXML);
      UpdateStatus('XML via Tx2 gerado com sucesso.');
      edtChave.Text := GetValueChave(aXML);
    end;
  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

procedure TFrmExemplo.btnGerarXMLViaDataSetClick(Sender: TObject);
procedure DadosDoMDFe(aDs : TspdMDFeDataSetX);
  var
   _NRNota : String;
  begin
            MDFeDataSet.SetFieldAsString('versao_2', '3.00');
            MDFeDataSet.SetFieldAsString('cUF_5', '41');
            MDFeDataSet.SetFieldAsString('tpAmb_6', '2');
            MDFeDataSet.SetFieldAsString('tpEmit_7', '2');
            MDFeDataSet.SetFieldAsString('mod_8', '58');
            MDFeDataSet.SetFieldAsString('serie_9', '41');

            _NRNota := IntToStr(Random(100000));

            MDFeDataSet.SetFieldAsString('nMDF_10', _NRNota);
            MDFeDataSet.SetFieldAsString('cMDF_11', '00000001');
            MDFeDataSet.SetFieldAsString('cDV_12', '1');
            MDFeDataSet.SetFieldAsString('modal_13', '1');
            MDFeDataSet.SetFieldAsString('dhEmi_14', FormatDateTime('YYYY-mm-dd"T"hh:nn:ss',now) + GetTimeZone);
            MDFeDataSet.SetFieldAsString('tpEmis_15', '1');
            MDFeDataSet.SetFieldAsString('procEmi_16', '0');
            MDFeDataSet.SetFieldAsString('verProc_17', '5.0');
            MDFeDataSet.SetFieldAsString('UFIni_18', 'PR');
            MDFeDataSet.SetFieldAsString('UFFim_19', 'SP');

            MDFeDataSet.IncludePart('infMunCarrega');
            MDFeDataSet.SetFieldAsString('cMunCarrega_21', '4111803');
            MDFeDataSet.SetFieldAsString('xMunCarrega_22', 'JACAREZINHO');
            MDFeDataSet.SavePart('infMunCarrega');

  end;

  procedure DadosDoEmitente(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.SetFieldAsString('CNPJ_26', '08187168000160');
            MDFeDataSet.SetFieldAsString('IE_27', '9044016688');
            MDFeDataSet.SetFieldAsString('xNome_28', 'TECNOSPEED');
            MDFeDataSet.SetFieldAsString('xFant_29', 'TECNOSPEED');
            MDFeDataSet.SetFieldAsString('xLgr_31', 'RUA DUQUE DE CAXIAS');
            MDFeDataSet.SetFieldAsString('nro_32', '882');
            MDFeDataSet.SetFieldAsString('xCpl_33', 'SALA 102 E 909');
            MDFeDataSet.SetFieldAsString('xBairro_34', 'CENTRO');
            MDFeDataSet.SetFieldAsString('cMun_35', '4115200');
            MDFeDataSet.SetFieldAsString('xMun_36', 'Maringa');
            MDFeDataSet.SetFieldAsString('CEP_37', '87020025');
            MDFeDataSet.SetFieldAsString('UF_38', 'PR');
            MDFeDataSet.SetFieldAsString('fone_39', '4430283749');
            MDFeDataSet.SetFieldAsString('email_40', 'testedanfe@gmail.com');
  end;

  procedure DadosDoModal(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.SetFieldAsString('versaoModal_42', '3.00');

            MDFeDataSet.IncludePart('rodo');
            MDFeDataSet.SetFieldAsString('RNTRC_rodo_2', '48695023');
            MDFeDataSet.SetFieldAsString('cInt_rodo_5', '014-1');
            MDFeDataSet.SetFieldAsString('placa_rodo_6', 'HQV0325');
            MDFeDataSet.SetFieldAsString('tara_rodo_7', '15100');
            MDFeDataSet.SetFieldAsString('capKG_rodo_8', '48500');
            MDFeDataSet.SetFieldAsString('capM3_rodo_9', '500');
            MDFeDataSet.SetFieldAsString('tpRod_rodo_34', '03');
            MDFeDataSet.SetFieldAsString('tpCar_rodo_35', '02');
            MDFeDataSet.SetFieldAsString('UF_rodo_36', 'PR');
            MDFeDataSet.SavePart('rodo');

            MDFeDataSet.IncludePart('infContratante');
            MDFeDataSet.SetFieldAsString('CNPJ_rodo_173','99999999999999');
            MDFeDataSet.SavePart('infContratante');

            MDFeDataSet.IncludePart('condutor');
            MDFeDataSet.SetFieldAsString('xNome_rodo_13', 'JOAO');
            MDFeDataSet.SetFieldAsString('CPF_rodo_14', '99999999999');
            MDFeDataSet.SavePart('condutor');

            MDFeDataSet.IncludePart('veicReboque');
            MDFeDataSet.SetFieldAsString('cInt_rodo_16', '002');
            MDFeDataSet.SetFieldAsString('placa_rodo_17', 'XYZ4567');
            MDFeDataSet.SetFieldAsString('tara_rodo_18', '4000');
            MDFeDataSet.SetFieldAsString('capKG_rodo_19', '3000');
            MDFeDataSet.SetFieldAsString('capM3_rodo_20', '300');
            MDFeDataSet.SetFieldAsString('RNTRC_rodo_22', '87654321');

            MDFeDataSet.SetFieldAsString('CPF_rodo_37', '48681216503');
            MDFeDataSet.SetFieldAsString('xNome_rodo_39', 'NOME DO PROPRIETARIO VEICULO REBOQUE');
            MDFeDataSet.SetFieldAsString('tpProp_42', '0');

            MDFeDataSet.SetFieldAsString('tpCar_rodo_43', '01');
            MDFeDataSet.SetFieldAsString('UF_rodo_44', 'PR');

            MDFeDataSet.SavePart('veicReboque');

            MDFeDataSet.IncludePart('disp');
            MDFeDataSet.SetFieldAsString('CNPJForn_rodo_25', '12345678000199');
            MDFeDataSet.SetFieldAsString('CNPJPg_rodo_26', '21543876000188');
            MDFeDataSet.SetFieldAsString('nCompra_rodo_27', '789');
            MDFeDataSet.SetFieldAsString('vValePed_rodo_71', '10.00');
            MDFeDataSet.SavePart('disp');

            MDFeDataSet.IncludePart('seg');
            MDFeDataSet.SetFieldAsString('respSeg_153', '1');
            MDFeDataSet.SetFieldAsString('CNPJ_154', '99999999999999');
            MDFeDataSet.SetFieldAsString('xSeg_156', 'PORTO SEGURO - CIA DE SEGUROS');
            MDFeDataSet.SetFieldAsString('CNPJ_157', '99999999999999');
            MDFeDataSet.SetFieldAsString('nApol_158', '06540713572');
            MDFeDataSet.SavePart('seg');

            MDFeDataSet.IncludePart('naver');
            MDFeDataSet.SetFieldAsString('nAver_159', '73652309182');
            MDFeDataSet.SavePart('naver');
  end;

  procedure DadosDescarga(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.IncludePart('infMunDescarga');
            MDFeDataSet.SetFieldAsString('cMunDescarga_46', '3552205');
            MDFeDataSet.SetFieldAsString('xMunDescarga_47', 'SOROCABA');

            MDFeDataSet.IncludePart('infNFe');
            MDFeDataSet.SetFieldAsString('chNFe_58', '41180908187168000160550010000509611154604379');
            MDFeDataSet.SavePart('infNFe');
  end;

  procedure DadosTotalizadores(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.SetFieldAsString('qNFe_71', '1');
            MDFeDataSet.SetFieldAsString('qCTe_69', '0');
            MDFeDataSet.SetFieldAsString('vCarga_73', '54743.52');
            MDFeDataSet.SetFieldAsString('cUnid_74', '01');
            MDFeDataSet.SetFieldAsString('qCarga_75', '32240.0000');
  end;

  procedure DadosAutXML(aDs : TspdMDFeDataSetX);
   begin
    MDFeDataSet.IncludePart('autXML');
    MDFeDataSet.SetFieldAsString('CNPJ_145', '66148370000189');
    MDFeDataSet.SavePart('autXML');
   end;

  procedure DadosLacres(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.IncludePart('lacres');
            MDFeDataSet.SetFieldAsString('nLacre_77', '123');
            MDFeDataSet.SavePart('lacres');
  end;

  procedure DadosAdicionais(aDs : TspdMDFeDataSetX);
  begin
            MDFeDataSet.SetFieldAsString('infAdFisco_79', '');
            MDFeDataSet.SetFieldAsString('infCpl_80', 'INFORMA��ES COMPLEMENTARES &amp; &lt; &gt; &quot; &#39;|INFORMACOES COMPLEMENTARES');
  end;

begin
  edtRecibo.clear;
  edtProtocolo.clear;

  MDFeDataSet.MappingFileName := MDFe.DiretorioEsquemas + '3.00\Mapping.txt';
  MDFeDataSet.ConfigSection := 'XMLENVIO';

  MDFeDataSet.CreateDatasets;

  MDFeDataSet.EmptyDataSets;
  MDFeDataSet.Versao := '3.00';
  MDFeDataSet.IdLote := '1';

  MDFeDataSet.Include;
  DadosDoMDFe(MDFeDataSet);
  DadosDoEmitente(MDFeDataSet);
  DadosDoModal(MDFeDataSet);
  DadosDescarga(MDFeDataSet);
  DadosTotalizadores(MDFeDataSet);
  DadosAutXML(MDFeDataSet);
  DadosLacres(MDFeDataSet);
  DadosAdicionais(MDFeDataSet);
  MDFeDataSet.Save;

  mOutput.Text := MDFeDataSet.LoteMdfe;
  edtChave.Text := GetValueChave(MDFeDataSet.LoteMdfe);
end;

// 5.1. Assinar MDFe
procedure TFrmExemplo.btnAssinarClick(Sender: TObject);
var
  _returnValue: string;
begin
  if mOutput.Text = '' then
  begin
    ShowMessage('Favor preencher o memo com o XML a ser assinado.');
    Exit;
  end;

  _returnValue := mOutput.Text;
  _returnValue := MDFe.AssinarMDFe(_returnValue);
  UpdateOutput(_returnValue);
  UpdateStatus('MDFe Assinado.');
end;

// 5.2. Prever DAMDFE
procedure TFrmExemplo.btnPreverDamdfeClick(Sender: TObject);
var
  _xml : WideString;
begin
  if (GetValueTag('enviMDFe', mOutput.Lines.Text) <> '') or
    (GetValueTag('infEvento', mOutput.Lines.Text) <> '') then
  begin
    CheckConfig(false);
    MDFe.VisualizarMDFe(mOutput.Lines.Text );
  end
  else
  begin
    if MessageDlg('Deseja informar um XML do Destinat�rio?',
      mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
    begin
      opnDlgXML.InitialDir := MDFe.DiretorioXmlDestinatario;
      if opnDlgXML.Execute then
      begin
        _xml := fUtils.LoadFromFile(opnDlgXML.FileName);
        MDFe.VisualizarMDFe( _xml );
      end;
    end;
  end;
end;

// 6.Enviar MDFe
procedure TFrmExemplo.btnEnviarMDFeClick(Sender: TObject);
var
  _returnValue: string;
begin
  CheckConfig(False);
  FXMLDestinatarioFileName := '';
  try
    (Sender as TWinControl).Enabled := False;
    try
        UpdateStatus('Enviando MDFe...');
        _returnValue := mOutput.Text;
        _returnValue := MDFe.EnviarMDFe('1', _returnValue);
        UpdateOutput(_returnValue);
        edtRecibo.Text := spdMDFeUtils.GetValueTag('nRec', _returnValue);
        UpdateStatus('Envio Ok.');
    finally
      (Sender as TWinControl).Enabled := true;
    end;
  except
    UpdateStatus(' falha', False, true);
    raise ;
  end;
end;

// 7. Consultar Recibo MDFe
procedure TFrmExemplo.btnConsultarReciboMDFeClick(Sender: TObject);
var
  _returnValue: string;
begin
  CheckConfig;
  try
    (Sender as TWinControl).Enabled := False;
    try
      if edtRecibo.Text <> '' then
      begin
        UpdateStatus('Consultando recibo...');
        _returnValue := MDFe.ConsultarReciboMDFe(edtRecibo.Text);
        UpdateOutput(_returnValue);
        edtProtocolo.Text := spdMDFeUtils.GetValueTag('nProt', _returnValue);
        UpdateStatus('Consulta ok...');
      end
      else
      begin
        ShowMessage('Favor informar um recibo antes de prosseguir');
        edtRecibo.SetFocus;
      end;
    finally
      (Sender as TWinControl).Enabled := true;
    end;
  except
    UpdateStatus(' falha', False, true);
    raise ;
  end;
end;

// 8.Consultar MDFe
procedure TFrmExemplo.btnConsultarMDFeClick(Sender: TObject);
var
  _returnValue: string;
begin
  CheckConfig;
  try
    (Sender as TWinControl).Enabled := False;
    try
      if edtChave.Text <> '' then
      begin
        UpdateStatus('Consultando...');
        _returnValue := MDFe.ConsultarMDFe(edtChave.Text);
        edtProtocolo.Text := spdMDFeUtils.GetValueTag('nProt', _returnValue);
        UpdateOutput(_returnValue);
        UpdateStatus('Consulta ok...');
      end
      else
      begin
        ShowMessage('Favor informar uma chave antes de prosseguir');
        edtChave.SetFocus;
      end;
    finally
      (Sender as TWinControl).Enabled := true;
    end;
  except
    UpdateStatus(' falha', False, true);
    raise ;
  end;
end;

// 9.Encerrar MDFe
procedure TFrmExemplo.btnEncerrarMDFeClick(Sender: TObject);
var
  _returnValue, _Chave, _Protocolo, _CodUFEnc, _CodMunEnc, _DataEnc, _DataHora, _Fuso : string;
  _frmEncerramentoMDFe : TfrmEncerramentoMDFe;
begin

  CheckConfig;
  _frmEncerramentoMDFe := TfrmEncerramentoMDFe.Create(Self);
  _frmEncerramentoMDFe.edtChave.Text := edtChave.Text;
  _frmEncerramentoMDFe.edtProtocolo.Text := edtProtocolo.Text;
  _frmEncerramentoMDFe.edtDataEncerramento.Text := FormatDateTime('YYYY-MM-DD',Now);
  _frmEncerramentoMDFe.edtDHEventoEncerramento.Text := FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now);
  _frmEncerramentoMDFe.edtFusoEncerramento.Text := GetTimeZone;

  _frmEncerramentoMDFe.ShowModal;
  try
    if _frmEncerramentoMDFe.ModalResult = mrOk then
    begin
      (Sender as TWinControl).Enabled := False;
      UpdateStatus('Encerrando MDFe...');
      try
        try
          _Chave := _frmEncerramentoMDFe.edtChave.Text;
          _Protocolo := _frmEncerramentoMDFe.edtProtocolo.Text;
          _CodUFEnc  := _frmEncerramentoMDFe.edtUFEnc.Text;
          _CodMunEnc := _frmEncerramentoMDFe.edtMunEnc.Text;
          _DataEnc   := _frmEncerramentoMDFe.edtDataEncerramento.Text;
          _DataHora  := _frmEncerramentoMDFe.edtDHEventoEncerramento.Text;
          _Fuso      := _frmEncerramentoMDFe.edtFusoEncerramento.Text;

          begin
            _returnValue := MDFe.EncerrarMDFe(_Chave, _Protocolo, _DataHora, '1', _DataEnc, _CodUFEnc, _CodMunEnc, _Fuso);
          end;

          UpdateOutput(_returnValue);

          UpdateStatus('Encerramento ok.');
        except
          UpdateStatus(' falha', False, true);
          raise ;
        end;
      finally
        (Sender as TWinControl).Enabled := true;
      end;
    end
    else

  finally
    _frmEncerramentoMDFe.Free;
  end;
end;

// 10.Cancelar MDFe
procedure TFrmExemplo.btnCancelarMDFeClick(Sender: TObject);
var
  _returnValue, _Chave, _Protocolo, _Justificativa, _DataHora: string;
  _frmCancelamentoMDFe : TfrmCancelamentoMDFe;
begin

  CheckConfig;
  _frmCancelamentoMDFe := TfrmCancelamentoMDFe.Create(Self);
  _frmCancelamentoMDFe.edtChave.Text := edtChave.Text;
  _frmCancelamentoMDFe.edtProtocolo.Text := edtProtocolo.Text;
  _frmCancelamentoMDFe.ShowModal;
  try
    if _frmCancelamentoMDFe.ModalResult = mrOk then
    begin
      (Sender as TWinControl).Enabled := False;
      UpdateStatus('Cancelando CTe...');
      try
        try
          _Chave := _frmCancelamentoMDFe.edtChave.Text;
          _Protocolo := _frmCancelamentoMDFe.edtProtocolo.Text;
          _Justificativa := _frmCancelamentoMDFe.mJustificativa.Text;

          begin
            _DataHora := InputBox('Data e Hora do Evento', 'Digite a Data e Hora do Evento: ', FormatDateTime('YYYY-MM-DD"T"HH:MM:SS',Now) + GetTimeZone);
            _returnValue := MDFe.CancelarMDFe(_Chave, _Protocolo, _Justificativa, _DataHora, '1', GetTimeZone);
          end;

          UpdateOutput(_returnValue);

          UpdateStatus('Cancelamento ok.');
        except
          UpdateStatus(' falha', False, true);
          raise ;
        end;
      finally
        (Sender as TWinControl).Enabled := true;
      end;
    end
    else

  finally
    _frmCancelamentoMDFe.Free;
  end;
end;

// 11.Visualizar
procedure TFrmExemplo.btnVisualizarClick(Sender: TObject);
var
  _XML : WideString;
begin
  try
    CheckConfig(false);
    _XML := getXMLDestinatario;
    MDFe.VisualizarMDFe(_XML);
  except
    on e: Exception do
      raise EspdMDFeException.Create(e.Message);
  end;
end;

// 12.Exportar para PDF
procedure TFrmExemplo.btnExportarPDFClick(Sender: TObject);
var
  _XML: String;
begin
    CheckConfig(false);
      if edtChave.Text <> '' then
        svDlgExportar.FileName := edtChave.Text + '.pdf';
      if svDlgExportar.Execute then
      begin
        _XML := getXMLDestinatario;
        MDFe.ExportarMDFe(_XML, '', fePDF, svDlgExportar.FileName);
        UpdateStatus('Gera��o de PDF realizada com sucesso em!');
      end;
end;

initialization

try
  Application.Icon.LoadFromFile('mdfe.ico');
except

end;

finalization

end.
