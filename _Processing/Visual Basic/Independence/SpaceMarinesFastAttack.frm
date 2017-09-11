VERSION 5.00
Begin VB.Form frmSpaceMarinesFastAttack 
   Caption         =   "Space Marines Fast Attack"
   ClientHeight    =   3570
   ClientLeft      =   165
   ClientTop       =   780
   ClientWidth     =   6345
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
   ScaleHeight     =   3570
   ScaleWidth      =   6345
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnDisplay 
      Caption         =   "Display"
      Height          =   255
      Left            =   4080
      TabIndex        =   2
      Top             =   3240
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1935
      Left            =   120
      ScaleHeight     =   1875
      ScaleWidth      =   6075
      TabIndex        =   1
      Top             =   120
      Width           =   6135
   End
   Begin VB.CommandButton btnDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   5640
      TabIndex        =   0
      Top             =   3240
      Width           =   615
   End
   Begin VB.Menu mnufa1 
      Caption         =   "Fast Attack 1"
      Begin VB.Menu mnuAssaultSquadChoice1 
         Caption         =   "Assault Squad"
      End
      Begin VB.Menu mnuAssaultSquad1 
         Caption         =   "Assault Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuAssaultSquadDefault1 
            Caption         =   "Sergeant and 4 Assault Marines 125"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant1a 
            Caption         =   "Veteran Sergeant 15"
         End
         Begin VB.Menu mnuSergeantEquipment1a 
            Caption         =   "Sergeant Equipment"
            Begin VB.Menu mnuBoltPistolSergeant1a 
               Caption         =   "Bolt Pistol 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuCloseCombatWeaponSergeant1a 
               Caption         =   "Close Combat Weapon 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuLightningClawSergeant1a 
               Caption         =   "Lightning Claw 25"
            End
            Begin VB.Menu mnuLightningClawsSergeant1a 
               Caption         =   "Lightning Claws 30"
            End
            Begin VB.Menu mnuPlasmaPistolSergeant1a 
               Caption         =   "Plasma Pistol 15"
            End
            Begin VB.Menu mnuPowerFistSergeant1a 
               Caption         =   "Power Fist 25"
            End
            Begin VB.Menu mnuPowerWeaponSergeant1a 
               Caption         =   "Power Weapon 15"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuStormShieldSergeant1a 
               Caption         =   "Storm Shield 10"
            End
            Begin VB.Menu mnuThunderHammerSergeant1a 
               Caption         =   "Thunder Hammer 30"
            End
            Begin VB.Menu mnuBolterSergeant1a 
               Caption         =   "Bolter 02"
            End
            Begin VB.Menu mnuBolterFlamerSergeant1a 
               Caption         =   "Bolter-Flamer 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSergeant1a 
               Caption         =   "Bolter-Grenade Launcher 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSergeant1a 
               Caption         =   "Bolter-Plasmagun 15"
            End
            Begin VB.Menu mnuBolterMeltagunSergeant1a 
               Caption         =   "Bolter-Meltagun 15"
            End
            Begin VB.Menu mnuStormBolterSergeant1a 
               Caption         =   "Storm Bolter 05"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuAuspexSergeant1a 
               Caption         =   "Auspex 02"
            End
            Begin VB.Menu mnuBionicsSergeant1a 
               Caption         =   "Bionics 10"
            End
            Begin VB.Menu mnuFragGrenadesSergeant1a 
               Caption         =   "Frag Grenades 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuIronHaloSergeant1a 
               Caption         =   "Iron Halo 25"
            End
            Begin VB.Menu mnuKrakGrenadesSergeant1a 
               Caption         =   "Krak Grenades 02"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSergeant1a 
               Caption         =   "Master-Crafted Weapon 15"
            End
            Begin VB.Menu mnuMeltaBombsSergeant1a 
               Caption         =   "Melta Bombs 05"
            End
            Begin VB.Menu mnuPuritySealsSergeant1a 
               Caption         =   "Purity Seals 05"
            End
            Begin VB.Menu mnuTeleportHomerSergeant1a 
               Caption         =   "Teleport Homer 05"
            End
            Begin VB.Menu mnuTerminatorHonorsSergeant1a 
               Caption         =   "Terminator Honors"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
         End
         Begin VB.Menu mnuJumpPackSergeant1a 
            Caption         =   "Jump Pack 10"
         End
         Begin VB.Menu mnuPlasmaPistol11a 
            Caption         =   "Plasma Pistol 05"
         End
         Begin VB.Menu mnuJumpPack11a 
            Caption         =   "Jump Pack 10"
         End
         Begin VB.Menu mnuPlasmaPistol12a 
            Caption         =   "Plasma Pistol 05"
         End
         Begin VB.Menu mnuJumpPack12a 
            Caption         =   "Jump Pack 10"
         End
         Begin VB.Menu mnuJumpPack13a 
            Caption         =   "Jump Pack 10"
         End
         Begin VB.Menu mnuJumpPack14a 
            Caption         =   "Jump Pack 10"
         End
         Begin VB.Menu mnuAssaultMarine11a 
            Caption         =   "Assault Marine 15"
         End
         Begin VB.Menu mnuJumpPack15a 
            Caption         =   "JumpPack 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultMarine12a 
            Caption         =   "Assault Marine 15"
         End
         Begin VB.Menu mnuJumpPack16a 
            Caption         =   "Jump Pack 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultMarine13a 
            Caption         =   "Assault Marine 15"
         End
         Begin VB.Menu mnuJumpPack17a 
            Caption         =   "Jump Pack 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultMarine14a 
            Caption         =   "Assault Marine 15"
         End
         Begin VB.Menu mnuJumpPack18a 
            Caption         =   "Jump Pack 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultMarine15a 
            Caption         =   "Assault Marine 15"
         End
         Begin VB.Menu mnuJumpPack19a 
            Caption         =   "Jump Pack 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuKrakGrenades1a 
            Caption         =   "Krak Grenades 02 per"
         End
         Begin VB.Menu mnuMeltaBombs1a 
            Caption         =   "Melta Bombs 04 per"
         End
      End
      Begin VB.Menu mnuBikeSquadronChoice1 
         Caption         =   "Bike Squadron"
      End
      Begin VB.Menu mnuBikeSquadron1 
         Caption         =   "Bike Squadron"
         Visible         =   0   'False
         Begin VB.Menu mnuBikeSquadronDefault 
            Caption         =   "Sergeant and 2 Bikes 105"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant1b 
            Caption         =   "Veteran Sergeant 15"
         End
         Begin VB.Menu mnuCloseCombatWeaponSergeant1b 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuFlamer11b 
            Caption         =   "Flamer 03"
         End
         Begin VB.Menu mnuMeltagun11b 
            Caption         =   "Meltagun 10"
         End
         Begin VB.Menu mnuPlasmagun11b 
            Caption         =   "Plasmagun 06"
         End
         Begin VB.Menu mnuFlamer12b 
            Caption         =   "Flamer 06"
         End
         Begin VB.Menu mnuMeltagun12b 
            Caption         =   "Meltagun 10"
         End
         Begin VB.Menu mnuPlasmagun12b 
            Caption         =   "Plasmagun 06"
         End
         Begin VB.Menu mnuBike11b 
            Caption         =   "Bike 35"
         End
         Begin VB.Menu mnuBike12b 
            Caption         =   "Bike 35"
         End
         Begin VB.Menu mnuAssaultBike1b 
            Caption         =   "Assault Bike 50"
         End
         Begin VB.Menu mnuMultiMelta1b 
            Caption         =   "Multi-Melta 15"
         End
      End
      Begin VB.Menu mnuAssaultBikeSquadronChoice1 
         Caption         =   "Assault Bike Squadron"
      End
      Begin VB.Menu mnuAssaultBikeSquadron1 
         Caption         =   "Assault Bike Squadron"
         Begin VB.Menu mnuAssaultBikeDefault1 
            Caption         =   "Assault Bike 50"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuMultiMelta11ab 
            Caption         =   "Multi-Melta 15"
         End
         Begin VB.Menu mnuAssaultBike11ab 
            Caption         =   "Assault Bike 50"
         End
         Begin VB.Menu mnuMultiMelta12ab 
            Caption         =   "Multi-Melta 15"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultBike12ab 
            Caption         =   "Assault Bike 50"
         End
         Begin VB.Menu mnuMultiMelta13ab 
            Caption         =   "Multi-Melta 15"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuScoutBikeSquadronChoice1 
         Caption         =   "Scout Bike Squadron"
      End
      Begin VB.Menu mnuScoutBikeSquadron1 
         Caption         =   "Scout Bike Squadron"
         Visible         =   0   'False
         Begin VB.Menu mnuScoutBikeSquadronDefault1 
            Caption         =   "Sergeant and 2 Scout Bikes 90"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant1sb 
            Caption         =   "Veteran Scout Sergeant 15"
         End
         Begin VB.Menu mnuCloseCombatWeaponSergeant1sb 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuScoutBike11sb 
            Caption         =   "Scout Bike 30"
         End
         Begin VB.Menu mnuScoutBike12sb 
            Caption         =   "Scout Bike 30"
         End
         Begin VB.Menu mnuFragGrenades1sb 
            Caption         =   "Frag Grenades 01 per"
         End
         Begin VB.Menu mnuKrakGrenades1sb 
            Caption         =   "Krak Grenades 02 per"
         End
      End
      Begin VB.Menu mnuLandSpeederSquadronChoice1 
         Caption         =   "Land Speeder Squadron"
      End
      Begin VB.Menu mnuLandSpeederTornadoSquadronChoice1 
         Caption         =   "Land Speeder Tornado Squadron"
      End
      Begin VB.Menu mnuLandSpeederTyphoonSquadronChoice1 
         Caption         =   "Land Speeder Typhoon Squadron"
      End
      Begin VB.Menu mnuLandSpeederSquadron1 
         Caption         =   "Land Speeder Squadron"
         Visible         =   0   'False
         Begin VB.Menu mnuLandSpeederDefault1 
            Caption         =   "Land Speeder 50"
         End
         Begin VB.Menu mnuHeavyFlamer11 
            Caption         =   "Heavy Flamer 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTwinLinkedTyphoonMissileLauncher11 
            Caption         =   "Twin-Linked Typhoon Missile Launcher 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuMultiMelta11 
            Caption         =   "Multi-Melta 15 (Replaces Heavy Bolter)"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon11 
            Caption         =   "Assault Cannon 10 (Replaces Heavy Flamer)"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuLandSpeeder11 
            Caption         =   "Land Speeder 50"
         End
         Begin VB.Menu mnuHeavyFlamer12 
            Caption         =   "Heavy Flamer 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTwinLinkedTyphoonMissileLauncher12 
            Caption         =   "Twin-Linked Typhoon Missile Launcher 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuMultiMelta12 
            Caption         =   "Multi-Melta 15 (Replaces Heavy Bolter)"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon12 
            Caption         =   "Assault Cannon 10 (Replaces Heavy Flamer)"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuLandSpeeder12 
            Caption         =   "Land Speeder 50"
         End
         Begin VB.Menu mnuHeavyFlamer13 
            Caption         =   "Heavy Flamer 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTwinLinkedTyphoonMissileLauncher13 
            Caption         =   "Twin-Linked Typhoon Missile Launcher 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuMultiMelta13 
            Caption         =   "Multi-Melta 15 (Replaces Heavy Bolter)"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon13 
            Caption         =   "Assault Cannon 10 (Replaces Heavy Flamer)"
            Visible         =   0   'False
         End
      End
   End
