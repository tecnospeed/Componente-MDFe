object FrmExemplo: TFrmExemplo
  Left = 568
  Top = 120
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Demonstra'#231#227'o do Componente MDFe'
  ClientHeight = 750
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 750
    Align = alClient
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 657
    Height = 313
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Envio'
      object grpOptions: TGroupBox
        Left = 223
        Top = 9
        Width = 426
        Height = 276
        Align = alCustom
        Caption = ' Opera'#231#245'es '
        TabOrder = 0
        object Label1: TLabel
          Left = 5
          Top = 18
          Width = 56
          Height = 13
          Caption = 'Certificado:'
        end
        object btnConfigIni: TBitBtn
          Left = 8
          Top = 110
          Width = 200
          Height = 25
          Caption = '1.2. Configurar arquivo .ini'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnConfigIniClick
        end
        object btnConsultarReciboMDFe: TBitBtn
          Left = 218
          Top = 163
          Width = 200
          Height = 25
          Caption = '7. Consultar Recibo MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnConsultarReciboMDFeClick
        end
        object btnCancelarMDFe: TBitBtn
          Left = 109
          Top = 246
          Width = 200
          Height = 25
          Caption = '10. Cancelar MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnCancelarMDFeClick
        end
        object btnEnviarMDFe: TBitBtn
          Left = 218
          Top = 136
          Width = 200
          Height = 25
          Caption = '6. Enviar MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnEnviarMDFeClick
        end
        object btnConsultarMDFe: TBitBtn
          Left = 218
          Top = 190
          Width = 200
          Height = 25
          Hint = 'Consulta Avulsa'
          Caption = '8. Consultar MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = btnConsultarMDFeClick
        end
        object btnGerarXMLViaDataSet: TButton
          Left = 8
          Top = 218
          Width = 200
          Height = 25
          Caption = '4.2 Gerar XML via DataSet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnGerarXMLViaDataSetClick
        end
        object btnGerarXMLViaTx2: TButton
          Left = 8
          Top = 190
          Width = 200
          Height = 25
          Caption = '4.1. Gerar XML via Tx2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnGerarXMLViaTx2Click
        end
        object btnVerificarStatus: TBitBtn
          Left = 8
          Top = 164
          Width = 200
          Height = 25
          Caption = '3. Verificar Status do Servi'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnVerificarStatusClick
        end
        object btnLoadConfig: TButton
          Left = 8
          Top = 137
          Width = 200
          Height = 25
          Caption = '2. LoadConfig (arquivo .ini)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnLoadConfigClick
        end
        object btnConfiguraSH: TBitBtn
          Left = 8
          Top = 83
          Width = 200
          Height = 25
          Caption = '1.1. Configura Software House'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = btnConfiguraSHClick
        end
        object cbListaCertificados: TComboBox
          Left = 63
          Top = 15
          Width = 358
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 10
          Text = 'Selecione o Certificado'
        end
        object btnEncerrarMDFe: TBitBtn
          Left = 218
          Top = 218
          Width = 200
          Height = 25
          Caption = '9. Encerrar MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = btnEncerrarMDFeClick
        end
        object btnAssinar: TButton
          Left = 218
          Top = 83
          Width = 200
          Height = 25
          Caption = '5.1 Assinar MDFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = btnAssinarClick
        end
        object btnPreverDamdfe: TButton
          Left = 218
          Top = 109
          Width = 200
          Height = 25
          Caption = '5.2 Prever DAMDFE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnClick = btnPreverDamdfeClick
        end
        object edtCNPJSoftwareHouse: TLabeledEdit
          Left = 8
          Top = 56
          Width = 200
          Height = 21
          Color = cl3DLight
          EditLabel.Width = 126
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ Software House'
          EditLabel.Font.Charset = ANSI_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 14
        end
        object edtTokenSoftwareHouse: TLabeledEdit
          Left = 218
          Top = 56
          Width = 200
          Height = 21
          Color = cl3DLight
          EditLabel.Width = 131
          EditLabel.Height = 13
          EditLabel.Caption = 'Token Software House'
          EditLabel.Font.Charset = ANSI_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          TabOrder = 15
        end
      end
      object gbConfig: TGroupBox
        Left = 5
        Top = 9
        Width = 213
        Height = 276
        Align = alCustom
        Caption = ' Configura'#231#245'es '
        TabOrder = 1
        object lblInfo: TLabel
          Left = 8
          Top = 234
          Width = 200
          Height = 13
          Caption = 'Siga as opera'#231#245'es na ordem assinalada.'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edtCNPJ: TLabeledEdit
          Left = 7
          Top = 82
          Width = 200
          Height = 21
          TabStop = False
          Color = cl3DLight
          EditLabel.Width = 32
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          MaxLength = 14
          ReadOnly = True
          TabOrder = 1
        end
        object edtProtocolo: TLabeledEdit
          Left = 7
          Top = 195
          Width = 200
          Height = 21
          TabStop = False
          EditLabel.Width = 75
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'N'#186' do Protocolo'
          EditLabel.ParentBiDiMode = False
          TabOrder = 4
        end
        object edtUF: TLabeledEdit
          Left = 7
          Top = 39
          Width = 57
          Height = 21
          TabStop = False
          Color = cl3DLight
          EditLabel.Width = 17
          EditLabel.Height = 13
          EditLabel.Caption = 'UF'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edtRecibo: TLabeledEdit
          Left = 7
          Top = 158
          Width = 200
          Height = 21
          TabStop = False
          EditLabel.Width = 62
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'N'#186' do Recibo'
          EditLabel.ParentBiDiMode = False
          TabOrder = 3
        end
        object edtChave: TLabeledEdit
          Left = 7
          Top = 121
          Width = 200
          Height = 21
          TabStop = False
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.BiDiMode = bdLeftToRight
          EditLabel.Caption = 'N'#186' da Chave'
          EditLabel.ParentBiDiMode = False
          TabOrder = 2
        end
        object edtAmbiente: TLabeledEdit
          Left = 77
          Top = 39
          Width = 129
          Height = 21
          TabStop = False
          Color = cl3DLight
          EditLabel.Width = 53
          EditLabel.Height = 13
          EditLabel.Caption = 'Ambiente'
          EditLabel.Font.Charset = DEFAULT_CHARSET
          EditLabel.Font.Color = clWindowText
          EditLabel.Font.Height = -11
          EditLabel.Font.Name = 'MS Sans Serif'
          EditLabel.Font.Style = [fsBold]
          EditLabel.ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Impress'#227'o'
      ImageIndex = 1
      object grpImpressao: TGroupBox
        Left = 1
        Top = 10
        Width = 214
        Height = 88
        Caption = ' Impress'#227'o do DAMDFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object btnExportarPDF: TBitBtn
          Left = 5
          Top = 46
          Width = 200
          Height = 29
          Caption = '12. Exportar para PDF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnExportarPDFClick
        end
        object btnVisualizar: TBitBtn
          Left = 5
          Top = 16
          Width = 200
          Height = 28
          Caption = '11. Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnVisualizarClick
        end
      end
    end
  end
  object pgCtrlMessages: TPageControl
    Left = 9
    Top = 320
    Width = 656
    Height = 410
    ActivePage = tbSheetMemo
    Align = alCustom
    TabOrder = 2
    TabStop = False
    object tbSheetMemo: TTabSheet
      Caption = 'XML'
      object lblHidden: TLabel
        Left = 0
        Top = 317
        Width = 648
        Height = 32
        Align = alBottom
        Alignment = taCenter
        Caption = 'Antes de come'#231'ar, configure o arquivo mdfeConfig.ini'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object mStatus: TMemo
        Left = 0
        Top = 349
        Width = 648
        Height = 33
        TabStop = False
        Align = alBottom
        TabOrder = 1
      end
      object mOutput: TMemo
        Left = 0
        Top = 0
        Width = 648
        Height = 317
        TabStop = False
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object OpnDlgTx2: TOpenDialog
    Left = 1153
    Top = 14
  end
  object OpnDlgXML: TOpenDialog
    Left = 1193
    Top = 14
  end
  object svDlgExportar: TSaveDialog
    Left = 1233
    Top = 14
  end
end
