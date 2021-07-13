VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FExemplo 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "TecnoSpeed MDFe - Demonstração de Exemplo em VB"
   ClientHeight    =   11610
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10815
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   11610
   ScaleWidth      =   10815
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog 
      Left            =   10080
      Top             =   10320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btnExportar 
      Appearance      =   0  'Flat
      Caption         =   "12. Exportar para PDF"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7560
      TabIndex        =   36
      Top             =   4200
      Width           =   2655
   End
   Begin VB.CommandButton btnVisualizar 
      Appearance      =   0  'Flat
      Caption         =   "11. Visualizar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7560
      TabIndex        =   35
      Top             =   3720
      Width           =   2655
   End
   Begin VB.CommandButton btnCancelar 
      Appearance      =   0  'Flat
      Caption         =   "10. Cancelar MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   34
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CommandButton btnEncerrar 
      Appearance      =   0  'Flat
      Caption         =   "9. Encerrar MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   33
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CommandButton btnConsultarChave 
      Appearance      =   0  'Flat
      Caption         =   "8. Consultar MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   32
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CommandButton btnConsultarRecibo 
      Appearance      =   0  'Flat
      Caption         =   "7. Consultar Recibo MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   31
      Top             =   1440
      Width           =   2895
   End
   Begin VB.CommandButton btnEnviar 
      Appearance      =   0  'Flat
      Caption         =   "6. Enviar MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7440
      TabIndex        =   30
      Top             =   960
      Width           =   2895
   End
   Begin VB.CommandButton btnPrever 
      Appearance      =   0  'Flat
      Caption         =   "5.2 Prever DAMDFE"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   29
      Top             =   4320
      Width           =   2895
   End
   Begin VB.CommandButton btnAssinar 
      Appearance      =   0  'Flat
      Caption         =   "5.1 Assinar MDFe"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   28
      Top             =   3840
      Width           =   2895
   End
   Begin VB.CommandButton btnGerarXmlDataset 
      Appearance      =   0  'Flat
      Caption         =   "4.2 Gerar XML via DataSet"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   27
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CommandButton btnGerarXmlTx2 
      Appearance      =   0  'Flat
      Caption         =   "4.1. Gerar XML via Tx2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   26
      Top             =   2880
      Width           =   2895
   End
   Begin VB.CommandButton btnVerificaStatus 
      Appearance      =   0  'Flat
      Caption         =   "3. Verificar Status do Serviço"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   25
      Top             =   2400
      Width           =   2895
   End
   Begin VB.CommandButton btnLoadConfig 
      Appearance      =   0  'Flat
      Caption         =   "2. LoadConfig (arquivo .ini)"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   24
      Top             =   1920
      Width           =   2895
   End
   Begin VB.CommandButton btnConfigurarArquivoINI 
      Appearance      =   0  'Flat
      Caption         =   "1.2. Configurar arquivo .ini"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4320
      TabIndex        =   23
      Top             =   1440
      Width           =   2895
   End
   Begin VB.TextBox txtProtocolo 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   240
      TabIndex        =   21
      Top             =   4080
      Width           =   3375
   End
   Begin VB.TextBox txtRecibo 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   240
      TabIndex        =   20
      Top             =   3360
      Width           =   3375
   End
   Begin VB.TextBox txtChave 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   240
      TabIndex        =   19
      Top             =   2640
      Width           =   3375
   End
   Begin RichTextLib.RichTextBox mmXML 
      Height          =   5175
      Left            =   240
      TabIndex        =   4
      Top             =   5760
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   9128
      _Version        =   393217
      BackColor       =   -2147483634
      Enabled         =   -1  'True
      ScrollBars      =   2
      Appearance      =   0
      TextRTF         =   $"FExemplo.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.TabStrip tsXML 
      Height          =   5775
      Left            =   120
      TabIndex        =   3
      Top             =   5280
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   10186
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            Caption         =   "XML"
            ImageVarType    =   2
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Frame fOperacoes 
      Caption         =   "Operações"
      Height          =   5055
      Left            =   3960
      TabIndex        =   1
      Top             =   120
      Width           =   6735
      Begin VB.CommandButton btnConfigurarSH 
         Appearance      =   0  'Flat
         Caption         =   "1.1. Configura Software House"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   22
         Top             =   840
         Width           =   2895
      End
      Begin VB.ComboBox cbCertificados 
         Height          =   315
         Left            =   1200
         TabIndex        =   14
         Text            =   "Selecione o Certificado"
         Top             =   300
         Width           =   5175
      End
      Begin VB.Frame fImpressao 
         Caption         =   "Impressão do DAMDFE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1335
         Left            =   3480
         TabIndex        =   2
         Top             =   3240
         Width           =   2895
      End
      Begin VB.Label Label9 
         Caption         =   "Certificado: "
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   360
         Width           =   855
      End
      Begin VB.Label Label8 
         Caption         =   "Siga as operações na ordem assinalada."
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   360
         TabIndex        =   12
         Top             =   4680
         Width           =   3495
      End
   End
   Begin VB.Frame fConfig 
      Caption         =   "Configurações"
      Height          =   5055
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3615
      Begin VB.TextBox txtCNPJ 
         Appearance      =   0  'Flat
         BackColor       =   &H80000004&
         Height          =   285
         Left            =   120
         TabIndex        =   18
         Top             =   1800
         Width           =   3375
      End
      Begin VB.TextBox txtCNPJSH 
         Appearance      =   0  'Flat
         BackColor       =   &H80000004&
         Height          =   285
         Left            =   120
         TabIndex        =   17
         Top             =   1080
         Width           =   3375
      End
      Begin VB.TextBox txtAmb 
         Appearance      =   0  'Flat
         BackColor       =   &H80000004&
         Height          =   285
         Left            =   1200
         TabIndex        =   16
         Top             =   480
         Width           =   2295
      End
      Begin VB.TextBox txtUF 
         Appearance      =   0  'Flat
         BackColor       =   &H80000004&
         Height          =   285
         Left            =   120
         TabIndex        =   15
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label7 
         Caption         =   "Nº do Protocolo"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   3720
         Width           =   1695
      End
      Begin VB.Label Label6 
         Caption         =   "Nº do Recibo"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   3000
         Width           =   1695
      End
      Begin VB.Label Label5 
         Caption         =   "Nº da Chave"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   2280
         Width           =   1695
      End
      Begin VB.Label Label4 
         Caption         =   "CNPJ (Apenas números) *"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1560
         Width           =   2655
      End
      Begin VB.Label lbCNPJSH 
         Caption         =   "CNPJ Software House *"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   840
         Width           =   2655
      End
      Begin VB.Label Label2 
         Caption         =   "Ambiente"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1200
         TabIndex        =   6
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "UF"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   495
      End
   End
   Begin VB.Label lblStatus 
      BackColor       =   &H8000000E&
      BorderStyle     =   1  'Fixed Single
      Height          =   495
      Left            =   120
      TabIndex        =   37
      Top             =   11040
      Width           =   10575
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "FExemplo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Declarado Objeto pertencente a Classe que faz interação com servidores da Receita'
Dim MDFe As MDFeX.spdMDFeX
Dim MDFeDataSet As spdMdfeDatasetX.spdMdfeDatasetX