End
Attribute VB_Name = "frmSpaceMarinesFastAttack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Notes:
'final actions:
'find and replace numbers for code
'change ActiveSquad and squadmembers
'save as troops 2, and change numbers for code, activesquad and squadmembers

Dim SquadMembers(1 To 6) As Integer

Private Sub DisplayFastAttack()
'Initialize Total
    Squad(12, ActiveArmy) = Group(1, 12, ActiveArmy) + Group(2, 12, ActiveArmy) + Group(3, 12, ActiveArmy) + Group(4, 12, ActiveArmy) + Group(5, 12, ActiveArmy) + Group(6, 12, ActiveArmy) + Group(7, 12, ActiveArmy) + Group(8, 12, ActiveArmy) + Group(9, 12, ActiveArmy)
    Squad(13, ActiveArmy) = Group(1, 13, ActiveArmy) + Group(2, 13, ActiveArmy) + Group(3, 13, ActiveArmy) + Group(4, 13, ActiveArmy) + Group(5, 13, ActiveArmy) + Group(6, 13, ActiveArmy) + Group(7, 13, ActiveArmy) + Group(8, 13, ActiveArmy) + Group(9, 13, ActiveArmy)
    Squad(14, ActiveArmy) = Group(1, 14, ActiveArmy) + Group(2, 14, ActiveArmy) + Group(3, 14, ActiveArmy) + Group(4, 14, ActiveArmy) + Group(5, 14, ActiveArmy) + Group(6, 14, ActiveArmy) + Group(7, 14, ActiveArmy) + Group(8, 14, ActiveArmy) + Group(9, 14, ActiveArmy)
'Display
    picDisplay.Cls
    picDisplay.Print "Group"; Tab(13); "Points:"; Tab(20); "FA 1"; Tab(30); "FA 2"; Tab(40); "FA 3"
    picDisplay.Print "Sergeant"; Tab(20); Group(2, 12, ActiveArmy); Tab(30); Group(2, 13, ActiveArmy); Tab(40); Group(2, 14, ActiveArmy)
    picDisplay.Print "Squad Members"; Tab(20); Group(6, 12, ActiveArmy); Tab(30); Group(6, 13, ActiveArmy); Tab(40); Group(6, 14, ActiveArmy)
    picDisplay.Print "Assault Weaponry"; Tab(20); Group(7, 12, ActiveArmy); Tab(30); Group(7, 13, ActiveArmy); Tab(40); Group(7, 14, ActiveArmy)
    picDisplay.Print "Heavy Weaponry"; Tab(20); Group(8, 12, ActiveArmy); Tab(30); Group(8, 13, ActiveArmy); Tab(40); Group(8, 14, ActiveArmy)
    picDisplay.Print "Transport"; Tab(20); Group(9, 12, ActiveArmy); Tab(30); Group(9, 13, ActiveArmy); Tab(40); Group(9, 14, ActiveArmy)
    picDisplay.Print "Total"; Tab(20); Squad(12, ActiveArmy); Tab(30); Squad(13, ActiveArmy); Tab(40); Squad(14, ActiveArmy)
End Sub

Private Sub btnDisplay_Click()
ActiveArmy = 1
'no activesquad
DisplayFastAttack
End Sub

Private Sub btnDone_Click()
frmSpaceMarinesFastAttack.Hide
End Sub


Private Sub Form_Load()
ActiveArmy = 1
'no activesquad
DisplayFastAttack
End Sub

Private Sub mnuAutocannon2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAutocannon2s.Checked = False Then
        mnuAutocannon2s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1s.Checked
                mnuMissileLauncher1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter1s.Checked
                mnuHeavyBolter1s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuSniperRifleScout11s.Checked
                mnuSniperRifleScout11s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuAutocannon2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuAutocannon3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAutocannon3s.Checked = False Then
        mnuAutocannon3s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1s.Checked
                mnuMissileLauncher1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter1s.Checked
                mnuHeavyBolter1s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuSniperRifleScout11s.Checked
                mnuSniperRifleScout11s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuAutocannon3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub







Private Sub mnuAutocannon1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAutocannon1s.Checked = False Then
        mnuAutocannon1s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1s.Checked
                mnuMissileLauncher1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter1s.Checked
                mnuHeavyBolter1s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuSniperRifleScout11s.Checked
                mnuSniperRifleScout11s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuAutocannon1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuDozerBlades2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 9
    ActiveValue = 5
    
