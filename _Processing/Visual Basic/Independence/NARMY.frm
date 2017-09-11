VERSION 5.00
Begin VB.Form frmN 
   Caption         =   "Necron Army"
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
   Begin VB.CommandButton btnNT 
      Caption         =   "Troops"
      Height          =   315
      Left            =   480
      TabIndex        =   7
      Top             =   840
      Width           =   1215
   End
   Begin VB.CommandButton btnNE 
      Caption         =   "Elites"
      Height          =   315
      Left            =   480
      TabIndex        =   6
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton btnNFA 
      Caption         =   "Fast Attack"
      Height          =   315
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton btnNHS 
      Caption         =   "Heavy Support"
      Height          =   315
      Left            =   480
      TabIndex        =   4
      Top             =   1920
      Width           =   1215
   End
   Begin VB.CommandButton btnNGDShow 
      Caption         =   "General Display Window"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   2880
      Width           =   2175
   End
   Begin VB.CommandButton btnNHQ2 
      Caption         =   "HQ2"
      Height          =   315
      Left            =   480
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton btnNHQ1 
      Caption         =   "HQ1"
      Height          =   315
      Left            =   480
      TabIndex        =   1
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton btnNARYMYDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   3840
      TabIndex        =   0
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "frmN"
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
ActiveArmy = 8
DisplayArmy
End Sub

Private Sub btnNARYMYDone_Click()
frmN.Hide
End Sub


Private Sub btnNGDShow_Click()
Load frmGeneralDisplay
frmGeneralDisplay.Show
End Sub

Private Sub btnNHQ1_Click()
Load frmNHQ1
frmNHQ1.Show
End Sub

Private Sub btnNHQ2_Click()
Load frmNHQ2
frmNHQ2.Show
End Sub

Private Sub btnNT_Click()
Load frmNT
frmNT.Show
End Sub

Private Sub btnNE_Click()
Load frmNE
frmNE.Show
End Sub

Private Sub btnNFA_Click()
Load frmNFA
frmNFA.Show
End Sub

Private Sub btnNHS_Click()
Load frmNHS
frmNHS.Show
End Sub