Dim ArqIni As String
Dim CertificadoSelecionado As String

'******************************************************************************************************
'
'          Declaração de funções externas
'
'******************************************************************************************************
'Função para ler arquivos INI usando API window
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long

'Função para gravar arquivos INI usando API windows
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long

'Função para configurar o diretório atual
Private Declare Function SetCurrentDirectory Lib "kernel32" _
() 'Alias "SetCurrentDirectoryA" (ByVal lpPathName As String) As Long

Option Explicit

'Função auxiliar para pegar o fuso
Private Const TIME_ZONE_ID_DAYLIGHT As Long = 2

'Função auxiliar para pegar o fuso
Private Type SYSTEMTIME
   wYear         As Integer
   wMonth        As Integer
   wDayOfWeek    As Integer
   wDay          As Integer
   wHour         As Integer
   wMinute       As Integer
   wSecond       As Integer
   wMilliseconds As Integer
End Type
'Função auxiliar para pegar o fuso
Private Type TIME_ZONE_INFORMATION
   Bias As Long
   StandardName(0 To 63) As Byte  'unicode (0-based)
   StandardDate As SYSTEMTIME
   StandardBias As Long
   DaylightName(0 To 63) As Byte  'unicode (0-based)
   DaylightDate As SYSTEMTIME
   DaylightBias As Long