'If previously unchecked then check
    If mnuDozerBlades2.Checked = False Then
        mnuDozerBlades2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuDozerBlades2.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuDozerBlades3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 9
    ActiveValue = 5
    
'If previously unchecked then check
    If mnuDozerBlades3.Checked = False Then
        mnuDozerBlades3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuDozerBlades3.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub






Private Sub mnuDozerBlades1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 9
    ActiveValue = 5
    
'If previously unchecked then check
    If mnuDozerBlades1.Checked = False Then
        mnuDozerBlades1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuDozerBlades1.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub
Private Sub mnuExtraArmor2_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 4
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor2.Checked = False Then
        mnuExtraArmor2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor2.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuExtraArmor3_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 5
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor3.Checked = False Then
        mnuExtraArmor3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor3.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub





Private Sub mnuExtraArmor1_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor1.Checked = False Then
        mnuExtraArmor1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor1.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuFlamer1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer1t.Checked = False Then
        mnuFlamer1t.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun1t.Checked
                mnuMeltagun1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun1t.Checked
                mnuPlasmagun1t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub


Private Sub mnuFlamer2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer2t.Checked = False Then
        mnuFlamer2t.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun2t.Checked
                mnuMeltagun2t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun2t.Checked
                mnuPlasmagun2t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuFlamer3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer3t.Checked = False Then
        mnuFlamer3t.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun3t.Checked
                mnuMeltagun3t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun3t.Checked
                mnuPlasmagun3t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub






Private Sub mnuFragGrenades2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 1
    
'If previously unchecked then check
    If mnuFragGrenades2s.Checked = False Then
        mnuFragGrenades2s.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack

End Sub

Private Sub mnuFragGrenades2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 1
    
'If previously unchecked then check
    If mnuFragGrenades2t.Checked = False Then
        mnuFragGrenades2t.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub


Private Sub mnuFragGrenades3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 1
    
'If previously unchecked then check
    If mnuFragGrenades3s.Checked = False Then
        mnuFragGrenades3s.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack

End Sub










Private Sub mnuFragGrenades1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 1
    
'If previously unchecked then check
    If mnuFragGrenades1s.Checked = False Then
        mnuFragGrenades1s.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack

End Sub
Private Sub mnuFragGrenades1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 1
    
'If previously unchecked then check
    If mnuFragGrenades1t.Checked = False Then
        mnuFragGrenades1t.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub


Private Sub mnuFragGrenades3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 1
    
'If previously unchecked then check
    If mnuFragGrenades3t.Checked = False Then
        mnuFragGrenades3t.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub

Private Sub mnuHeavyBolter1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuHeavyBolter1s.Checked = False Then
        mnuHeavyBolter1s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1s.Checked
                mnuMissileLauncher1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon1s.Checked
                mnuAutocannon1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout11s.Checked
                mnuSniperRifleScout11s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuHeavyBolter1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuHeavyBolter1t.Checked = False Then
        mnuHeavyBolter1t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1t.Checked
                mnuMissileLauncher1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon1t.Checked
                mnuLascannon1t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuHeavyBolter2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuHeavyBolter2s.Checked = False Then
        mnuHeavyBolter2s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2s.Checked
                mnuMissileLauncher2s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon2s.Checked
                mnuAutocannon2s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout21s.Checked
                mnuSniperRifleScout21s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuHeavyBolter2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuHeavyBolter2t.Checked = False Then
        mnuHeavyBolter2t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2t.Checked
                mnuMissileLauncher2t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon2t.Checked
                mnuLascannon2t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuHeavyBolter3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuHeavyBolter3s.Checked = False Then
        mnuHeavyBolter3s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3s.Checked
                mnuMissileLauncher3s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon3s.Checked
                mnuAutocannon3s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout31s.Checked
                mnuSniperRifleScout31s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub



Private Sub mnuHeavyBolter3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuHeavyBolter3t.Checked = False Then
        mnuHeavyBolter3t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3t.Checked
                mnuMissileLauncher3t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon3t.Checked
                mnuLascannon3t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuHunterKillerMissile1_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHunterKillerMissile1.Checked = False Then
        mnuHunterKillerMissile1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuHunterKillerMissile1.Checked = False
    
    'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuHunterKillerMissile2_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 4
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHunterKillerMissile2.Checked = False Then
        mnuHunterKillerMissile2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuHunterKillerMissile2.Checked = False
    
    'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuHunterKillerMissile3_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 5
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHunterKillerMissile3.Checked = False Then
        mnuHunterKillerMissile3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuHunterKillerMissile3.Checked = False
    
    'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuKrakGrenades1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades1s.Checked = False Then
        mnuKrakGrenades1s.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack

End Sub

Private Sub mnuKrakGrenades1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades1t.Checked = False Then
        mnuKrakGrenades1t.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub


Private Sub mnuKrakGrenades2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades2s.Checked = False Then
        mnuKrakGrenades2s.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub

Private Sub mnuKrakGrenades2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades2t.Checked = False Then
        mnuKrakGrenades2t.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub

Private Sub mnuKrakGrenades3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades3s.Checked = False Then
        mnuKrakGrenades3s.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub

Private Sub mnuKrakGrenades3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades3t.Checked = False Then
        mnuKrakGrenades3t.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayFastAttack
End Sub

