VERSION 5.00
Begin VB.Form frmIG 
   Caption         =   "Imperial Guard Army"
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
   Begin VB.CommandButton btnIGT 
      Caption         =   "Troops"
      Height          =   315
      Left            =   480
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton btnIGE 
      Caption         =   "Elites"
      Height          =   315
      Left            =   480
      TabIndex        =   6
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton btnIGFA 
      Caption         =   "Fast Attack"
      Height          =   315
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton btnIGHS 
      Caption         =   "Heavy Support"
      Height          =   315
      Left            =   480
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton btnIGGDShow 
      Caption         =   "General Display Window"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   2175
   End
   Begin VB.CommandButton btnIGHQ2 
      Caption         =   "HQ2"
      Height          =   315
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton btnIGHQ1 
      Caption         =   "HQ1"
      Height          =   315
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton btnIGARYMYDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   3840
      TabIndex        =   0
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "frmIG"
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
ActiveArmy = 7
DisplayArmy
End Sub

Private Sub btnIGARYMYDone_Click()
frmIG.Hide
End Sub


Private Sub btnIGGDShow_Click()
Load frmGeneralDisplay
frmGeneralDisplay.Show
End Sub

Private Sub btnIGHQ1_Click()
Load frmIGHQ1
frmIGHQ1.Show
End Sub

Private Sub btnIGHQ2_Click()
Load frmIGHQ2
frmIGHQ2.Show
End Sub

Private Sub btnIGT_Click()
Load frmIGT
frmIGT.Show
End Sub

Private Sub btnIGE_Click()
Load frmIGE
frmIGE.Show
End Sub

Private Sub btnIGFA_Click()
Load frmIGFA
frmIGFA.Show
End Sub

Private Sub btnIGHS_Click()
Load frmIGHS
frmIGHS.Show
End Sub