End Type
'Função auxiliar para pegar o fuso
Private Declare Function GetTimeZoneInformation Lib "kernel32.dll" (lpTimeZoneInformation As TIME_ZONE_INFORMATION) As Long

'Função para pegar o fuso
Private Function GetCurrentTimeBias() As String

   Dim tzi As TIME_ZONE_INFORMATION
   Dim dwBias As Long
   Dim tmp As String

   Select Case GetTimeZoneInformation(tzi)
   Case TIME_ZONE_ID_DAYLIGHT
      dwBias = tzi.Bias + tzi.DaylightBias
   Case Else
      dwBias = tzi.Bias + tzi.StandardBias
   End Select

   tmp = "-0" & CStr(dwBias \ 60) & ":00"

   GetCurrentTimeBias = tmp
   
End Function

Private Sub Form_Initialize()

On Error GoTo TrataErro
'Instancia o Objeto responsável pela interação com servidores da Receita'
Set MDFe = New MDFeX.spdMDFeX
'Instancia o Objeto responsável pela geração do DataSet
Set MDFeDataSet = New spdMdfeDatasetX.spdMdfeDatasetX

MDFe.ConfigurarSoftwareHouse "08187168000160", ""
  'Utiliza Método do Componente para Listar Certificados instalado no SO
  Dim i As Integer
  Dim vetor As Variant

  vetor = Split(MDFe.ListarCertificados("|"), "|")
  cbCertificados.Clear
  For i = LBound(vetor) To UBound(vetor) - 1
      cbCertificados.AddItem vetor(i)
  Next
  
  'Arquivo INI a ser manipulado com parametrizações
  ArqIni = App.Path + "\mdfeConfig.ini"
  MDFe.DiretorioXmlDestinatario = App.Path + "\XmlDestinatario\"

TrataErro:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If

End Sub
'1.1. Configurar o CNPJ da Software House
Private Sub btnConfigurarSH_Click()

On Error GoTo TrataErroSH

MDFe.ConfigurarSoftwareHouse txtCNPJSH.Text, ""
lbCNPJSH.Caption = "(OK) CNPJ Software House"
lblStatus.Caption = "CNPJ da Software House Configurado"

TrataErroSH:
    If Err.Description <> "" Then
    lbCNPJSH.Caption = "CNPJ Software House *"
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'1.2. Abrir arquivo .ini de configurações do MDFe
Private Sub btnConfigurarArquivoINI_Click()

On Error GoTo TrataErroINI

    Dim Rs As String
    Rs = cbCertificados.Text
    If Rs <> "" Then
    write_ini "MDFe", "NomeCertificado", Rs
    Shell "C:\Windows\System32\notepad.exe " + App.Path + "\mdfeConfig.ini", vbNormalFocus
    Else
    AtualizaStatusNaTela ("Favor selecionar um certificado")
    End If

TrataErroINI:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'2. Load Config
Private Sub btnLoadConfig_Click()
On Error GoTo TrataErroLoadConfig

    MDFe.LoadConfig ArqIni
    txtUF.Text = MDFe.UF
    txtCNPJ.Text = MDFe.CNPJ
    cbCertificados.Text = MDFe.NomeCertificado
    
    If MDFe.Ambiente = akHomologacao Then
    txtAmb.Text = "2 - Homologação"
    Else
    txtAmb.Text = "1 - Produção"
    End If
        
    AtualizaStatusNaTela "Configurações carregadas via ini."

TrataErroLoadConfig:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'3.Verificar Status do Serviço
Private Sub btnVerificaStatus_Click()
On Error GoTo TrataErro
    CheckConfig (False)
    mmXML.Text = MDFe.StatusDoServicoMDFe()
    AtualizaStatusNaTela ("Status do Serviço: OK")
TrataErro:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'4.1.Gerar XML via TX2
Private Sub btnGerarXmlTx2_Click()
    On Error GoTo TratarErroTx2
    CheckConfig (True)
    Dim arquivo As String
   arquivo = FileOpen("TX2 (*.tx2) | *.tx2") 'Carrega o arquivo .tx2
   Dim fso As New FileSystemObject
   If arquivo <> "" Then
    ConfiguraMdfeDataSet
    MDFeDataSet.LoadFromTx2 (arquivo)
    mmXML.Text = MDFeDataSet.LoteMdfe()
    txtChave.Text = Mid((MDFeDataSet.GetCampo("Id_3")), 4, 44)
    AtualizaStatusNaTela ("Gerar XML por TX2: OK")
   End If

