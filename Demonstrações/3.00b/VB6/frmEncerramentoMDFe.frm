VERSION 5.00
Begin VB.Form frmEncerramentoMDFe 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Encerramento de MDFe"
   ClientHeight    =   5745
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   3735
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5745
   ScaleWidth      =   3735
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtCodMunEnc 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   120
      TabIndex        =   10
      Top             =   2880
      Width           =   3495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Dados para Encerramento do MDFe"
      Height          =   5055
      Left            =   0
      TabIndex        =   2
      Top             =   120
      Width           =   3735
      Begin VB.TextBox txtFusoEnc 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   2160
         TabIndex        =   15
         Top             =   4200
         Width           =   1455
      End
      Begin VB.TextBox txtDataHoraEve 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   14
         Top             =   4200
         Width           =   1935
      End
      Begin VB.TextBox txtDataEnc 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   12
         Top             =   3480
         Width           =   3495
      End
      Begin VB.TextBox txtCodUfEnc 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   7
         Top             =   2040
         Width           =   3495
      End
      Begin VB.TextBox txtProtocolo 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   6
         Top             =   1320
         Width           =   3495
      End
      Begin VB.TextBox txtChave 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   5
         Top             =   720
         Width           =   3495
      End
      Begin VB.Label Label8 
         Caption         =   "* Todos os campos são obrigatórios"
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
         TabIndex        =   17
         Top             =   4680
         Width           =   6255
      End
      Begin VB.Label Label6 
         Caption         =   "Fuso Horário"
         Height          =   255
         Left            =   2160
         TabIndex        =   16
         Top             =   3960
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "Data e Hora do Evento"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   3960
         Width           =   1935
      End
      Begin VB.Label Label3 
         Caption         =   "Data do Encerramento"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   3240
         Width           =   2775
      End
      Begin VB.Label Label2 
         Caption         =   "Código do Município de Encerramento"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   2520
         Width           =   2775
      End
      Begin VB.Label Label1 
         Caption         =   "Código da UF de Encerramento"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1800
         Width           =   2775
      End
      Begin VB.Label Label5 
         Caption         =   "Nº da Chave"
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   480
         Width           =   1695
      End
      Begin VB.Label Label7 
         Caption         =   "Nº do Protocolo"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   1695
      End
   End
   Begin VB.CommandButton btnCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   2400
      TabIndex        =   1
      Top             =   5280
      Width           =   1095
   End
   Begin VB.CommandButton btnOk 
      Caption         =   "Ok"
      Height          =   375
      Left            =   1200
      TabIndex        =   0
      Top             =   5280
      Width           =   1095
   End
End
Attribute VB_Name = "frmEncerramentoMDFe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnCancelar_Click()
If Len(txtChave.Text) = 44 And Len(txtProtocolo.Text) = 15 And Len(txtCodUfEnc.Text) = 2 And Len(txtCodMunEnc.Text) = 7 And txtDataEnc.Text <> "" And txtDataHoraEve.Text <> "" And txtFusoEnc.Text <> "" Then
    Hide
Else
  MsgBox "Por gentileza, preencha todos os parâmetros do encerramento antes de prosseguir."
End If
End Sub

Private Sub btnOk_Click()
Hide
End Sub