Private Sub mnuLascannon1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon1t.Checked = False Then
        mnuLascannon1t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1t.Checked
                mnuMissileLauncher1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter1t.Checked
                mnuHeavyBolter1t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuLascannon2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon2t.Checked = False Then
        mnuLascannon2t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2t.Checked
                mnuMissileLauncher2t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter2t.Checked
                mnuHeavyBolter2t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuLascannon3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon3t.Checked = False Then
        mnuLascannon3t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3t.Checked
                mnuMissileLauncher3t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter3t.Checked
                mnuHeavyBolter3t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuMeltagun1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun1t.Checked = False Then
        mnuMeltagun1t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer1t.Checked
                mnuFlamer1t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun1t.Checked
                mnuPlasmagun1t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuMeltagun2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun2t.Checked = False Then
        mnuMeltagun2t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer2t.Checked
                mnuFlamer2t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun2t.Checked
                mnuPlasmagun2t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuMeltagun3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun3t.Checked = False Then
        mnuMeltagun3t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer3t.Checked
                mnuFlamer3t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun3t.Checked
                mnuPlasmagun3t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuMissileLauncher1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuMissileLauncher1s.Checked = False Then
        mnuMissileLauncher1s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter1s.Checked
                mnuHeavyBolter1s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuAutocannon1s.Checked
                mnuAutocannon1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout11s.Checked
                mnuSniperRifleScout11s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuMissileLauncher1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher1t.Checked = False Then
        mnuMissileLauncher1t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter1t.Checked
                mnuHeavyBolter1t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon1t.Checked
                mnuLascannon1t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuMissileLauncher2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuMissileLauncher2s.Checked = False Then
        mnuMissileLauncher2s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter2s.Checked
                mnuHeavyBolter2s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuAutocannon2s.Checked
                mnuAutocannon2s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout12s.Checked
                mnuSniperRifleScout12s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuMissileLauncher2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher2t.Checked = False Then
        mnuMissileLauncher2t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter2t.Checked
                mnuHeavyBolter2t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon2t.Checked
                mnuLascannon2t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuMissileLauncher3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuMissileLauncher3s.Checked = False Then
        mnuMissileLauncher3s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter3s.Checked
                mnuHeavyBolter3s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            Case mnuAutocannon3s.Checked
                mnuAutocannon3s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuSniperRifleScout13s.Checked
                mnuSniperRifleScout13s.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuMissileLauncher3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher3t.Checked = False Then
        mnuMissileLauncher3t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter3t.Checked
                mnuHeavyBolter3t.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon3t.Checked
                mnuLascannon3t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuPintleMountedStormBolter1_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPintleMountedStormBolter1.Checked = False Then
        mnuPintleMountedStormBolter1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuPintleMountedStormBolter1.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuPintleMountedStormBolter2_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 4
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPintleMountedStormBolter2.Checked = False Then
        mnuPintleMountedStormBolter2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuPintleMountedStormBolter2.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuPintleMountedStormBolter3_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 5
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPintleMountedStormBolter3.Checked = False Then
        mnuPintleMountedStormBolter3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuPintleMountedStormBolter3.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuPlasmagun1t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun1t.Checked = False Then
        mnuPlasmagun1t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun1t.Checked
                mnuMeltagun1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer1t.Checked
                mnuFlamer1t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun1t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuPlasmagun2t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun2t.Checked = False Then
        mnuPlasmagun2t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun2t.Checked
                mnuMeltagun2t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer2t.Checked
                mnuFlamer2t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun2t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuPlasmagun3t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun3t.Checked = False Then
        mnuPlasmagun3t.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun3t.Checked
                mnuMeltagun3t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer3t.Checked
                mnuFlamer3t.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun3t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuRazorback1_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRazorback1.Checked = False Then
        mnuRazorback1.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(1) > 6 Then
            mnuRazorback1.Checked = False
            MsgBox "Too many members in squad", , "Obstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades1.Visible = True
        mnuExtraArmor1.Visible = True
        mnuHunterKillerMissile1.Visible = True
        mnuPintleMountedStormBolter1.Visible = True
        mnuSearchlight1.Visible = True
        mnuSmokeLaunchers1.Visible = True
        'Unchecked any other selected vehicle
            If mnuRhino1.Checked = True Then
                ActiveValue = 50
                RemoveValueFromGroup
            End If
            mnuRhino1.Checked = False
        End If
    Else
    'If previously checked then uncheck
        mnuRazorback1.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades1.Visible = False
        mnuExtraArmor1.Visible = False
        mnuHunterKillerMissile1.Visible = False
        mnuPintleMountedStormBolter1.Visible = False
        mnuSearchlight1.Visible = False
        mnuSmokeLaunchers1.Visible = False
        
        If mnuDozerBlades1.Checked = True Then
            mnuDozerBlades1.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1.Checked = True Then
            mnuExtraArmor1.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile1.Checked = True Then
            mnuHunterKillerMissile1.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter1.Checked = True Then
            mnuPintleMountedStormBolter1.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight1.Checked = True Then
            mnuSearchlight1.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1.Checked = True Then
            mnuSmokeLaunchers1.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 70
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuRazorback2_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRazorback2.Checked = False Then
        mnuRazorback2.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(2) > 6 Then
            mnuRazorback2.Checked = False
            MsgBox "Too many members in squad", , "Obstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades2.Visible = True
        mnuExtraArmor2.Visible = True
        mnuHunterKillerMissile2.Visible = True
        mnuPintleMountedStormBolter2.Visible = True
        mnuSearchlight2.Visible = True
        mnuSmokeLaunchers2.Visible = True
        'Unchecked any other selected vehicle
            If mnuRhino2.Checked = True Then
                ActiveValue = 50
                RemoveValueFromGroup
            End If
            mnuRhino2.Checked = False
        End If
    Else
    'If previously checked then uncheck
        mnuRazorback2.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades2.Visible = False
        mnuExtraArmor2.Visible = False
        mnuHunterKillerMissile2.Visible = False
        mnuPintleMountedStormBolter2.Visible = False
        mnuSearchlight2.Visible = False
        mnuSmokeLaunchers2.Visible = False
        
        If mnuDozerBlades2.Checked = True Then
            mnuDozerBlades2.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2.Checked = True Then
            mnuExtraArmor2.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile2.Checked = True Then
            mnuHunterKillerMissile2.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter2.Checked = True Then
            mnuPintleMountedStormBolter2.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight2.Checked = True Then
            mnuSearchlight2.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2.Checked = True Then
            mnuSmokeLaunchers2.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 70
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuRazorback3_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRazorback3.Checked = False Then
        mnuRazorback3.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(3) > 6 Then
            mnuRazorback3.Checked = False
            MsgBox "Too many members in squad", , "Obstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades3.Visible = True
        mnuExtraArmor3.Visible = True
        mnuHunterKillerMissile3.Visible = True
        mnuPintleMountedStormBolter3.Visible = True
        mnuSearchlight3.Visible = True
        mnuSmokeLaunchers3.Visible = True
        'Unchecked any other selected vehicle
            If mnuRhino3.Checked = True Then
                ActiveValue = 50
                RemoveValueFromGroup
            End If
            mnuRhino3.Checked = False
        End If
    Else
    'If previously checked then uncheck
        mnuRazorback3.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades3.Visible = False
        mnuExtraArmor3.Visible = False
        mnuHunterKillerMissile3.Visible = False
        mnuPintleMountedStormBolter3.Visible = False
        mnuSearchlight3.Visible = False
        mnuSmokeLaunchers3.Visible = False
        
        If mnuDozerBlades3.Checked = True Then
            mnuDozerBlades3.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3.Checked = True Then
            mnuExtraArmor3.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile3.Checked = True Then
            mnuHunterKillerMissile3.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter3.Checked = True Then
            mnuPintleMountedStormBolter3.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight3.Checked = True Then
            mnuSearchlight3.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3.Checked = True Then
            mnuSmokeLaunchers3.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 70
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuRhino1_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRhino1.Checked = False Then
        mnuRhino1.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(1) > 10 Then
            mnuRhino1.Checked = False
            MsgBox "Too Many members in squad", , "Obrstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades1.Visible = True
        mnuExtraArmor1.Visible = True
        mnuHunterKillerMissile1.Visible = True
        mnuPintleMountedStormBolter1.Visible = True
        mnuSearchlight1.Visible = True
        mnuSmokeLaunchers1.Visible = True
        'Unchecked any other selected vehicle
            If mnuRazorback1.Checked = True Then
                ActiveValue = 70
                RemoveValueFromGroup
            End If
            ActiveValue = 250
            mnuRazorback1.Checked = False
        End If
    
    Else
    'If previously checked then uncheck
        mnuRhino1.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades1.Visible = False
        mnuExtraArmor1.Visible = False
        mnuHunterKillerMissile1.Visible = False
        mnuPintleMountedStormBolter1.Visible = False
        mnuSearchlight1.Visible = False
        mnuSmokeLaunchers1.Visible = False
        
        If mnuDozerBlades1.Checked = True Then
            mnuDozerBlades1.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1.Checked = True Then
            mnuExtraArmor1.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile1.Checked = True Then
            mnuHunterKillerMissile1.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter1.Checked = True Then
            mnuPintleMountedStormBolter1.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight1.Checked = True Then
            mnuSearchlight1.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1.Checked = True Then
            mnuSmokeLaunchers1.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 50