TratarErroTx2:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'4.2.Gerar XML via DataSet
Private Sub btnGerarXmlDataset_Click()
'On Error GoTo TrataErroXMLDataSet
Dim XML As String
            CheckConfig (True)
            ConfiguraMdfeDataSet
            MDFeDataSet.Include
            DadosDoMDFe
            DadosDoEmitente
            DadosDoModal
            DadosDescarga
            DadosTotalizadores
            DadosAutXML
            DadosLacres
            DadosAdicionais
            MDFeDataSet.save
            mmXML.Text = MDFeDataSet.LoteMdfe()
            txtChave.Text = Mid((MDFeDataSet.GetFieldAsString("Id_3")), 5, 44)
            AtualizaStatusNaTela ("Gerar XML por DataSet: OK")
            
'TrataErroXMLDataSet:
'    If Err.Description <> "" Then
'    lblStatus = Err.Description
'    MsgBox Err.Description
'    MDFeDataSet.Cancel
'End If
 
End Sub
'5.1 Assinar XML
Private Sub btnAssinar_Click()
On Error GoTo TrataErroAssinatura
    
    mmXML.Text = MDFe.AssinarMDFe(mmXML.Text)
    lblStatus = "XML Assinado"
    
TrataErroAssinatura:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'5.2 Prever DAMDFE MDFe
Private Sub btnPrever_Click()

On Error GoTo TrataErroPrever
CheckConfig (False)

Dim XML As String
XML = mmXML.Text
If Trim(XML) <> "" Then
MDFe.VisualizarMDFe mmXML.Text, ""
Else
lblStatus = "Por gentileza informe o XML Assinado no memo."
End If

TrataErroPrever:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'6. Enviar MDFe
Private Sub btnEnviar_Click()

On Error GoTo TrataErroEnvio

CheckConfig (False)

mmXML.Text = MDFe.EnviarMDFe("1", mmXML.Text)

' Obtém o numero do recibo
txtRecibo.Text = Mid(mmXML.Text, 217, 15)

AtualizaStatusNaTela ("Enviar MDFe: OK")

TrataErroEnvio:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'7. Consultar Recibo MDFe
Private Sub btnConsultarRecibo_Click()

On Error GoTo TratarErroConsultaRecibo
CheckConfig (True)
mmXML.Text = MDFe.ConsultarReciboMDFe(txtRecibo.Text)
txtProtocolo.Text = Mid(mmXML.Text, 444, 15)

AtualizaStatusNaTela ("Consultar Recibo MDFe: OK")

TratarErroConsultaRecibo:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'8.Consultar MDFe
Private Sub btnConsultarChave_Click()
On Error GoTo TratarErroConsultaCTe
CheckConfig (True)
mmXML.Text = MDFe.ConsultarMDFe(txtChave.Text)
txtProtocolo.Text = Mid(mmXML.Text, 444, 15)

AtualizaStatusNaTela ("Consultar Chave MDFe: OK")

TratarErroConsultaCTe:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If
 
