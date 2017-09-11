VERSION 5.00
Begin VB.Form frmSMT 
   Caption         =   "Space Marines Troops"
   ClientHeight    =   3480
   ClientLeft      =   165
   ClientTop       =   780
   ClientWidth     =   5865
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   3480
   ScaleWidth      =   5865
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnSMTDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   5160
      TabIndex        =   0
      Top             =   3120
      Width           =   615
   End
   Begin VB.Menu mnuSTS 
      Caption         =   "Troops"
      Begin VB.Menu mnuSMT1 
         Caption         =   "Troops 1"
         Begin VB.Menu mnuSGTSMT1 
            Caption         =   "Sergeant 15"
         End
         Begin VB.Menu mnuVetSGTSMT1 
            Caption         =   "Veteran Sergeant 30"
         End
         Begin VB.Menu mnuAWSMT1 
            Caption         =   "Assault Weapon 15+"
            Begin VB.Menu mnuFSMT1 
               Caption         =   "Flamer 6"
            End
         End
         Begin VB.Menu mnuHWSMT1 
            Caption         =   "Heavy Weapon 15+"
            Begin VB.Menu mnuLSMT1 
               Caption         =   "Lascannon 25"
            End
         End
         Begin VB.Menu mnuOptionsSMHQ1 
            Caption         =   "Options"
            Begin VB.Menu mnuFGSMHQ1 
               Caption         =   "Frag Grenades 1 per"
            End
            Begin VB.Menu mnuKGSMHQ1 
               Caption         =   "Krak Grenades 2 per"
            End
            Begin VB.Menu mnuTransportSMHQ1 
               Caption         =   "Transport"
               Begin VB.Menu mnuRhinoSMHQ1 
                  Caption         =   "Rhino 50"
                  Checked         =   -1  'True
               End
               Begin VB.Menu mnuRazorbackSMHQ1 
                  Caption         =   "Razorback 70"
                  Checked         =   -1  'True
               End
               Begin VB.Menu mnuVehicleUpgradesSMHQ1 
                  Caption         =   "Vehicle Upgrades"
                  Begin VB.Menu mnuDozerBladesSMHQ1 
                     Caption         =   "Dozer Blades 5"
                  End
                  Begin VB.Menu mnuExtraArmorSMHQ1 
                     Caption         =   "Extra Armor 05"
                  End
                  Begin VB.Menu mnuHunterKillerMissileSMHQ1 
                     Caption         =   "Hunter-Killer Missile 15"
                  End
                  Begin VB.Menu mnuPintleMountedStormBolterSMHQ1 
                     Caption         =   "Pintle-Mounted Storm Bolter 10"
                  End
                  Begin VB.Menu mnuSearchlightSMHQ1 
                     Caption         =   "Searchlight 01"
                  End
                  Begin VB.Menu mnuSmokeLaunchersSMHQ1 
                     Caption         =   "Smoke Launchers 03"
                  End
               End
            End
         End
      End
   End
   Begin VB.Menu mnuSMT2 
      Caption         =   "Troops 2"
   End
   Begin VB.Menu mnuSMT3 
      Caption         =   "Troops 3"
   End
   Begin VB.Menu mnuSMT4 
      Caption         =   "Troops 4"
   End
   Begin VB.Menu mnuSMT5 
      Caption         =   "Troops 5"
   End
   Begin VB.Menu mnuSMT6 
      Caption         =   "Troops 6"
   End
End
Attribute VB_Name = "frmSMT"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SquadMembers(1 To 6) As Integer

Private Sub DisplayHQ()
'Initialize Total
    Squad(ActiveSquad, ActiveArmy) = Group(1, ActiveSquad, ActiveArmy) + Group(2, ActiveSquad, ActiveArmy) + Group(3, ActiveSquad, ActiveArmy) + Group(4, ActiveSquad, ActiveArmy) + Group(5, ActiveSquad, ActiveArmy) + Group(6, ActiveSquad, ActiveArmy) + Group(7, ActiveSquad, ActiveArmy) + Group(8, ActiveSquad, ActiveArmy) + Group(9, ActiveSquad, ActiveArmy)
    'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Group(1, ActiveSquad, ActiveArmy)
    picDisplay.Print "Sergeant"; Group(2, ActiveSquad, ActiveArmy)
    picDisplay.Print "Standard Bearer"; Group(3, ActiveSquad, ActiveArmy)
    picDisplay.Print "Apothecary"; Group(4, ActiveSquad, ActiveArmy)
    picDisplay.Print "Techmarine"; Group(5, ActiveSquad, ActiveArmy)
    picDisplay.Print "Squad Members"; Group(6, ActiveSquad, ActiveArmy)
    picDisplay.Print "Assault Weaponry"; Group(7, ActiveSquad, ActiveArmy)
    picDisplay.Print "Heavy Weaponry"; Group(8, ActiveSquad, ActiveArmy)
    picDisplay.Print "Transport"; Group(9, ActiveSquad, ActiveArmy)
    picDisplay.Print "Total"; Squad(ActiveSquad, ActiveArmy)
End Sub

Private Sub btnSMTDone_Click()
frmSMT.Hide
End Sub