End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuRhino2_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRhino2.Checked = False Then
        mnuRhino2.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(2) > 10 Then
            mnuRhino2.Checked = False
            MsgBox "Too Many members in squad", , "Obrstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades2.Visible = True
        mnuExtraArmor2.Visible = True
        mnuHunterKillerMissile2.Visible = True
        mnuPintleMountedStormBolter2.Visible = True
        mnuSearchlight2.Visible = True
        mnuSmokeLaunchers2.Visible = True
        'Unchecked any other selected vehicle
            If mnuRazorback2.Checked = True Then
                ActiveValue = 70
                RemoveValueFromGroup
            End If
            ActiveValue = 250
            mnuRazorback2.Checked = False
        End If
    
    Else
    'If previously checked then uncheck
        mnuRhino2.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades2.Visible = False
        mnuExtraArmor2.Visible = False
        mnuHunterKillerMissile2.Visible = False
        mnuPintleMountedStormBolter2.Visible = False
        mnuSearchlight2.Visible = False
        mnuSmokeLaunchers2.Visible = False
        
        If mnuDozerBlades2.Checked = True Then
            mnuDozerBlades2.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2.Checked = True Then
            mnuExtraArmor2.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile2.Checked = True Then
            mnuHunterKillerMissile2.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter2.Checked = True Then
            mnuPintleMountedStormBolter2.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight2.Checked = True Then
            mnuSearchlight2.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2.Checked = True Then
            mnuSmokeLaunchers2.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 50
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuRhino3_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRhino3.Checked = False Then
        mnuRhino3.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers(3) > 10 Then
            mnuRhino3.Checked = False
            MsgBox "Too Many members in squad", , "Obrstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
        mnuDozerBlades3.Visible = True
        mnuExtraArmor3.Visible = True
        mnuHunterKillerMissile3.Visible = True
        mnuPintleMountedStormBolter3.Visible = True
        mnuSearchlight3.Visible = True
        mnuSmokeLaunchers3.Visible = True
        'Unchecked any other selected vehicle
            If mnuRazorback3.Checked = True Then
                ActiveValue = 70
                RemoveValueFromGroup
            End If
            ActiveValue = 250
            mnuRazorback3.Checked = False
        End If
    
    Else
    'If previously checked then uncheck
        mnuRhino3.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuDozerBlades3.Visible = False
        mnuExtraArmor3.Visible = False
        mnuHunterKillerMissile3.Visible = False
        mnuPintleMountedStormBolter3.Visible = False
        mnuSearchlight3.Visible = False
        mnuSmokeLaunchers3.Visible = False
        
        If mnuDozerBlades3.Checked = True Then
            mnuDozerBlades3.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3.Checked = True Then
            mnuExtraArmor3.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile3.Checked = True Then
            mnuHunterKillerMissile3.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter3.Checked = True Then
            mnuPintleMountedStormBolter3.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight3.Checked = True Then
            mnuSearchlight3.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3.Checked = True Then
            mnuSmokeLaunchers3.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 50
End If
'Display Squad
    DisplayFastAttack

End Sub




Private Sub mnuScout11_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout11.Checked = False Then
        mnuScout11.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuSniperRifleScout15s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout11.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout15s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuScout12_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout12.Checked = False Then
        mnuScout12.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuSniperRifleScout16s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout12.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout16s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuScout13_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout13.Checked = False Then
        mnuScout13.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuSniperRifleScout17s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout13.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout17s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuScout14_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout14.Checked = False Then
        mnuScout14.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuSniperRifleScout18s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout14.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout18s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuScout15_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout15.Checked = False Then
        mnuScout15.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuSniperRifleScout19s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout15.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout19s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuScout21_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout21.Checked = False Then
        mnuScout21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuSniperRifleScout25s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout25s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout22_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout22.Checked = False Then
        mnuScout22.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuSniperRifleScout25s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout22.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout25s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout23_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout23.Checked = False Then
        mnuScout23.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuSniperRifleScout25s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout23.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout25s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout24_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout24.Checked = False Then
        mnuScout24.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuSniperRifleScout25s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout24.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout25s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout25_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout25.Checked = False Then
        mnuScout25.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuSniperRifleScout25s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout25.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout25s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub


Private Sub mnuScout31_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout31.Checked = False Then
        mnuScout31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuSniperRifleScout35s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout35s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout32_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout32.Checked = False Then
        mnuScout32.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuSniperRifleScout35s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout32.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout35s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout33_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout33.Checked = False Then
        mnuScout33.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuSniperRifleScout35s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout33.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout35s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout34_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout34.Checked = False Then
        mnuScout34.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuSniperRifleScout35s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout34.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout35s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScout35_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuScout35.Checked = False Then
        mnuScout35.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuSniperRifleScout35s.Visible = True
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuScout35.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuSniperRifleScout35s.Visible = False
        If mnuFragGrenades1s.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScoutChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 13 * 4
    
'If previously unchecked then:
    If mnuScoutChoice1.Checked = False Then
        mnuScoutChoice1.Checked = True
        AddValueToGroup
        SquadMembers(1) = SquadMembers(1) + 5
        ActiveGroup = 2
        ActiveValue = 13
        AddValueToGroup
    'disable tactical and enable Scouts squad
        mnuScout1.Visible = True
        mnuTactical1.Visible = False
    
    'If previously checked then:
        If mnuTacticalChoice1.Checked = True Then
    'clear points for tactical squad
        ActiveValue = 15 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from tactical squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1t.Checked = True Then
            mnuFragGrenades1t.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            mnuKrakGrenades1t.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 5
        If mnuSpaceMarine11.Checked = True Then
            mnuSpaceMarine11.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine12.Checked = True Then
            mnuSpaceMarine12.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine13.Checked = True Then
            mnuSpaceMarine13.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine14.Checked = True Then
            mnuSpaceMarine14.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine15.Checked = True Then
            mnuSpaceMarine15.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuFlamer1t.Checked = True Then
            mnuFlamer1t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1t.Checked = True Then
            mnuMeltagun1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1t.Checked = True Then
            mnuPlasmagun1t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter1t.Checked = True Then
            mnuHeavyBolter1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1t.Checked = True Then
            mnuMissileLauncher1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1t.Checked = True Then
            mnuLascannon1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades1.Checked = True Then
            mnuDozerBlades1.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1.Checked = True Then
            mnuExtraArmor1.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile1.Checked = True Then
            mnuHunterKillerMissile1.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter1.Checked = True Then
            mnuPintleMountedStormBolter1.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1.Checked = True Then
            mnuSearchlight1.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1.Checked = True Then
            mnuSmokeLaunchers1.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        mnuTacticalChoice1.Checked = False
        End If
    Else
    'If previously checked then:
        mnuScoutChoice1.Checked = False
        RemoveValueFromGroup
    'disable Scouts squad
        mnuScout1.Visible = False
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant1.Checked = True Then
            mnuVeteranScoutSergeant1.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1s.Checked = True Then
            mnuFragGrenades1s.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            mnuKrakGrenades1s.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuScout11.Checked = True Then
            mnuScout11.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout12.Checked = True Then
            mnuScout12.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout13.Checked = True Then
            mnuScout13.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout14.Checked = True Then
            mnuScout14.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout15.Checked = True Then
            mnuScout15.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSniperRifleSergeant1s.Checked = True Then
            mnuSniperRifleSergeant1s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout11s.Checked = True Then
            mnuSniperRifleScout11s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout12s.Checked = True Then
            mnuSniperRifleScout12s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout13s.Checked = True Then
            mnuSniperRifleScout13s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout14s.Checked = True Then
            mnuSniperRifleScout14s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout15s.Checked = True Then
            mnuSniperRifleScout15s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout16s.Checked = True Then
            mnuSniperRifleScout16s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout17s.Checked = True Then
            mnuSniperRifleScout17s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout18s.Checked = True Then
            mnuSniperRifleScout18s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout19s.Checked = True Then
            mnuSniperRifleScout19s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter1s.Checked = True Then
            mnuHeavyBolter1s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1s.Checked = True Then
            mnuMissileLauncher1s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon1s.Checked = True Then
            mnuAutocannon1s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScoutChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 13 * 4
    
