VERSION 5.00
Begin VB.Form TOCPage 
   Caption         =   "Table of Contents"
   ClientHeight    =   4620
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   5385
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form5"
   ScaleHeight     =   4620
   ScaleWidth      =   5385
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnTOCGDShow 
      Caption         =   "General Display Window"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   17
      Top             =   3600
      Width           =   2175
   End
   Begin VB.CommandButton btnTau 
      Caption         =   "Tau"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   16
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton btnDeLuna 
      Caption         =   "DeLuna"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   14
      Top             =   2160
      Width           =   2175
   End
   Begin VB.CommandButton btnAdInfinitum 
      Caption         =   "Ad Infinitum"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   13
      Top             =   1800
      Width           =   2175
   End
   Begin VB.CommandButton btnAvia 
      Caption         =   "Avia"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   12
      Top             =   1440
      Width           =   2175
   End
   Begin VB.CommandButton btnGeoMarines 
      Caption         =   "Geo Marines"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   11
      Top             =   360
      Width           =   2175
   End
   Begin VB.CommandButton btnMarinesoftheTwinFist 
      Caption         =   "Marines of the Twin Fist"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   10
      Top             =   720
      Width           =   2175
   End
   Begin VB.CommandButton btnVoboulids 
      Caption         =   "Voboulids"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   2520
      TabIndex        =   9
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton btnImperialGuard 
      Caption         =   "Imperial Guard"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   2520
      Width           =   1575
   End
   Begin VB.CommandButton btnEldar 
      Caption         =   "Eldar"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   7
      Top             =   1440
      Width           =   1575
   End
   Begin VB.CommandButton btnNecrons 
      Caption         =   "Necrons"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   6
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton btnOrks 
      Caption         =   "Orks"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   720
      Width           =   1575
   End
   Begin VB.CommandButton btnDarkEldar 
      Caption         =   "Dark Eldar"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   4
      Top             =   1800
      Width           =   1575
   End
   Begin VB.CommandButton btnChaosMarines 
      Caption         =   "Chaos Marines"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btnTyranids 
      Caption         =   "Tyranids"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   2
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton btnSistersofBattle 
      Caption         =   "Sisters of Battle"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3240
      Width           =   1575
   End
   Begin VB.CommandButton btnSpaceMarines 
      Caption         =   "Space Marines"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label lblO 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      TabIndex        =   19
      Top             =   720
      Width           =   855
   End
   Begin VB.Label lbSM 
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1680
      TabIndex        =   18
      Top             =   360
      Width           =   855
   End
   Begin VB.Label lblTOC 
      Caption         =   "Army Builder Table of Contents"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   15
      Top             =   0
      Width           =   2415
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuClose 
         Caption         =   "Close"
      End
   End
End
Attribute VB_Name = "TOCPage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub btnSpaceMarines_Click()
Load frmSM
frmSM.Show
End Sub
Private Sub btnOrks_Click()
Load frmO
frmO.Show
End Sub
Private Sub btnChaosMarines_Click()
Load frmCM
frmCM.Show
End Sub
Private Sub btnEldar_Click()
Load frmE
frmE.Show
End Sub
Private Sub btnDarkEldar_Click()
Load frmDE
frmDE.Show
End Sub
Private Sub btnTyranids_Click()
Load frmT
frmT.Show
End Sub
Private Sub btnImperialGuard_Click()
Load frmIG
frmIG.Show
End Sub
Private Sub btnNecrons_Click()
Load frmN
frmN.Show
End Sub
Private Sub btnSistersofBattle_Click()
Load frmSB
frmSB.Show
End Sub
Private Sub btnTau_Click()
Load frmTA
frmTA.Show
End Sub
Private Sub btnGeoMarines_Click()
Load frmGM
frmGM.Show
End Sub
Private Sub btnMarinesoftheTwinFist_Click()
Load frmMT
frmMT.Show
End Sub
Private Sub btnAvia_Click()
Load frmA
frmA.Show
End Sub
Private Sub btnVoboulids_Click()
Load frmV
frmV.Show
End Sub
Private Sub btnAdInfinitum_Click()
Load frmAI
frmAI.Show
End Sub
Private Sub btnDeLuna_Click()
Load frmDL
frmDL.Show
End Sub
Private Sub btnTOCGDShow_Click()
Load frmGeneralDisplay
frmGeneralDisplay.Show
End Sub
Private Sub Form_Load()
'Unload all forms
Unload frmA
Unload frmAI
Unload frmCM
Unload frmDE
Unload frmDL
Unload frmE
Unload frmGeneralDisplay
Unload frmGM
Unload frmIG
Unload frmMT
Unload frmN
Unload frmO
Unload frmSB
Unload frmSM
Unload frmT
Unload frmTA
Unload frmV
'Initialize Variables and Arrays
    'Set all Army values to 0
        For ActiveArmy = 1 To 16
            Army(ActiveArmy) = 0
        Next ActiveArmy
    'Set all Squad values to 0
        For ActiveSquad = 1 To 17
            For ActiveArmy = 1 To 16
                Squad(ActiveSquad, ActiveArmy) = 0
            Next ActiveArmy
        Next ActiveSquad
    'Set all Groups to 0
        For ActiveGroup = 1 To 10
            For ActiveSquad = 1 To 17
                For ActiveArmy = 1 To 16
                    Group(ActiveGroup, ActiveSquad, ActiveArmy) = 0
                Next ActiveArmy
            Next ActiveSquad
        Next ActiveGroup
End Sub

Private Sub mnuClose_Click()
Unload Me
End Sub
