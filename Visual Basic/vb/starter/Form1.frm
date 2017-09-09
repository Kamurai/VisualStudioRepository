VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSend 
      Caption         =   "&Send"
      Height          =   495
      Left            =   4560
      TabIndex        =   5
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Close"
      Height          =   495
      Left            =   5760
      TabIndex        =   6
      Top             =   3600
      Width           =   1215
   End
   Begin VB.TextBox txtMessage 
      Height          =   1335
      Left            =   1260
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   4
      Text            =   "Form1.frx":0000
      Top             =   1440
      Width           =   3735
   End
   Begin VB.TextBox txtSubject 
      Height          =   495
      Left            =   1260
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.TextBox txtCc 
      Height          =   495
      Left            =   1260
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.TextBox txtTo 
      Height          =   495
      Left            =   1260
      TabIndex        =   0
      Top             =   0
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Message"
      Height          =   495
      Index           =   3
      Left            =   0
      TabIndex        =   9
      Top             =   1500
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Subject:"
      Height          =   495
      Index           =   2
      Left            =   0
      TabIndex        =   8
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Cc:"
      Height          =   495
      Index           =   1
      Left            =   0
      TabIndex        =   7
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "To:"
      Height          =   495
      Index           =   0
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Label1_Click()

End Sub

Private Sub cmdSend_Click()
Unload Me
End Sub

Private Sub Command1_Click()
Unload Me
End Sub