End Sub
'9. Encerrar MDFe
Private Sub btnEncerrar_Click()
On Error GoTo TratarErroEncerramento
  Load frmEncerramentoMDFe
  
  frmEncerramentoMDFe.txtChave.Text = txtChave.Text
  frmEncerramentoMDFe.txtProtocolo.Text = txtProtocolo.Text
  frmEncerramentoMDFe.txtDataEnc.Text = Format(Now, "yyyy-mm-dd")
  frmEncerramentoMDFe.txtDataHoraEve.Text = Format(Now, "yyyy-mm-ddThh:mm:ss")
  frmEncerramentoMDFe.txtFusoEnc.Text = GetCurrentTimeBias
  
  frmEncerramentoMDFe.Show vbModal
    Dim Chave As String
    Dim Protocolo As String
    
    Chave = frmEncerramentoMDFe.txtChave.Text
    Protocolo = frmEncerramentoMDFe.txtProtocolo.Text
    
    If Chave <> "" And Protocolo <> "" And frmEncerramentoMDFe.txtCodUfEnc.Text <> "" And frmEncerramentoMDFe.txtCodMunEnc.Text <> "" And frmEncerramentoMDFe.txtDataEnc.Text <> "" And frmEncerramentoMDFe.txtDataHoraEve.Text <> "" And frmEncerramentoMDFe.txtFusoEnc.Text <> "" Then
    
    mmXML.Text = MDFe.EncerrarMDFe(Chave, Protocolo, frmEncerramentoMDFe.txtDataHoraEve.Text, "1", frmEncerramentoMDFe.txtDataEnc.Text, frmEncerramentoMDFe.txtCodUfEnc.Text, frmEncerramentoMDFe.txtCodMunEnc.Text, frmEncerramentoMDFe.txtFusoEnc.Text)
        
    AtualizaStatusNaTela ("Encerramento MDFe: OK")
    
    Else
    MsgBox "É necessário preencher todos os dados para efetuar o encerramento!", vbOKOnly
    End If
    
    Unload frmEncerramentoMDFe
    
TratarErroEncerramento:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'10. Cancelar MDFe
Private Sub btnCancelar_Click()
On Error GoTo TratarErroCancela
  Load frmCancelamentoMDFe
  
  frmCancelamentoMDFe.txtChaveCan.Text = txtChave.Text
  frmCancelamentoMDFe.txtProtocoloCan.Text = txtProtocolo.Text
  
  frmCancelamentoMDFe.Show vbModal
    Dim Chave As String
    Dim Protocolo As String
    Dim Justificativa As String
    Dim Retorno As String
    
    Chave = frmCancelamentoMDFe.txtChaveCan.Text
    Protocolo = frmCancelamentoMDFe.txtProtocoloCan.Text
    Justificativa = frmCancelamentoMDFe.mmJust.Text
    
    If Chave <> "" And Protocolo <> "" And Justificativa <> "" Then
    
    mmXML.Text = MDFe.CancelarMDFe(Chave, Protocolo, Justificativa, Format(Now, "yyyy-mm-ddThh:mm:ss"), "1", GetCurrentTimeBias)
    
    AtualizaStatusNaTela ("Cancelamento MDFe: OK")
    Else
    MsgBox "É necessário preencher todos os dados para efetuar o cancelamento!", vbOKOnly
    End If
    
    Unload frmCancelamentoMDFe
    
TratarErroCancela:
    If Err.Description <> "" Then
        lblStatus = Err.Description
    End If
End Sub
'11. Visualizar DAMDFE
Private Sub btnVisualizar_Click()
On Error GoTo TrataErroVisualizar

CheckConfig (False)
Dim arquivo As String
Dim XML As String
   
If txtChave.Text <> "" Then
    Dim fso As New FileSystemObject
    Dim arqtxt As TextStream
    arquivo = ObterCaminhoXmlDestinatario(txtChave.Text)
    If arquivo <> "" Then
    Set arqtxt = fso.OpenTextFile(arquivo)
    XML = arqtxt.ReadAll
    MDFe.VisualizarMDFe XML, ""
    Else
        lblStatus = "Por gentileza informe uma chave válida."
    End If
Else
    XML = mmXML.Text
    If Trim(XML) <> "" Then
    MDFe.VisualizarMDFe XML, ""
    Else
        lblStatus = "Por gentileza informe o XML no memo."
    End If
End If


TrataErroVisualizar:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
 End If

End Sub
'12. Exportar para PDF
Private Sub btnExportar_Click()
On Error GoTo TrataErroExporta
CheckConfig (False)
Dim arquivo As String
Dim XML As String
   
If txtChave.Text <> "" Then
    Dim fso As New FileSystemObject
    Dim arqtxt As TextStream
    arquivo = ObterCaminhoXmlDestinatario(txtChave.Text)
    If arquivo <> "" Then
    Set arqtxt = fso.OpenTextFile(arquivo)
    XML = arqtxt.ReadAll
    CaminhoPDF (XML)
    Else
        lblStatus = "Por gentileza informe uma chave válida."
    End If
