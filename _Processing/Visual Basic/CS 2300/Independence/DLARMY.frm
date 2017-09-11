VERSION 5.00
Begin VB.Form frmDL 
   Caption         =   "DeLuna Army"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form3"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnDisplay 
      Caption         =   "Display"
      Height          =   375
      Left            =   2760
      TabIndex        =   9
      Top             =   2760
      Width           =   855
   End
   Begin VB.PictureBox picDisplay 
      Height          =   2535
      Left            =   2400
      ScaleHeight     =   2475
      ScaleWidth      =   1515
      TabIndex        =   8
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btnDLT 
      Caption         =   "Troops"
      Height          =   315
      Left            =   480
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton btnDLE 
      Caption         =   "Elites"
      Height          =   315
      Left            =   480
      TabIndex        =   6
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton btnDLFA 
      Caption         =   "Fast Attack"
      Height          =   315
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton btnDLHS 
      Caption         =   "Heavy Support"
      Height          =   315
      Left            =   480
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton btnDLGDShow 
      Caption         =   "General Display Window"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   2175
   End
   Begin VB.CommandButton btnDLHQ2 
      Caption         =   "HQ2"
      Height          =   315
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton btnDLHQ1 
      Caption         =   "HQ1"
      Height          =   315
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton btnDLARYMYDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   3840
      TabIndex        =   0
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "frmDL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub DisplayArmy()
'Initialize Total
    Army(Army) = Squad(1, ActiveArmy) + Squad(2, ActiveArmy) + Squad(3, ActiveArmy) + Squad(4, ActiveArmy) + Squad(5, ActiveArmy) + Squad(6, ActiveArmy) + Squad(7, ActiveArmy) + Squad(8, ActiveArmy) + Squad(9, ActiveArmy) + Squad(10, ActiveArmy) + Squad(11, ActiveArmy) + Squad(12, ActiveArmy) + Squad(13, ActiveArmy) + Squad(14, ActiveArmy) + Squad(15, ActiveArmy) + Squad(16, ActiveArmy) + Squad(17, ActiveArmy)
    'Display
    picDisplay.Cls
    picDisplay.Print "HQ"; Squad(1, ActiveArmy) + Squad(2, ActiveArmy)
    picDisplay.Print "T"; Squad(3, ActiveArmy) + Squad(4, ActiveArmy) + Squad(5, ActiveArmy) + Squad(6, ActiveArmy) + Squad(7, ActiveArmy) + Squad(8, ActiveArmy)
    picDisplay.Print "E"; Squad(9, ActiveArmy) + Squad(10, ActiveArmy) + Squad(11, ActiveArmy)
    picDisplay.Print "FA"; Squad(12, ActiveArmy) + Squad(13, ActiveArmy) + Squad(14, ActiveArmy)
    picDisplay.Print "HS"; Squad(15, ActiveArmy) + Squad(16, ActiveArmy) + Squad(17, ActiveArmy)
    picDisplay.Print "Total"; Army(ActiveArmy)
End Sub

Private Sub btnDisplay_Click()
ActiveArmy = 16
DisplayArmy
End Sub

Private Sub btnDLARYMYDone_Click()
frmDL.Hide
End Sub


Private Sub btnDLGDShow_Click()
Load frmGeneralDisplay
frmGeneralDisplay.Show
End Sub

Private Sub btnDLHQ1_Click()
Load frmDLHQ1
frmDLHQ1.Show
End Sub

Private Sub btnDLHQ2_Click()
Load frmDLHQ2
frmDLHQ2.Show
End Sub

Private Sub btnDLT_Click()
Load frmDLT
frmDLT.Show
End Sub

Private Sub btnDLE_Click()
Load frmDLE
frmDLE.Show
End Sub

Private Sub btnDLFA_Click()
Load frmDLFA
frmDLFA.Show
End Sub

Private Sub btnDLHS_Click()
Load frmDLHS
frmDLHS.Show
End Sub

