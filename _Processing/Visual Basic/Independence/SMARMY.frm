VERSION 5.00
Begin VB.Form frmSM 
   Caption         =   "Space Marine Army"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3930
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
   ScaleWidth      =   3930
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnT2 
      Caption         =   "Troops 4-6"
      Height          =   315
      Left            =   480
      TabIndex        =   10
      Top             =   1200
      Width           =   1455
   End
   Begin VB.CommandButton btnDisplay 
      Caption         =   "Display"
      Height          =   375
      Left            =   2880
      TabIndex        =   9
      Top             =   2040
      Width           =   735
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1695
      Left            =   2640
      ScaleHeight     =   1635
      ScaleWidth      =   1155
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton btnT1 
      Caption         =   "Troops 1-3"
      Height          =   315
      Left            =   480
      TabIndex        =   7
      Top             =   840
      Width           =   1455
   End
   Begin VB.CommandButton btnE 
      Caption         =   "Elites"
      Height          =   315
      Left            =   480
      TabIndex        =   6
      Top             =   1560
      Width           =   1455
   End
   Begin VB.CommandButton btnFA 
      Caption         =   "Fast Attack"
      Height          =   315
      Left            =   480
      TabIndex        =   5
      Top             =   1920
      Width           =   1455
   End
   Begin VB.CommandButton btnHS 
      Caption         =   "Heavy Support"
      Height          =   315
      Left            =   480
      TabIndex        =   4
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton btnGDW 
      Caption         =   "General Display Window"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   2175
   End
   Begin VB.CommandButton btnHQ2 
      Caption         =   "HQ2"
      Height          =   315
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.CommandButton btnHQ1 
      Caption         =   "HQ1"
      Height          =   315
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.CommandButton btnDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   2880
      TabIndex        =   0
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "frmSM"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Sub DisplayArmy()
'Initialize Total
    Army(ActiveArmy) = Squad(1, ActiveArmy) + Squad(2, ActiveArmy) + Squad(3, ActiveArmy) + Squad(4, ActiveArmy) + Squad(5, ActiveArmy) + Squad(6, ActiveArmy) + Squad(7, ActiveArmy) + Squad(8, ActiveArmy) + Squad(9, ActiveArmy) + Squad(10, ActiveArmy) + Squad(11, ActiveArmy) + Squad(12, ActiveArmy) + Squad(13, ActiveArmy) + Squad(14, ActiveArmy) + Squad(15, ActiveArmy) + Squad(16, ActiveArmy) + Squad(17, ActiveArmy)
    'Display
    picDisplay.Cls
    picDisplay.Print "Squad"; Tab(10); "Points"
    picDisplay.Print "HQ"; Tab(10); Squad(1, ActiveArmy) + Squad(2, ActiveArmy)
    picDisplay.Print "T"; Tab(10); Squad(3, ActiveArmy) + Squad(4, ActiveArmy) + Squad(5, ActiveArmy) + Squad(6, ActiveArmy) + Squad(7, ActiveArmy) + Squad(8, ActiveArmy)
    picDisplay.Print "E"; Tab(10); Squad(9, ActiveArmy) + Squad(10, ActiveArmy) + Squad(11, ActiveArmy)
    picDisplay.Print "FA"; Tab(10); Squad(12, ActiveArmy) + Squad(13, ActiveArmy) + Squad(14, ActiveArmy)
    picDisplay.Print "HS"; Tab(10); Squad(15, ActiveArmy) + Squad(16, ActiveArmy) + Squad(17, ActiveArmy)
    picDisplay.Print "Total"; Tab(10); Army(ActiveArmy)
End Sub

Private Sub btnDisplay_Click()
ActiveArmy = 1
DisplayArmy
End Sub

Private Sub btnDone_Click()
frmSM.Hide
End Sub

Private Sub btnGDW_Click()
Load frmGeneralDisplay
frmGeneralDisplay.Show
End Sub


Private Sub btnHQ1_Click()
Load frmSpaceMarinesHQ1
frmSpaceMarinesHQ1.Show
End Sub

Private Sub btnHQ2_Click()
Load frmSpaceMarinesHQ2
frmSpaceMarinesHQ2.Show
End Sub

Private Sub btnT1_Click()
Load frmSpaceMarinesTroops1
frmSpaceMarinesTroops1.Show
End Sub
Private Sub btnT2_Click()
Load frmSpaceMarinesTroops2
frmSpaceMarinesTroops2.Show
End Sub

Private Sub btnE_Click()
Load frmSpaceMarinesElites
frmSpaceMarinesElites.Show
End Sub

Private Sub btnFA_Click()
Load frmSpaceMarinesFastAttack
frmSpaceMarinesFastAttack.Show
End Sub

Private Sub btnHS_Click()
Load frmSpaceMarinesHeavySupport
frmSpaceMarinesHeavySupport.Show
End Sub

Private Sub Form_Load()
ActiveArmy = 1
DisplayArmy
End Sub