Else
    XML = mmXML.Text
    If Trim(XML) <> "" Then
    CaminhoPDF (XML)
    Else
        lblStatus = "Por gentileza informe o XML no memo."
    End If
End If

TrataErroExporta:
    If Err.Description <> "" Then
    lblStatus = Err.Description
    MsgBox Err.Description
End If
 
End Sub

'Função que verifica se o componente foi configurado
Private Sub CheckConfig(ClearOutput As Boolean)
Dim bConfig As Boolean
If ClearOutput Then
    mmXML.Text = ""
End If

bConfig = True

If MDFe.UF = "" Then
    bConfig = False
End If

If MDFe.CNPJ = "" Then
    bConfig = False
End If

If MDFe.NomeCertificado = "" Then
    bConfig = False
End If
If bConfig = False Then
    Err.Raise vbObjectError + 1, "Form1", "Favor configurar o componente antes de prosseguir (via ini ou via propriedades)."
    'lblStatus = "Favor configurar o componente antes de prosseguir (via ini ou via propriedades)."
End If

End Sub
'Função que define o caminho do PDF
Private Sub CaminhoPDF(XML As String)
Dim CaminhoArquivoPDF As String
    CaminhoArquivoPDF = InputBox("Caminho do arquivo PDF", "Informe o caminho do arquivo PDF", "C:\DAMDFE.PDF")
    If CaminhoArquivoPDF <> "" Then
        MDFe.ExportarMDFe XML, "", fePDF, CaminhoArquivoPDF
        mmXML.Text = "PDF gerado com sucesso: " + CaminhoArquivoPDF
    Else
      lblStatus = "Por gentileza informe um caminho válido."
    End If
End Sub
'Função que configura o componente DataSet
Private Sub ConfiguraMdfeDataSet()
    MDFeDataSet.ConfigSection = "XMLENVIO"
    MDFeDataSet.MappingFileName = MDFe.DiretorioEsquemas + "3.00" + "\Mapping.txt"
    MDFeDataSet.CreateDatasets
    MDFeDataSet.EmptyDatasets
    MDFeDataSet.Versao = "3.00"
    MDFeDataSet.IdLote = "1"
End Sub

'Função para escrever no arquivo .ini
Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
    Dim arquivo As String
    Dim Retorno As String
    arquivo = ArqIni
    Retorno = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquivo)
End Function
'Função que atualiza o Status
Private Sub AtualizaStatusNaTela(valor As String)
    lblStatus.Caption = valor
    lblStatus.Visible = True
End Sub

'Verifica se o arquivo existe no caminho passado
Private Function FileExists(Fname As String) As Boolean
    
    If Fname = "" Or Right(Fname, 1) = "\" Then
      FileExists = False: Exit Function
    End If
    
    FileExists = (Dir(Fname) <> "")
    
End Function

'Retorna caminho do XML do destinatario
Private Function ObterCaminhoXmlDestinatario(Chave As String)

    Dim XmlDestinatario As String
    MDFe.DiretorioXmlDestinatario = App.Path + "\XmlDestinatario\"
    
    XmlDestinatario = MDFe.DiretorioXmlDestinatario + Trim(txtChave.Text) + "-MDFe.xml"
    If FileExists(XmlDestinatario) Then
        ObterCaminhoXmlDestinatario = XmlDestinatario
    Else
        ObterCaminhoXmlDestinatario = ""
    End If

End Function
'Função auxiliar para abrir arquivo
Function FileOpen(filtro) As String
    CommonDialog.Filter = filtro
    CommonDialog.InitDir = App.Path
    CommonDialog.ShowOpen
    If CommonDialog.FileName = "" Then
         'Teste
    Else
        FileOpen = CommonDialog.FileName ' The FileName property contains the selected file name.
    End If
End Function