'If previously unchecked then:
    If mnuScoutChoice2.Checked = False Then
        mnuScoutChoice2.Checked = True
        AddValueToGroup
        SquadMembers(2) = SquadMembers(2) + 5
        ActiveGroup = 2
        ActiveValue = 13
        AddValueToGroup
    'disable tactical and enable Scouts squad
        mnuScout2.Visible = True
        mnuTactical2.Visible = False
    
    'If previously checked then:
        If mnuTacticalChoice2.Checked = True Then
    'clear points for tactical squad
        ActiveValue = 15 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from tactical squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2t.Checked = True Then
            mnuFragGrenades2t.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            mnuKrakGrenades2t.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 5
        If mnuSpaceMarine21.Checked = True Then
            mnuSpaceMarine21.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine22.Checked = True Then
            mnuSpaceMarine22.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine23.Checked = True Then
            mnuSpaceMarine23.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine24.Checked = True Then
            mnuSpaceMarine24.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine25.Checked = True Then
            mnuSpaceMarine25.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuFlamer2t.Checked = True Then
            mnuFlamer2t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2t.Checked = True Then
            mnuMeltagun2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2t.Checked = True Then
            mnuPlasmagun2t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter2t.Checked = True Then
            mnuHeavyBolter2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2t.Checked = True Then
            mnuMissileLauncher2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2t.Checked = True Then
            mnuLascannon2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades2.Checked = True Then
            mnuDozerBlades2.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2.Checked = True Then
            mnuExtraArmor2.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile2.Checked = True Then
            mnuHunterKillerMissile2.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter2.Checked = True Then
            mnuPintleMountedStormBolter2.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2.Checked = True Then
            mnuSearchlight2.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2.Checked = True Then
            mnuSmokeLaunchers2.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        mnuTacticalChoice2.Checked = False
        End If
    Else
    'If previously checked then:
        mnuScoutChoice2.Checked = False
        RemoveValueFromGroup
    'disable Scouts squad
        mnuScout2.Visible = False
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant2.Checked = True Then
            mnuVeteranScoutSergeant2.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2s.Checked = True Then
            mnuFragGrenades2s.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2s.Checked = True Then
            mnuKrakGrenades2s.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuScout21.Checked = True Then
            mnuScout21.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout22.Checked = True Then
            mnuScout22.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout23.Checked = True Then
            mnuScout23.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout24.Checked = True Then
            mnuScout24.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout25.Checked = True Then
            mnuScout25.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSniperRifleSergeant2s.Checked = True Then
            mnuSniperRifleSergeant2s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout21s.Checked = True Then
            mnuSniperRifleScout21s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout22s.Checked = True Then
            mnuSniperRifleScout22s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout23s.Checked = True Then
            mnuSniperRifleScout23s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout24s.Checked = True Then
            mnuSniperRifleScout24s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout25s.Checked = True Then
            mnuSniperRifleScout25s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout26s.Checked = True Then
            mnuSniperRifleScout26s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout27s.Checked = True Then
            mnuSniperRifleScout27s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout28s.Checked = True Then
            mnuSniperRifleScout28s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout29s.Checked = True Then
            mnuSniperRifleScout29s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter2s.Checked = True Then
            mnuHeavyBolter2s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2s.Checked = True Then
            mnuMissileLauncher2s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon2s.Checked = True Then
            mnuAutocannon2s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuScoutChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 13 * 4
    
'If previously unchecked then:
    If mnuScoutChoice3.Checked = False Then
        mnuScoutChoice3.Checked = True
        AddValueToGroup
        SquadMembers(3) = SquadMembers(3) + 5
        ActiveGroup = 2
        ActiveValue = 13
        AddValueToGroup
    'disable tactical and enable Scouts squad
        mnuScout3.Visible = True
        mnuTactical3.Visible = False
    
    'If previously checked then:
        If mnuTacticalChoice3.Checked = True Then
    'clear points for tactical squad
        ActiveValue = 15 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from tactical squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3t.Checked = True Then
            mnuFragGrenades3t.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            mnuKrakGrenades3t.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 5
        If mnuSpaceMarine31.Checked = True Then
            mnuSpaceMarine31.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine32.Checked = True Then
            mnuSpaceMarine32.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine33.Checked = True Then
            mnuSpaceMarine33.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine34.Checked = True Then
            mnuSpaceMarine34.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine35.Checked = True Then
            mnuSpaceMarine35.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuFlamer3t.Checked = True Then
            mnuFlamer3t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3t.Checked = True Then
            mnuMeltagun3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3t.Checked = True Then
            mnuPlasmagun3t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter3t.Checked = True Then
            mnuHeavyBolter3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3t.Checked = True Then
            mnuMissileLauncher3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3t.Checked = True Then
            mnuLascannon3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades3.Checked = True Then
            mnuDozerBlades3.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3.Checked = True Then
            mnuExtraArmor3.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile3.Checked = True Then
            mnuHunterKillerMissile3.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter3.Checked = True Then
            mnuPintleMountedStormBolter3.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3.Checked = True Then
            mnuSearchlight3.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3.Checked = True Then
            mnuSmokeLaunchers3.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        mnuTacticalChoice3.Checked = False
        End If
    Else
    'If previously checked then:
        mnuScoutChoice3.Checked = False
        RemoveValueFromGroup
    'disable Scouts squad
        mnuScout3.Visible = False
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant3.Checked = True Then
            mnuVeteranScoutSergeant3.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3s.Checked = True Then
            mnuFragGrenades3s.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3s.Checked = True Then
            mnuKrakGrenades3s.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuScout31.Checked = True Then
            mnuScout31.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout32.Checked = True Then
            mnuScout32.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout33.Checked = True Then
            mnuScout33.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout34.Checked = True Then
            mnuScout34.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout35.Checked = True Then
            mnuScout35.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSniperRifleSergeant3s.Checked = True Then
            mnuSniperRifleSergeant3s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout31s.Checked = True Then
            mnuSniperRifleScout31s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout32s.Checked = True Then
            mnuSniperRifleScout32s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout33s.Checked = True Then
            mnuSniperRifleScout33s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout34s.Checked = True Then
            mnuSniperRifleScout34s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout35s.Checked = True Then
            mnuSniperRifleScout35s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout36s.Checked = True Then
            mnuSniperRifleScout36s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout37s.Checked = True Then
            mnuSniperRifleScout37s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout38s.Checked = True Then
            mnuSniperRifleScout38s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout39s.Checked = True Then
            mnuSniperRifleScout39s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter3s.Checked = True Then
            mnuHeavyBolter3s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3s.Checked = True Then
            mnuMissileLauncher3s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon3s.Checked = True Then
            mnuAutocannon3s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSearchlight1_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight1.Checked = False Then
        mnuSearchlight1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight1.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSearchlight2_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 4
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight2.Checked = False Then
        mnuSearchlight2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight2.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSearchlight3_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 5
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight3.Checked = False Then
        mnuSearchlight3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight3.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSmokeLaunchers1_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 3
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers1.Checked = False Then
        mnuSmokeLaunchers1.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers1.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSmokeLaunchers2_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 4
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers2.Checked = False Then
        mnuSmokeLaunchers2.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers2.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSmokeLaunchers3_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 5
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers3.Checked = False Then
        mnuSmokeLaunchers3.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers3.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayFastAttack

End Sub



Private Sub mnuSniperRifleScout11s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout11s.Checked = False Then
        mnuSniperRifleScout11s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1s.Checked
                mnuMissileLauncher1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon1s.Checked
                mnuAutocannon1s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter1s.Checked
                mnuHeavyBolter1s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuSniperRifleScout11s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout12s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout12s.Checked = False Then
        mnuSniperRifleScout12s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout12s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout13s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout13s.Checked = False Then
        mnuSniperRifleScout13s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout13s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout14s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout14s.Checked = False Then
        mnuSniperRifleScout14s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout14s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub



Private Sub mnuSniperRifleScout15s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout15s.Checked = False Then
        mnuSniperRifleScout15s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout15s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSniperRifleScout16s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout16s.Checked = False Then
        mnuSniperRifleScout16s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout16s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSniperRifleScout17s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout17s.Checked = False Then
        mnuSniperRifleScout17s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout17s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSniperRifleScout18s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout18s.Checked = False Then
        mnuSniperRifleScout18s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout18s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSniperRifleScout19s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout19s.Checked = False Then
        mnuSniperRifleScout19s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout19s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout21s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout21s.Checked = False Then
        mnuSniperRifleScout21s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2s.Checked
                mnuMissileLauncher2s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon2s.Checked
                mnuAutocannon2s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter2s.Checked
                mnuHeavyBolter2s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuSniperRifleScout21s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub



