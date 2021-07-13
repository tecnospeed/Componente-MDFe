VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form frmCancelamentoMDFe 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cancelamento de MDFe"
   ClientHeight    =   5610
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   4590
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5610
   ScaleWidth      =   4590
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Dados para Cancelamento do MDFe"
      Height          =   5055
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   4575
      Begin VB.TextBox txtChaveCan 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   4
         Top             =   720
         Width           =   4335
      End
      Begin VB.TextBox txtProtocoloCan 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   120
         TabIndex        =   3
         Top             =   1320
         Width           =   4335
      End
      Begin RichTextLib.RichTextBox mmJust 
         Height          =   2595
         Left            =   120
         TabIndex        =   9
         Top             =   2040
         Width           =   4275
         _ExtentX        =   7541
         _ExtentY        =   4577
         _Version        =   393217
         BackColor       =   -2147483634
         ScrollBars      =   2
         Appearance      =   0
         TextRTF         =   $"FCancela.frx":0000
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
      Begin VB.Label Label7 
         Caption         =   "Nº do Protocolo"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1080
         Width           =   1695
      End
      Begin VB.Label Label5 
         Caption         =   "Nº da Chave"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   480
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Justificativa (mínimo 15 caracteres)"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   1800
         Width           =   2775
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
         TabIndex        =   5
         Top             =   4680
         Width           =   6255
      End
   End
   Begin VB.CommandButton btnCancelar 
      Cancel          =   -1  'True
      Caption         =   "Cancelar"
      Height          =   375
      Left            =   3240
      TabIndex        =   1
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton btnOk 
      Caption         =   "Ok"
      Height          =   375
      Left            =   2040
      TabIndex        =   0
      Top             =   5160
      Width           =   1095
   End
End
Attribute VB_Name = "frmCancelamentoMDFe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnOk_Click()
  If Len(mmJust.Text) > 15 And Len(txtProtocoloCan) = 15 And Len(txtChaveCan) = 44 Then
    Hide
  Else
  MsgBox "Por gentileza, preencha todos os parâmetros do cancelamento antes de prosseguir."
  End If
End Sub
Private Sub btnCancel_Click()
Hide
End Sub


