object frmEncerramentoMDFe: TfrmEncerramentoMDFe
  Left = 508
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Encerramento de MDFe'
  ClientHeight = 341
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pgcDados: TPageControl
    Left = 0
    Top = 0
    Width = 294
    Height = 305
    ActivePage = tbsDadosCancelamento
    Align = alTop
    TabOrder = 0
    object tbsDadosCancelamento: TTabSheet
      Caption = 'Dados para Encerramento do MDFe'
      ImageIndex = 2
      object Label2: TLabel
        Left = 3
        Top = 257
        Width = 107
        Height = 13
        Caption = '* Campos obrigat'#243'rios'
      end
      object edtChave: TLabeledEdit
        Left = 3
        Top = 24
        Width = 273
        Height = 21
        EditLabel.Width = 55
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#186' Chave *'
        TabOrder = 0
      end
      object edtProtocolo: TLabeledEdit
        Left = 3
        Top = 64
        Width = 273
        Height = 21
        EditLabel.Width = 69
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#186' Protocolo *'
        TabOrder = 1
      end
      object edtUFEnc: TLabeledEdit
        Left = 3
        Top = 104
        Width = 273
        Height = 21
        EditLabel.Width = 158
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo da UF de Encerramento *'
        TabOrder = 2
      end
      object edtMunEnc: TLabeledEdit
        Left = 3
        Top = 145
        Width = 273
        Height = 21
        EditLabel.Width = 188
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo do Munic'#237'pio de Encerramento *'
        TabOrder = 3
      end
      object edtDHEventoEncerramento: TLabeledEdit
        Left = 3
        Top = 230
        Width = 166
        Height = 21
        EditLabel.Width = 119
        EditLabel.Height = 13
        EditLabel.Caption = 'Data e Hora do Evento *'
        ReadOnly = True
        TabOrder = 4
      end
      object edtDataEncerramento: TLabeledEdit
        Left = 3
        Top = 188
        Width = 273
        Height = 21
        EditLabel.Width = 117
        EditLabel.Height = 13
        EditLabel.Caption = 'Data do Encerramento *'
        TabOrder = 5
      end
      object edtFusoEncerramento: TLabeledEdit
        Left = 177
        Top = 230
        Width = 99
        Height = 21
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Fuso *'
        TabOrder = 6
      end
    end
  end
  object btnOk: TButton
    Left = 124
    Top = 311
    Width = 75
    Height = 25
    Caption = 'Ok'
    ModalResult = 1
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 205
    Top = 311
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
end