Private Sub mnuSniperRifleScout22s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout22s.Checked = False Then
        mnuSniperRifleScout22s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout22s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout23s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout23s.Checked = False Then
        mnuSniperRifleScout23s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout23s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout24s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout24s.Checked = False Then
        mnuSniperRifleScout24s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout24s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout25s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout25s.Checked = False Then
        mnuSniperRifleScout25s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout25s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout26s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout26s.Checked = False Then
        mnuSniperRifleScout26s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout26s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout27s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout27s.Checked = False Then
        mnuSniperRifleScout27s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout27s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout28s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout28s.Checked = False Then
        mnuSniperRifleScout28s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout28s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout29s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout29s.Checked = False Then
        mnuSniperRifleScout29s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout29s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub



Private Sub mnuSniperRifleScout31s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout31s.Checked = False Then
        mnuSniperRifleScout31s.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3s.Checked
                mnuMissileLauncher3s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuAutocannon3s.Checked
                mnuAutocannon3s.Checked = False
                ActiveValue = 20
                RemoveValueFromGroup
            Case mnuHeavyBolter3s.Checked
                mnuHeavyBolter3s.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuSniperRifleScout31s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSniperRifleScout32s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout32s.Checked = False Then
        mnuSniperRifleScout32s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout32s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout33s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout33s.Checked = False Then
        mnuSniperRifleScout33s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout33s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout34s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout34s.Checked = False Then
        mnuSniperRifleScout34s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout34s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout35s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout35s.Checked = False Then
        mnuSniperRifleScout35s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout35s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout36s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout36s.Checked = False Then
        mnuSniperRifleScout36s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout36s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout37s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout37s.Checked = False Then
        mnuSniperRifleScout37s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout37s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout38s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout38s.Checked = False Then
        mnuSniperRifleScout38s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout38s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleScout39s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleScout39s.Checked = False Then
        mnuSniperRifleScout39s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleScout39s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleSergeant1s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleSergeant1s.Checked = False Then
        mnuSniperRifleSergeant1s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleSergeant1s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSniperRifleSergeant2s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleSergeant2s.Checked = False Then
        mnuSniperRifleSergeant2s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleSergeant2s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSniperRifleSergeant3s_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuSniperRifleSergeant3s.Checked = False Then
        mnuSniperRifleSergeant3s.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuSniperRifleSergeant3s.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine11_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine11.Checked = False Then
        mnuSpaceMarine11.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine11.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuSpaceMarine12_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine12.Checked = False Then
        mnuSpaceMarine12.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine12.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSpaceMarine13_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine13.Checked = False Then
        mnuSpaceMarine13.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine13.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSpaceMarine14_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine14.Checked = False Then
        mnuSpaceMarine14.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine14.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuSpaceMarine15_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine15.Checked = False Then
        mnuSpaceMarine15.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine15.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        If mnuFragGrenades1t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack
End Sub



Private Sub mnuSpaceMarine21_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine21.Checked = False Then
        mnuSpaceMarine21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine22_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine22.Checked = False Then
        mnuSpaceMarine22.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine22.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine23_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine23.Checked = False Then
        mnuSpaceMarine23.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine23.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine24_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine24.Checked = False Then
        mnuSpaceMarine24.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine24.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine25_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine25.Checked = False Then
        mnuSpaceMarine25.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine25.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        If mnuFragGrenades2t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine31_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine31.Checked = False Then
        mnuSpaceMarine31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine32_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine32.Checked = False Then
        mnuSpaceMarine32.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine32.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine33_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine33.Checked = False Then
        mnuSpaceMarine33.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine33.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine34_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine34.Checked = False Then
        mnuSpaceMarine34.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine34.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuSpaceMarine35_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuSpaceMarine35.Checked = False Then
        mnuSpaceMarine35.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuSpaceMarine35.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        If mnuFragGrenades3t.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayFastAttack

End Sub







Private Sub mnuTacticalChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 6
    ActiveValue = 15 * 4
    
'If previously unchecked then:
    If mnuTacticalChoice1.Checked = False Then
        mnuTacticalChoice1.Checked = True
    'Add Space Marines
        AddValueToGroup
        ActiveValue = 15
    'Add Sergeant
        ActiveGroup = 2
        AddValueToGroup
        SquadMembers(1) = SquadMembers(1) + 5
    'disable scouts and enable tactical squad
        mnuScout1.Visible = False
        mnuTactical1.Visible = True
    
    'If previously checked:
        If mnuScoutChoice1.Checked = True Then
    'clear points from Scout Squad
        ActiveValue = 13 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant1.Checked = True Then
            mnuVeteranScoutSergeant1.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1s.Checked = True Then
            mnuFragGrenades1s.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1s.Checked = True Then
            mnuKrakGrenades1s.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        mnuScoutChoice1.Checked = True
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuScout11.Checked = True Then
            mnuScout11.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout12.Checked = True Then
            mnuScout12.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout13.Checked = True Then
            mnuScout13.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout14.Checked = True Then
            mnuScout14.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuScout15.Checked = True Then
            mnuScout15.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSniperRifleSergeant1s.Checked = True Then
            mnuSniperRifleSergeant1s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout11s.Checked = True Then
            mnuSniperRifleScout11s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout12s.Checked = True Then
            mnuSniperRifleScout12s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout13s.Checked = True Then
            mnuSniperRifleScout13s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout14s.Checked = True Then
            mnuSniperRifleScout14s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout15s.Checked = True Then
            mnuSniperRifleScout15s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout16s.Checked = True Then
            mnuSniperRifleScout16s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout17s.Checked = True Then
            mnuSniperRifleScout17s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout18s.Checked = True Then
            mnuSniperRifleScout18s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout19s.Checked = True Then
            mnuSniperRifleScout19s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter1s.Checked = True Then
            mnuHeavyBolter1s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1s.Checked = True Then
            mnuMissileLauncher1s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon1s.Checked = True Then
            mnuAutocannon1s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        End If
        mnuScoutChoice1.Checked = False
    Else
    'If previously checked then:
        mnuTacticalChoice1.Checked = False
        RemoveValueFromGroup
    'disable tactical squad
        mnuTactical1.Visible = False
    'clear points from tactical squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1t.Checked = True Then
            mnuFragGrenades1t.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1t.Checked = True Then
            mnuKrakGrenades1t.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 5
        If mnuSpaceMarine11.Checked = True Then
            mnuSpaceMarine11.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine12.Checked = True Then
            mnuSpaceMarine12.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine13.Checked = True Then
            mnuSpaceMarine13.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine14.Checked = True Then
            mnuSpaceMarine14.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuSpaceMarine15.Checked = True Then
            mnuSpaceMarine15.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuFlamer1t.Checked = True Then
            mnuFlamer1t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1t.Checked = True Then
            mnuMeltagun1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1t.Checked = True Then
            mnuPlasmagun1t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter1t.Checked = True Then
            mnuHeavyBolter1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1t.Checked = True Then
            mnuMissileLauncher1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1t.Checked = True Then
            mnuLascannon1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades1.Checked = True Then
            mnuDozerBlades1.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1.Checked = True Then
            mnuExtraArmor1.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile1.Checked = True Then
            mnuHunterKillerMissile1.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter1.Checked = True Then
            mnuPintleMountedStormBolter1.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1.Checked = True Then
            mnuSearchlight1.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1.Checked = True Then
            mnuSmokeLaunchers1.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayFastAttack
End Sub
Private Sub mnuTacticalChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 6
    ActiveValue = 15 * 4
    