Private Sub DadosDoMDFe()
  Dim nMDF As String
  
            MDFeDataSet.SetFieldAsString "versao_2", "3.00"
            MDFeDataSet.SetFieldAsString "cUF_5", "41"
            MDFeDataSet.SetFieldAsString "tpAmb_6", "2"
            MDFeDataSet.SetFieldAsString "tpEmit_7", "2"
            MDFeDataSet.SetFieldAsString "mod_8", "58"
            MDFeDataSet.SetFieldAsString "serie_9", "122"

            nMDF = CStr(Int(100000 * Rnd) + 1)

            MDFeDataSet.SetFieldAsString "nMDF_10", nMDF
            MDFeDataSet.SetFieldAsString "cMDF_11", "00000001"
            MDFeDataSet.SetFieldAsString "cDV_12", "1"
            MDFeDataSet.SetFieldAsString "modal_13", "1"
            MDFeDataSet.SetFieldAsString "dhEmi_14", Format$(Now, "YYYY-mm-dd") + "T" + Format$(Now, "hh:nn:ss") + GetCurrentTimeBias
            MDFeDataSet.SetFieldAsString "tpEmis_15", "1"
            MDFeDataSet.SetFieldAsString "procEmi_16", "0"
            MDFeDataSet.SetFieldAsString "verProc_17", "5.0"
            MDFeDataSet.SetFieldAsString "UFIni_18", "PR"
            MDFeDataSet.SetFieldAsString "UFFim_19", "SP"
            
            MDFeDataSet.SetFieldAsString "tpCarga_200", "08"
            MDFeDataSet.SetFieldAsString "xProd_201", "OXIGENIO LIQUIDO"
            MDFeDataSet.SetFieldAsString "cEAN_202", "7898515694189"
            MDFeDataSet.SetFieldAsString "NCM_203", "28044000"
            

            MDFeDataSet.IncludePart ("infMunCarrega")
            MDFeDataSet.SetFieldAsString "cMunCarrega_21", "4111803"
            MDFeDataSet.SetFieldAsString "xMunCarrega_22", "JACAREZINHO"
            MDFeDataSet.SavePart ("infMunCarrega")
            
  End Sub

  Private Sub DadosDoEmitente()
  
            MDFeDataSet.SetFieldAsString "CNPJ_26", "08187168000160"
            MDFeDataSet.SetFieldAsString "IE_27", "9044016688"
            MDFeDataSet.SetFieldAsString "xNome_28", "TECNOSPEED"
            MDFeDataSet.SetFieldAsString "xFant_29", "TECNOSPEED"
            MDFeDataSet.SetFieldAsString "xLgr_31", "RUA DUQUE DE CAXIAS"
            MDFeDataSet.SetFieldAsString "nro_32", "882"
            MDFeDataSet.SetFieldAsString "xCpl_33", "SALA 102 E 909"
            MDFeDataSet.SetFieldAsString "xBairro_34", "CENTRO"
            MDFeDataSet.SetFieldAsString "cMun_35", "4115200"
            MDFeDataSet.SetFieldAsString "xMun_36", "Maringa"
            MDFeDataSet.SetFieldAsString "CEP_37", "87020025"
            MDFeDataSet.SetFieldAsString "UF_38", "PR"
            MDFeDataSet.SetFieldAsString "fone_39", "4430283749"
            MDFeDataSet.SetFieldAsString "email_40", "testedanfe@gmail.com"
  End Sub

  Private Sub DadosDoModal()
  
            MDFeDataSet.SetFieldAsString "versaoModal_42", "3.00"

            MDFeDataSet.IncludePart ("rodo")
            MDFeDataSet.SetFieldAsString "RNTRC_rodo_2", "48695023"
            MDFeDataSet.SetFieldAsString "cInt_rodo_5", "014-1"
            MDFeDataSet.SetFieldAsString "placa_rodo_6", "HQV0325"
            MDFeDataSet.SetFieldAsString "tara_rodo_7", "15100"
            MDFeDataSet.SetFieldAsString "capKG_rodo_8", "48500"
            MDFeDataSet.SetFieldAsString "capM3_rodo_9", "500"
            MDFeDataSet.SetFieldAsString "tpRod_rodo_34", "03"
            MDFeDataSet.SetFieldAsString "tpCar_rodo_35", "02"
            MDFeDataSet.SetFieldAsString "UF_rodo_36", "PR"
            MDFeDataSet.SavePart ("rodo")

            MDFeDataSet.IncludePart ("infContratante")
            MDFeDataSet.SetFieldAsString "CNPJ_rodo_173", "99999999999999"
            MDFeDataSet.SavePart ("infContratante")

            MDFeDataSet.IncludePart ("condutor")
            MDFeDataSet.SetFieldAsString "xNome_rodo_13", "JOAO"
            MDFeDataSet.SetFieldAsString "CPF_rodo_14", "99999999999"
            MDFeDataSet.SavePart ("condutor")

            MDFeDataSet.IncludePart ("veicReboque")
            MDFeDataSet.SetFieldAsString "cInt_rodo_16", "002"
            MDFeDataSet.SetFieldAsString "placa_rodo_17", "XYZ4567"
            MDFeDataSet.SetFieldAsString "tara_rodo_18", "4000"
            MDFeDataSet.SetFieldAsString "capKG_rodo_19", "3000"
            MDFeDataSet.SetFieldAsString "capM3_rodo_20", "300"
            MDFeDataSet.SetFieldAsString "RNTRC_rodo_22", "87654321"

            MDFeDataSet.SetFieldAsString "CPF_rodo_37", "48681216503"
            MDFeDataSet.SetFieldAsString "xNome_rodo_39", "NOME DO PROPRIETARIO VEICULO REBOQUE"
            MDFeDataSet.SetFieldAsString "tpProp_42", "0"

            MDFeDataSet.SetFieldAsString "tpCar_rodo_43", "01"
            MDFeDataSet.SetFieldAsString "UF_rodo_44", "PR"

            MDFeDataSet.SavePart ("veicReboque")

            MDFeDataSet.IncludePart ("disp")
            MDFeDataSet.SetFieldAsString "CNPJForn_rodo_25", "12345678000199"
            MDFeDataSet.SetFieldAsString "CNPJPg_rodo_26", "21543876000188"
            MDFeDataSet.SetFieldAsString "nCompra_rodo_27", "789"
            MDFeDataSet.SetFieldAsString "vValePed_rodo_71", "10.00"
            MDFeDataSet.SavePart ("disp")

            MDFeDataSet.IncludePart ("seg")
            MDFeDataSet.SetFieldAsString "respSeg_153", "1"
            MDFeDataSet.SetFieldAsString "CNPJ_154", "99999999999999"
            MDFeDataSet.SetFieldAsString "xSeg_156", "PORTO SEGURO - CIA DE SEGUROS"
            MDFeDataSet.SetFieldAsString "CNPJ_157", "99999999999999"
            MDFeDataSet.SetFieldAsString "nApol_158", "06540713572"
            MDFeDataSet.SavePart ("seg")

            MDFeDataSet.IncludePart ("naver")
            MDFeDataSet.SetFieldAsString "nAver_159", "73652309182"
            MDFeDataSet.SavePart ("naver")
  End Sub

  Private Sub DadosDescarga()
  
            MDFeDataSet.IncludePart ("infMunDescarga")
            MDFeDataSet.SetFieldAsString "cMunDescarga_46", "3552205"
            MDFeDataSet.SetFieldAsString "xMunDescarga_47", "SOROCABA"

            MDFeDataSet.IncludePart ("infNFe")
            MDFeDataSet.SetFieldAsString "chNFe_58", "41180908187168000160550010000509611154604379"
            MDFeDataSet.SavePart ("infNFe")
  End Sub

  Private Sub DadosTotalizadores()
  
            MDFeDataSet.SetFieldAsString "qNFe_71", "1"
            MDFeDataSet.SetFieldAsString "qCTe_69", "0"
            MDFeDataSet.SetFieldAsString "vCarga_73", "54743.52"
            MDFeDataSet.SetFieldAsString "cUnid_74", "01"
            MDFeDataSet.SetFieldAsString "qCarga_75", "32240.0000"
  End Sub

  Private Sub DadosAutXML()
   
    MDFeDataSet.IncludePart ("autXML")
    MDFeDataSet.SetFieldAsString "CNPJ_145", "66148370000189"
    MDFeDataSet.SavePart ("autXML")
   End Sub

  Private Sub DadosLacres()
  
            MDFeDataSet.IncludePart ("lacres")
            MDFeDataSet.SetFieldAsString "nLacre_77", "123"
            MDFeDataSet.SavePart ("lacres")
  End Sub

  Private Sub DadosAdicionais()
  
            MDFeDataSet.SetFieldAsString "infAdFisco_79", ""
            MDFeDataSet.SetFieldAsString "infCpl_80", "INFORMAÇÕES COMPLEMENTARES |INFORMACOES COMPLEMENTARES"
  End Sub