'If previously unchecked then:
    If mnuTacticalChoice2.Checked = False Then
        mnuTacticalChoice2.Checked = True
    'Add Space Marines
        AddValueToGroup
        ActiveValue = 15
    'Add Sergeant
        ActiveGroup = 2
        AddValueToGroup
        SquadMembers(2) = SquadMembers(2) + 5
    'disable scouts and enable tactical squad
        mnuScout2.Visible = False
        mnuTactical2.Visible = True
    
    'If previously checked:
        If mnuScoutChoice2.Checked = True Then
    'clear points from Scout Squad
        ActiveValue = 13 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant2.Checked = True Then
            mnuVeteranScoutSergeant2.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2s.Checked = True Then
            mnuFragGrenades2s.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2s.Checked = True Then
            mnuKrakGrenades2s.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        mnuScoutChoice2.Checked = True
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuScout21.Checked = True Then
            mnuScout21.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout22.Checked = True Then
            mnuScout22.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout23.Checked = True Then
            mnuScout23.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout24.Checked = True Then
            mnuScout24.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuScout25.Checked = True Then
            mnuScout25.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSniperRifleSergeant2s.Checked = True Then
            mnuSniperRifleSergeant2s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout21s.Checked = True Then
            mnuSniperRifleScout21s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout22s.Checked = True Then
            mnuSniperRifleScout22s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout23s.Checked = True Then
            mnuSniperRifleScout23s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout24s.Checked = True Then
            mnuSniperRifleScout24s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout25s.Checked = True Then
            mnuSniperRifleScout25s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout26s.Checked = True Then
            mnuSniperRifleScout26s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout27s.Checked = True Then
            mnuSniperRifleScout27s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout28s.Checked = True Then
            mnuSniperRifleScout28s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout29s.Checked = True Then
            mnuSniperRifleScout29s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter2s.Checked = True Then
            mnuHeavyBolter2s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2s.Checked = True Then
            mnuMissileLauncher2s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon2s.Checked = True Then
            mnuAutocannon2s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        End If
        mnuScoutChoice2.Checked = False
    Else
    'If previously checked then:
        mnuTacticalChoice2.Checked = False
        RemoveValueFromGroup
    'disable tactical squad
        mnuTactical2.Visible = False
    'clear points from tactical squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2t.Checked = True Then
            mnuFragGrenades2t.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2t.Checked = True Then
            mnuKrakGrenades2t.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 5
        If mnuSpaceMarine21.Checked = True Then
            mnuSpaceMarine21.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine22.Checked = True Then
            mnuSpaceMarine22.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine23.Checked = True Then
            mnuSpaceMarine23.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine24.Checked = True Then
            mnuSpaceMarine24.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuSpaceMarine25.Checked = True Then
            mnuSpaceMarine25.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuFlamer2t.Checked = True Then
            mnuFlamer2t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2t.Checked = True Then
            mnuMeltagun2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2t.Checked = True Then
            mnuPlasmagun2t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter2t.Checked = True Then
            mnuHeavyBolter2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2t.Checked = True Then
            mnuMissileLauncher2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2t.Checked = True Then
            mnuLascannon2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades2.Checked = True Then
            mnuDozerBlades2.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2.Checked = True Then
            mnuExtraArmor2.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile2.Checked = True Then
            mnuHunterKillerMissile2.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter2.Checked = True Then
            mnuPintleMountedStormBolter2.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2.Checked = True Then
            mnuSearchlight2.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2.Checked = True Then
            mnuSmokeLaunchers2.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuTacticalChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 6
    ActiveValue = 15 * 4
    
'If previously unchecked then:
    If mnuTacticalChoice3.Checked = False Then
        mnuTacticalChoice3.Checked = True
    'Add Space Marines
        AddValueToGroup
        ActiveValue = 15
    'Add Sergeant
        ActiveGroup = 2
        AddValueToGroup
        SquadMembers(3) = SquadMembers(3) + 5
    'disable scouts and enable tactical squad
        mnuScout3.Visible = False
        mnuTactical3.Visible = True
    
    'If previously checked:
        If mnuScoutChoice3.Checked = True Then
    'clear points from Scout Squad
        ActiveValue = 13 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Scouts squad
        If mnuVeteranScoutSergeant3.Checked = True Then
            mnuVeteranScoutSergeant3.Checked = False
            ActiveValue = 13
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3s.Checked = True Then
            mnuFragGrenades3s.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3s.Checked = True Then
            mnuKrakGrenades3s.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        mnuScoutChoice3.Checked = True
        ActiveValue = 13
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuScout31.Checked = True Then
            mnuScout31.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout32.Checked = True Then
            mnuScout32.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout33.Checked = True Then
            mnuScout33.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout34.Checked = True Then
            mnuScout34.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuScout35.Checked = True Then
            mnuScout35.Checked = False
            ActiveValue = 13
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSniperRifleSergeant3s.Checked = True Then
            mnuSniperRifleSergeant3s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout31s.Checked = True Then
            mnuSniperRifleScout31s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout32s.Checked = True Then
            mnuSniperRifleScout32s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout33s.Checked = True Then
            mnuSniperRifleScout33s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout34s.Checked = True Then
            mnuSniperRifleScout34s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout35s.Checked = True Then
            mnuSniperRifleScout35s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout36s.Checked = True Then
            mnuSniperRifleScout36s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout37s.Checked = True Then
            mnuSniperRifleScout37s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout38s.Checked = True Then
            mnuSniperRifleScout38s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuSniperRifleScout39s.Checked = True Then
            mnuSniperRifleScout39s.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter3s.Checked = True Then
            mnuHeavyBolter3s.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3s.Checked = True Then
            mnuMissileLauncher3s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAutocannon3s.Checked = True Then
            mnuAutocannon3s.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        End If
        mnuScoutChoice3.Checked = False
    Else
    'If previously checked then:
        mnuTacticalChoice3.Checked = False
        RemoveValueFromGroup
    'disable tactical squad
        mnuTactical3.Visible = False
    'clear points from tactical squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3t.Checked = True Then
            mnuFragGrenades3t.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3t.Checked = True Then
            mnuKrakGrenades3t.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 5
        If mnuSpaceMarine31.Checked = True Then
            mnuSpaceMarine31.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine32.Checked = True Then
            mnuSpaceMarine32.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine33.Checked = True Then
            mnuSpaceMarine33.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine34.Checked = True Then
            mnuSpaceMarine34.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuSpaceMarine35.Checked = True Then
            mnuSpaceMarine35.Checked = False
            ActiveValue = 15
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuFlamer3t.Checked = True Then
            mnuFlamer3t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3t.Checked = True Then
            mnuMeltagun3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3t.Checked = True Then
            mnuPlasmagun3t.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuHeavyBolter3t.Checked = True Then
            mnuHeavyBolter3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3t.Checked = True Then
            mnuMissileLauncher3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3t.Checked = True Then
            mnuLascannon3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuDozerBlades3.Checked = True Then
            mnuDozerBlades3.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3.Checked = True Then
            mnuExtraArmor3.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile3.Checked = True Then
            mnuHunterKillerMissile3.Checked = False
            ActiveValue = 15
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter3.Checked = True Then
            mnuPintleMountedStormBolter3.Checked = False
            ActiveValue = 10
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3.Checked = True Then
            mnuSearchlight3.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3.Checked = True Then
            mnuSmokeLaunchers3.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuVeteranScoutSergeant1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 2
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuVeteranScoutSergeant1.Checked = False Then
        mnuVeteranScoutSergeant1.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranScoutSergeant1.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub

Private Sub mnuVeteranScoutSergeant2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 2
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuVeteranScoutSergeant2.Checked = False Then
        mnuVeteranScoutSergeant2.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranScoutSergeant2.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuVeteranScoutSergeant3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 2
    ActiveValue = 13
    
'If previously unchecked then:
    If mnuVeteranScoutSergeant3.Checked = False Then
        mnuVeteranScoutSergeant3.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranScoutSergeant3.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuVeteranSergeant1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 3
    ActiveGroup = 2
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuVeteranSergeant1.Checked = False Then
        mnuVeteranSergeant1.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranSergeant1.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack
End Sub


Private Sub mnuVeteranSergeant2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 4
    ActiveGroup = 2
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuVeteranSergeant2.Checked = False Then
        mnuVeteranSergeant2.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranSergeant2.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

Private Sub mnuVeteranSergeant3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 5
    ActiveGroup = 2
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuVeteranSergeant3.Checked = False Then
        mnuVeteranSergeant3.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuVeteranSergeant3.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayFastAttack

End Sub

