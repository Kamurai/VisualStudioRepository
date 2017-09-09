VERSION 5.00
Begin VB.Form frmSpaceMarinesElites 
   Caption         =   "Space Marines Elites"
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
   Begin VB.Menu mnue1 
      Caption         =   "Elites 1"
      Begin VB.Menu mnuVeteranChoice1 
         Caption         =   "Veteran Squad"
      End
      Begin VB.Menu mnuVeteran1 
         Caption         =   "Veteran Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuVeteranDefault1 
            Caption         =   "5 Veteran Marines 90"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant1 
            Caption         =   "Veteran Sergeant 12"
         End
         Begin VB.Menu mnuVeteranMarine11 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine12 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine13 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine14 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine15 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuFragGrenades1v 
            Caption         =   "Frag Grenades 01 per"
         End
         Begin VB.Menu mnuKrakGrenades1v 
            Caption         =   "Krak Grenades 02 per"
         End
         Begin VB.Menu mnuTerminatorHonors1v 
            Caption         =   "Terminator Honors 10 per"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuFlamer1v 
            Caption         =   "Flamer 06"
         End
         Begin VB.Menu mnuMeltagun1v 
            Caption         =   "Meltagun 10"
         End
         Begin VB.Menu mnuPlasmagun1v 
            Caption         =   "Plasmagun 06"
         End
         Begin VB.Menu mnuHeavyBolter1v 
            Caption         =   "Heavy Bolter 05"
         End
         Begin VB.Menu mnuMissileLauncher1v 
            Caption         =   "Missile launcher 10"
         End
         Begin VB.Menu mnuLascannon1v 
            Caption         =   "Lascannon 15"
         End
         Begin VB.Menu mnuRhino1 
            Caption         =   "Rhino 50"
         End
         Begin VB.Menu mnuRazorback1 
            Caption         =   "Razorback 70"
         End
         Begin VB.Menu mnuDozerBlades1 
            Caption         =   "Dozer Blades 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuExtraArmor1 
            Caption         =   "Extra Armor 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuHunterKillerMissile1 
            Caption         =   "Hunter-Killer Missile 15"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuPintleMountedStormBolter1 
            Caption         =   "Pintle-Mounted Storm Bolter 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuSearchlight1 
            Caption         =   "Searchlight 01"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuSmokeLaunchers1 
            Caption         =   "Smoke Launchers 03"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuTerminatorChoice1 
         Caption         =   "Terminator Squad"
      End
      Begin VB.Menu mnuAssaultTerminatorChoice1 
         Caption         =   "Assault Terminator Squad"
      End
      Begin VB.Menu mnuTerminator1 
         Caption         =   "Terminator Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuTerminatorDefault1 
            Caption         =   "Terminator Sergeant and 4 Terminators 210"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuSergeantEquipment1 
            Caption         =   "Sergeant Equipment"
            Begin VB.Menu mnuChainfistSergeant1t 
               Caption         =   "Chainfist 30"
            End
            Begin VB.Menu mnuLightningClawSergeant1t 
               Caption         =   "Lightning Claw 25"
            End
            Begin VB.Menu mnuLightningClawsSergeant1t 
               Caption         =   "Lightning Claws 30"
            End
            Begin VB.Menu mnuPowerFistSergeant1t 
               Caption         =   "Power Fist 25"
            End
            Begin VB.Menu mnuPowerWeaponSergeant1t 
               Caption         =   "Power Weapon 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuStormShieldSergeant1t 
               Caption         =   "Storm Shield 10"
            End
            Begin VB.Menu mnuThunderHammerSergeant1t 
               Caption         =   "Thunder Hammer 30"
            End
            Begin VB.Menu mnuBolterFlamerSergeant1t 
               Caption         =   "Bolter-Flamer 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSergeant1t 
               Caption         =   "Bolter-Grenade Launcher 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSergeant1t 
               Caption         =   "Bolter-Plasmagun 15"
            End
            Begin VB.Menu mnuBolterMeltagunSergeant1t 
               Caption         =   "Bolter-Meltagun 15"
            End
            Begin VB.Menu mnuStormBolterSergeant1t 
               Caption         =   "Storm Bolter 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuAuspexSergeant1t 
               Caption         =   "Auspex 02"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSergeant1t 
               Caption         =   "Master-Crafted Weapon 15"
            End
            Begin VB.Menu mnuPuritySealsSergeant1t 
               Caption         =   "Purity Seals 05"
            End
            Begin VB.Menu mnuTeleportHomerSergeant1t 
               Caption         =   "Teleport Homer 05"
            End
         End
         Begin VB.Menu mnuChainfist11t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon11t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer11t 
            Caption         =   "Heavy Flamer 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher11t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist12t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon12t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer12t 
            Caption         =   "Heavy Flamer 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher12t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist13t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuChainfist14t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuTerminator11 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist15t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator12 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist16t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator13 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist17t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator14 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist18t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator15 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist19t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuDreadnoughtChoice1 
         Caption         =   "Dreadnought"
      End
      Begin VB.Menu mnuDreadnought1 
         Caption         =   "Dreadnought "
         Visible         =   0   'False
         Begin VB.Menu mnuDreadnoughtDefault1 
            Caption         =   "Dreadnought 75"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon1d 
            Caption         =   "Assault Cannon 30"
         End
         Begin VB.Menu mnuTwinLinkedLascannon1d 
            Caption         =   "Twin-Linked Lascannon 50"
         End
         Begin VB.Menu mnuTwinLinkedHeavyBolter1d 
            Caption         =   "Twin-Linked Heavy Bolter 30"
         End
         Begin VB.Menu mnuMultiMelta1d 
            Caption         =   "Multi-Melta 40"
         End
         Begin VB.Menu mnuPlasmaCannon1d 
            Caption         =   "Plasma Cannon 40"
         End
         Begin VB.Menu mnuTwinLinkedAutocannon1d 
            Caption         =   "Tiwn-Linked Autocannon 35"
         End
         Begin VB.Menu mnuExtraArmor1d 
            Caption         =   "Extra Armor 05"
         End
         Begin VB.Menu mnuSearchlight1d 
            Caption         =   "Searchlight 01"
         End
         Begin VB.Menu mnuSmokeLaunchers1d 
            Caption         =   "Smoke Launchers 03"
         End
         Begin VB.Menu mnuHeavyFlamer1d 
            Caption         =   "Heavy Flamer (replaces storm bolter) 10"
         End
         Begin VB.Menu mnuMissileLauncher1d 
            Caption         =   "Missile Launcher (replaces combat weapon) 10"
         End
      End
   End
   Begin VB.Menu mnue2 
      Caption         =   "Elites 2"
      Begin VB.Menu mnuVeteranChoice2 
         Caption         =   "Veteran Squad"
      End
      Begin VB.Menu mnuVeteran2 
         Caption         =   "Veteran Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuVeteranDefault2 
            Caption         =   "5 Veteran Marines 90"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant2 
            Caption         =   "Veteran Sergeant 12"
         End
         Begin VB.Menu mnuVeteranMarine21 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine22 
            Caption         =   "Veteran Marine 15"
         End
         Begin VB.Menu mnuVeteranMarine23 
            Caption         =   "Veteran Marine 15"
         End
         Begin VB.Menu mnuVeteranMarine24 
            Caption         =   "Veteran Marine 15"
         End
         Begin VB.Menu mnuVeteranMarine25 
            Caption         =   "Veteran Marine 15"
         End
         Begin VB.Menu mnuFragGrenades2v 
            Caption         =   "Frag Grenades 01 per"
         End
         Begin VB.Menu mnuKrakGrenades2v 
            Caption         =   "Krak Greandes 02 per"
         End
         Begin VB.Menu mnuTerminatorHonors2v 
            Caption         =   "Terminator Honors 10 per"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuFlamer2v 
            Caption         =   "Flamer 06"
         End
         Begin VB.Menu mnuMeltagun2v 
            Caption         =   "Meltagun 10"
         End
         Begin VB.Menu mnuPlasmagun2v 
            Caption         =   "Plasmagun 06"
         End
         Begin VB.Menu mnuHeavyBolter2v 
            Caption         =   "Heavy Bolter 05"
         End
         Begin VB.Menu mnuMissileLauncher2v 
            Caption         =   "Missile Launcher 10"
         End
         Begin VB.Menu mnuLascannon2v 
            Caption         =   "Lascannon 15"
         End
         Begin VB.Menu mnuRhino2 
            Caption         =   "Rhino 50"
         End
         Begin VB.Menu mnuRazorback2 
            Caption         =   "Razorback 70"
         End
         Begin VB.Menu mnuDozerBlades2 
            Caption         =   "DozerBlades 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuExtraArmor2 
            Caption         =   "Extra Armor 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuHunterKillerMissile2 
            Caption         =   "Hunter-Killer Missile 15"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuPintleMountedStormBolter2 
            Caption         =   "Pintle-Mounted Storm Bolter 10"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuSearchlight2 
            Caption         =   "Searchlight 01"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuSmokeLaunchers2 
            Caption         =   "Smoke Launchers 03"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuTerminatorChoice2 
         Caption         =   "Terminator Squad"
      End
      Begin VB.Menu mnuAssaultTerminatorChoice2 
         Caption         =   "Assault Terminator Squad"
      End
      Begin VB.Menu mnuTerminator2 
         Caption         =   "Terminator Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuScoutDefault2 
            Caption         =   "Terminator Sergeant and 4 Terminators 210"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuSergeantEquipment2 
            Caption         =   "Sergeant Equipment"
            Begin VB.Menu mnuChainfistSergeant2t 
               Caption         =   "Chainfist 30"
            End
            Begin VB.Menu mnuLightningClawSergeant2t 
               Caption         =   "Lightning Claw 25"
            End
            Begin VB.Menu mnuLightningClawsSergeant2t 
               Caption         =   "Lightning Claws 30"
            End
            Begin VB.Menu mnuPowerFistSergeant2t 
               Caption         =   "Power Fist 25"
            End
            Begin VB.Menu mnuPowerWeaponSergeant2t 
               Caption         =   "Power Weapon 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuStormShieldSergeant2t 
               Caption         =   "Storm Shield 10"
            End
            Begin VB.Menu mnuThunderHammerSergeant2t 
               Caption         =   "Thunder Hammer 30"
            End
            Begin VB.Menu mnuBolterFlamerSergeant2t 
               Caption         =   "Bolter-Flamer 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSergeant2t 
               Caption         =   "Bolter-Grenade Launcher 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSergeant2t 
               Caption         =   "Bolter-Plasmagun 15"
            End
            Begin VB.Menu mnuBolterMeltagunSergeant2t 
               Caption         =   "Bolter-Meltagun 15"
            End
            Begin VB.Menu mnuStormBolterSergeant2t 
               Caption         =   "Storm Bolter 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuAuspexSergeant2t 
               Caption         =   "Auspex 02"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSergeant2t 
               Caption         =   "Master-Crafted Weapon 15"
            End
            Begin VB.Menu mnuPuritySealsSergeant2t 
               Caption         =   "Purity Seals 05"
            End
            Begin VB.Menu mnuTeleportHomerSergeant2t 
               Caption         =   "Teleport Homer 05"
            End
         End
         Begin VB.Menu mnuChainfist21t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon21t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer21t 
            Caption         =   "Heavy Flamer 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher21t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist22t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon22t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer22t 
            Caption         =   "Heavy Flamer 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher22t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist23t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuChainfist24t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuTerminator21 
            Caption         =   "Terminator 13"
         End
         Begin VB.Menu mnuChainfist25t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator22 
            Caption         =   "Terminator 13"
         End
         Begin VB.Menu mnuChainfist26t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator23 
            Caption         =   "Terminator 13"
         End
         Begin VB.Menu mnuChainfist27t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator24 
            Caption         =   "Terminator 13"
         End
         Begin VB.Menu mnuChainfist28t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator25 
            Caption         =   "Terminator 13"
         End
         Begin VB.Menu mnuChainfist29t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuDreadnoughtChoice2 
         Caption         =   "Dreadnought"
      End
      Begin VB.Menu mnuDreadnought2 
         Caption         =   "Dreadnought"
         Visible         =   0   'False
         Begin VB.Menu mnuDreadnoughtDefault2 
            Caption         =   "Dreadnought 75"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon2d 
            Caption         =   "Assault Cannon 30"
         End
         Begin VB.Menu mnuTwinLinkedLascannon2d 
            Caption         =   "Twin-Linked Lascannon 50"
         End
         Begin VB.Menu mnuTwinLinkedHeavyBolter2d 
            Caption         =   "Twin-Linked Heavy Bolter 30"
         End
         Begin VB.Menu mnuMultiMelta2d 
            Caption         =   "Multi-Melta 40"
         End
         Begin VB.Menu mnuPlasmaCannon2d 
            Caption         =   "Plasma Cannon 40"
         End
         Begin VB.Menu mnuTwinLinkedAutocannon2d 
            Caption         =   "Twin-Linked Autocannon 35"
         End
         Begin VB.Menu mnuExtraArmor2d 
            Caption         =   "Extra Armor 05"
         End
         Begin VB.Menu mnuSearchlight2d 
            Caption         =   "Searchlight 01"
         End
         Begin VB.Menu mnuSmokeLaunchers2d 
            Caption         =   "SmokeLaunchers 03"
         End
         Begin VB.Menu mnuHeavyFlamer2d 
            Caption         =   "Heavy Flamer (replaces storm bolter)  10"
         End
         Begin VB.Menu mnuMissileLauncher2d 
            Caption         =   "Missile Launcher (replaces combat weapon)  10"
         End
      End
   End
   Begin VB.Menu mnue3 
      Caption         =   "Elites 3"
      Begin VB.Menu mnuVeteranChoice3 
         Caption         =   "Veteran Squad"
      End
      Begin VB.Menu mnuVeteran3 
         Caption         =   "Veteran Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuVeteranDefault3 
            Caption         =   "5 Veteran Marines 90"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuVeteranSergeant3 
            Caption         =   "Veteran Sergeant 12"
         End
         Begin VB.Menu mnuVeteranMarine31 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine32 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine33 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine34 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuVeteranMarine35 
            Caption         =   "Veteran Marine 18"
         End
         Begin VB.Menu mnuFragGrenades3v 
            Caption         =   "Frag Grenades 01 per"
         End
         Begin VB.Menu mnuKrakGrenades3v 
            Caption         =   "Krak Grenades 02 per"
         End
         Begin VB.Menu mnuTerminatorHonors3v 
            Caption         =   "Terminator Honors 10 per"
         End
         Begin VB.Menu mnuFlamer3v 
            Caption         =   "Flamer 06"
         End
         Begin VB.Menu mnuMeltagun3v 
            Caption         =   "Meltagun 10"
         End
         Begin VB.Menu mnuPlasmagun3v 
            Caption         =   "Plasmagun 06"
         End
         Begin VB.Menu mnuHeavyBolter3v 
            Caption         =   "Heavy Bolter 05"
         End
         Begin VB.Menu mnuMissileLauncher3v 
            Caption         =   "Missile Launcher 10"
         End
         Begin VB.Menu mnuLascannon3v 
            Caption         =   "Lascannon 15"
         End
         Begin VB.Menu mnuRhino3 
            Caption         =   "Rhino 50"
         End
         Begin VB.Menu mnuRazorback3 
            Caption         =   "Razorback 70"
         End
         Begin VB.Menu mnuDozerBlades3 
            Caption         =   "Dozer Blades 05"
         End
         Begin VB.Menu mnuExtraArmor3 
            Caption         =   "Extra Armor 05"
         End
         Begin VB.Menu mnuHunterKillerMissile3 
            Caption         =   "Hunter-Killer Missile 15"
         End
         Begin VB.Menu mnuPintleMountedStormBolter3 
            Caption         =   "Pintle-Mounted Storm Bolter 10"
         End
         Begin VB.Menu mnuSearchlight3 
            Caption         =   "Searchlight 01"
         End
         Begin VB.Menu mnuSmokeLaunchers3 
            Caption         =   "Smoke Launchers 03"
         End
      End
      Begin VB.Menu mnuTerminatorChoice3 
         Caption         =   "Terminator Squad"
      End
      Begin VB.Menu mnuAssaultTerminatorChoice3 
         Caption         =   "AssaultTerminator Squad"
      End
      Begin VB.Menu mnuTerminator3 
         Caption         =   "Terminator Squad"
         Visible         =   0   'False
         Begin VB.Menu mnuTerminatorDefault3 
            Caption         =   "Terminator Sergeant and 4 Terminators 210"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuSergeantEquipment3 
            Caption         =   "Sergeant Equipment"
            Begin VB.Menu mnuChainfistSergeant3t 
               Caption         =   "Chainfist 30"
            End
            Begin VB.Menu mnuLightningClawSergeant3t 
               Caption         =   "Lightning Claw 25"
            End
            Begin VB.Menu mnuLightningClawsSergeant3t 
               Caption         =   "Lightning Claws 30"
            End
            Begin VB.Menu mnuPowerFistSergeant3t 
               Caption         =   "Power Fist 25"
            End
            Begin VB.Menu mnuPowerWeaponSergeant3t 
               Caption         =   "Power Weapon 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuStormShieldSergeant3t 
               Caption         =   "Storm Shield 10"
            End
            Begin VB.Menu mnuThunderHammerSergeant3t 
               Caption         =   "Thunder Hammer 30"
            End
            Begin VB.Menu mnuBolterFlamerSergeant3t 
               Caption         =   "Bolter-Flamer 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSergeant3t 
               Caption         =   "Bolter-Grenade Launcher 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSergeant3t 
               Caption         =   "Bolter-Plasmagun 15"
            End
            Begin VB.Menu mnuBolterMeltagunSergeant3t 
               Caption         =   "Bolter-Meltagun 15"
            End
            Begin VB.Menu mnuStormBolterSergeant3t 
               Caption         =   "Storm Bolter 00"
               Checked         =   -1  'True
               Enabled         =   0   'False
            End
            Begin VB.Menu mnuAuspexSergeant3t 
               Caption         =   "Auspex 02"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSergeant3t 
               Caption         =   "Master-Crafted Weapon 15"
            End
            Begin VB.Menu mnuPuritySealsSergeant3t 
               Caption         =   "Purity Seals 05"
            End
            Begin VB.Menu mnuTeleportHomerSergeant3t 
               Caption         =   "Teleport Homer 05"
            End
         End
         Begin VB.Menu mnuChainfist31t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon31t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer31t 
            Caption         =   "Heavy Flamerr 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher31t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist32t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuAssaultCannon32t 
            Caption         =   "Assault Cannon 20"
         End
         Begin VB.Menu mnuHeavyFlamer32t 
            Caption         =   "Heavy Flamer 10"
         End
         Begin VB.Menu mnuCycloneMissileLauncher32t 
            Caption         =   "Cyclone Missile Launcher 20"
         End
         Begin VB.Menu mnuChainfist33t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuChainfist34t 
            Caption         =   "Chainfist 05"
         End
         Begin VB.Menu mnuTerminator31 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist35t 
            Caption         =   "Chainfsit 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator32 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist36t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator33 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist37t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator34 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist38t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuTerminator35 
            Caption         =   "Terminator 42"
         End
         Begin VB.Menu mnuChainfist39t 
            Caption         =   "Chainfist 05"
            Visible         =   0   'False
         End
      End
      Begin VB.Menu mnuDreadnoughtChoice3 
         Caption         =   "Dreadnought"
      End
      Begin VB.Menu mnuDreadnought3 
         Caption         =   "Dreadnought"
         Visible         =   0   'False
         Begin VB.Menu mnuDreadnoughtDefault3 
            Caption         =   "Dreadnought 75"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuAssaultCannon3d 
            Caption         =   "Assault Cannon 30"
         End
         Begin VB.Menu mnuTwinLinkedLascannon3d 
            Caption         =   "Twin-Linked Lascannon 50"
         End
         Begin VB.Menu mnuTwinLinkedHeavyBolter3d 
            Caption         =   "Twin-Linked Heavy Bolter 30"
         End
         Begin VB.Menu mnuMultiMelta3d 
            Caption         =   "Multi-Melta 40"
         End
         Begin VB.Menu mnuPlasmaCannon3d 
            Caption         =   "Plasma Cannon 40"
         End
         Begin VB.Menu mnuTwinLinkedAutocannon3d 
            Caption         =   "Twin-Linked Autocannon 35"
         End
         Begin VB.Menu mnuExtraArmor3d 
            Caption         =   "Extra Armor 05"
         End
         Begin VB.Menu mnuSearchlight3d 
            Caption         =   "SearchLight 01"
         End
         Begin VB.Menu mnuSmokeLaunchers3d 
            Caption         =   "Smoke Launchers 03"
         End
         Begin VB.Menu mnuHeavyFlamer3d 
            Caption         =   "Heavy Flamer (replaces Storm Bolter) 10"
         End
         Begin VB.Menu mnuMissileLauncher3d 
            Caption         =   "Missile Launcher (replaces Combat Weapon) 10"
         End
      End
   End
End
Attribute VB_Name = "frmSpaceMarinesElites"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'NOTE:'NOTE: Need to limit amount of weapons/equipment that the hero can equip

Dim SquadMembers(1 To 3) As Integer

Private Sub DisplayElites()
'Initialize Total
    Squad(9, ActiveArmy) = Group(1, 9, ActiveArmy) + Group(2, 9, ActiveArmy) + Group(3, 9, ActiveArmy) + Group(4, 9, ActiveArmy) + Group(5, 9, ActiveArmy) + Group(6, 9, ActiveArmy) + Group(7, 9, ActiveArmy) + Group(8, 9, ActiveArmy) + Group(9, 9, ActiveArmy)
    Squad(10, ActiveArmy) = Group(1, 10, ActiveArmy) + Group(2, 10, ActiveArmy) + Group(3, 10, ActiveArmy) + Group(4, 10, ActiveArmy) + Group(5, 10, ActiveArmy) + Group(6, 10, ActiveArmy) + Group(7, 10, ActiveArmy) + Group(8, 10, ActiveArmy) + Group(9, 10, ActiveArmy)
    Squad(11, ActiveArmy) = Group(1, 11, ActiveArmy) + Group(2, 11, ActiveArmy) + Group(3, 11, ActiveArmy) + Group(4, 11, ActiveArmy) + Group(5, 11, ActiveArmy) + Group(6, 11, ActiveArmy) + Group(7, 11, ActiveArmy) + Group(8, 11, ActiveArmy) + Group(9, 11, ActiveArmy)
'Display
    picDisplay.Cls
    picDisplay.Print "Group"; Tab(13); "Points:"; Tab(20); "Elites 1"; Tab(30); "Elites 2"; Tab(40); "Elites 3"
    picDisplay.Print "Sergeant"; Tab(20); Group(2, 9, ActiveArmy); Tab(30); Group(2, 10, ActiveArmy); Tab(40); Group(2, 11, ActiveArmy)
    picDisplay.Print "Squad Members"; Tab(20); Group(6, 9, ActiveArmy); Tab(30); Group(6, 10, ActiveArmy); Tab(40); Group(6, 11, ActiveArmy)
    picDisplay.Print "Assault Weaponry"; Tab(20); Group(7, 9, ActiveArmy); Tab(30); Group(7, 10, ActiveArmy); Tab(40); Group(7, 11, ActiveArmy)
    picDisplay.Print "Heavy Weaponry"; Tab(20); Group(8, 9, ActiveArmy); Tab(30); Group(8, 10, ActiveArmy); Tab(40); Group(8, 11, ActiveArmy)
    picDisplay.Print "Transport"; Tab(20); Group(9, 9, ActiveArmy); Tab(30); Group(9, 10, ActiveArmy); Tab(40); Group(9, 11, ActiveArmy)
    picDisplay.Print "Total"; Tab(20); Squad(9, ActiveArmy); Tab(30); Squad(10, ActiveArmy); Tab(40); Squad(11, ActiveArmy)
End Sub

Private Sub btnDisplay_Click()
ActiveArmy = 1
'no activesquad
DisplayElites
End Sub

Private Sub btnDone_Click()
frmSpaceMarinesElites.Hide
End Sub


Private Sub Form_Load()
ActiveArmy = 1
'no activesquad
DisplayElites
End Sub

Private Sub mnuAssaultCannon11t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon11t.Checked = False Then
        mnuAssaultCannon11t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon11t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAssaultCannon12t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon12t.Checked = False Then
        mnuAssaultCannon12t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon12t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAssaultCannon21t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon21t.Checked = False Then
        mnuAssaultCannon21t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer21t.Checked = True Then
            mnuHeavyFlamer21t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon21t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAssaultCannon22t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon22t.Checked = False Then
        mnuAssaultCannon22t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer22t.Checked = True Then
            mnuHeavyFlamer22t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon22t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAssaultCannon2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuAssaultCannon2d.Checked = False Then
        mnuAssaultCannon2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon2d.Checked
                mnuTwinLinkedLascannon2d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter2d.Checked
                mnuTwinLinkedHeavyBolter2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta2d.Checked
                mnuMultiMelta2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon2d.Checked
                mnuPlasmaCannon2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon2d.Checked
                mnuTwinLinkedAutocannon2d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuAssaultCannon2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuAssaultCannon31t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon31t.Checked = False Then
        mnuAssaultCannon31t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer31t.Checked = True Then
            mnuHeavyFlamer31t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon31t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuAssaultCannon32t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuAssaultCannon32t.Checked = False Then
        mnuAssaultCannon32t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer32t.Checked = True Then
            mnuHeavyFlamer32t.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuAssaultCannon32t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuAssaultCannon3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuAssaultCannon3d.Checked = False Then
        mnuAssaultCannon3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon3d.Checked
                mnuTwinLinkedLascannon3d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter3d.Checked
                mnuTwinLinkedHeavyBolter3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta3d.Checked
                mnuMultiMelta3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon3d.Checked
                mnuPlasmaCannon3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon3d.Checked
                mnuTwinLinkedAutocannon3d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuAssaultCannon3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuAuspexSergeant1t_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexSergeant1t.Checked = False Then
        mnuAuspexSergeant1t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexSergeant1t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAuspexSergeant2t_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexSergeant2t.Checked = False Then
        mnuAuspexSergeant2t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexSergeant2t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuAuspexSergeant3t_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexSergeant3t.Checked = False Then
        mnuAuspexSergeant3t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexSergeant3t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterFlamerSergeant1t_Click()
    'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerSergeant1t.Checked = False Then
        mnuBolterFlamerSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerSergeant1t.Checked = True And mnuLightningClawSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerSergeant1t.Checked = False
        
    'Make other weapons available
        mnuLightningClawSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuBolterFlamerSergeant2t_Click()
    'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerSergeant2t.Checked = False Then
        mnuBolterFlamerSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerSergeant2t.Checked = True And mnuLightningClawSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerSergeant2t.Checked = False
        
    'Make other weapons available
        mnuLightningClawSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterFlamerSergeant3t_Click()
    'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerSergeant3t.Checked = False Then
        mnuBolterFlamerSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerSergeant3t.Checked = True And mnuLightningClawSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerSergeant3t.Checked = False
        
    'Make other weapons available
        mnuLightningClawSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterGrenadeLauncherSergeant1t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
        mnuBolterGrenadeLauncherSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterGrenadeLauncherSergeant2t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
        mnuBolterGrenadeLauncherSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterGrenadeLauncherSergeant3t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
        mnuBolterGrenadeLauncherSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterMeltagunSergeant1t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunSergeant1t.Checked = False Then
        mnuBolterMeltagunSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterMeltagunSergeant2t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunSergeant2t.Checked = False Then
        mnuBolterMeltagunSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuBolterMeltagunSergeant3t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunSergeant3t.Checked = False Then
        mnuBolterMeltagunSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuLightningClawSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuLightningClawSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterPlasmagunSergeant1t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunSergeant1t.Checked = False Then
        mnuBolterPlasmagunSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterPlasmagunSergeant2t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunSergeant2t.Checked = False Then
        mnuBolterPlasmagunSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuBolterPlasmagunSergeant3t_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunSergeant2t.Checked = False Then
        mnuBolterPlasmagunSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuDozerBlades2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
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
    DisplayElites
End Sub

Private Sub mnuDozerBlades3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
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
    DisplayElites
End Sub






Private Sub mnuDozerBlades1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
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
    DisplayElites
End Sub














Private Sub mnuDreadnoughtChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 75
    
'If previously unchecked then:
    If mnuDreadnoughtChoice1.Checked = False Then
        mnuDreadnoughtChoice1.Checked = True
    'Add Dreadnought
        AddValueToGroup
        
    
    'disable vets and assault terminatars and terminators and enable Dreadnought
        
        mnuVeteran1.Visible = False
        mnuTerminator1.Visible = False
        mnuDreadnought1.Visible = True
    
    'If previously checked:
        If mnuVeteranChoice1.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1v.Checked = True Then
            mnuFragGrenades1v.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            mnuKrakGrenades1v.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            mnuTerminatorHonors1v.Checked = False
            ActiveValue = 10 * (SquadMembers(1) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuVeteranMarine11.Checked = True Then
            mnuVeteranMarine11.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine12.Checked = True Then
            mnuVeteranMarine12.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine13.Checked = True Then
            mnuVeteranMarine13.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine14.Checked = True Then
            mnuVeteranMarine14.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine15.Checked = True Then
            mnuVeteranMarine15.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuHeavyBolter1v.Checked = True Then
            mnuHeavyBolter1v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1v.Checked = True Then
            mnuMissileLauncher1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1v.Checked = True Then
            mnuLascannon1v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer1v.Checked = True Then
            mnuFlamer1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1v.Checked = True Then
            mnuMeltagun1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1v.Checked = True Then
            mnuPlasmagun1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice1.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice1.Checked = True Or mnuAssaultTerminatorChoice1.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice1.Checked = False
        mnuAssaultTerminatorChoice1.Checked = False
        
        SquadMembers(1) = SquadMembers(1) + 1
        
    Else
    'If previously checked then:
        mnuDreadnoughtChoice1.Checked = False
    'disable Dreadnought
        mnuDreadnought1.Visible = False
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 1
        If mnuTwinLinkedHeavyBolter1d.Checked = True Then
            mnuTwinLinkedHeavyBolter1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1d.Checked = True Then
            mnuMissileLauncher1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon1d.Checked = True Then
            mnuTwinLinkedLascannon1d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon1d.Checked = True Then
            mnuTwinLinkedAutocannon1d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon1d.Checked = True Then
            mnuAssaultCannon1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer1d.Checked = True Then
            mnuHeavyFlamer1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta1d.Checked = True Then
            mnuMultiMelta1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon1d.Checked = True Then
            mnuPlasmaCannon1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1d.Checked = True Then
            mnuExtraArmor1d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1d.Checked = True Then
            mnuSearchlight1d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1d.Checked = True Then
            mnuSmokeLaunchers1d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuDreadnoughtChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 75
    
'If previously unchecked then:
    If mnuDreadnoughtChoice2.Checked = False Then
        mnuDreadnoughtChoice2.Checked = True
    'Add Dreadnought
        AddValueToGroup
        
    
    'disable vets and assault terminatars and terminators and enable Dreadnought
        
        mnuVeteran2.Visible = False
        mnuTerminator2.Visible = False
        mnuDreadnought2.Visible = True
        
    'If previously checked:
        If mnuVeteranChoice2.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2v.Checked = True Then
            mnuFragGrenades2v.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            mnuKrakGrenades2v.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            mnuTerminatorHonors2v.Checked = False
            ActiveValue = 10 * (SquadMembers(2) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuVeteranMarine21.Checked = True Then
            mnuVeteranMarine21.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine22.Checked = True Then
            mnuVeteranMarine22.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine23.Checked = True Then
            mnuVeteranMarine23.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine24.Checked = True Then
            mnuVeteranMarine24.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine25.Checked = True Then
            mnuVeteranMarine25.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuHeavyBolter2v.Checked = True Then
            mnuHeavyBolter2v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2v.Checked = True Then
            mnuMissileLauncher2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2v.Checked = True Then
            mnuLascannon2v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer2v.Checked = True Then
            mnuFlamer2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2v.Checked = True Then
            mnuMeltagun2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2v.Checked = True Then
            mnuPlasmagun2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice2.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice2.Checked = True Or mnuAssaultTerminatorChoice2.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuTerminator21.Checked = True Then
            mnuTerminator21.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator23.Checked = True Then
            mnuTerminator23.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator24.Checked = True Then
            mnuTerminator24.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator25.Checked = True Then
            mnuTerminator25.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        
        If mnuHeavyFlamer21t.Checked = True Then
            mnuHeavyFlamer21t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon21t.Checked = True Then
            mnuAssaultCannon21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer22t.Checked = True Then
            mnuHeavyFlamer22t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon22t.Checked = True Then
            mnuAssaultCannon22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist21t.Checked = True Then
            mnuChainfist21t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist22t.Checked = True Then
            mnuChainfist22t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist23t.Checked = True Then
            mnuChainfist23t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist24t.Checked = True Then
            mnuChainfist24t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist25t.Checked = True Then
            mnuChainfist25t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist26t.Checked = True Then
            mnuChainfist26t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist27t.Checked = True Then
            mnuChainfist27t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist28t.Checked = True Then
            mnuChainfist28t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist29t.Checked = True Then
            mnuChainfist29t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice2.Checked = False
        mnuAssaultTerminatorChoice2.Checked = False
        
        SquadMembers(2) = SquadMembers(2) + 1
        
    Else
    'If previously checked then:
        mnuDreadnoughtChoice2.Checked = False
    'disable Dreadnought
        mnuDreadnought2.Visible = False
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 1
        If mnuTwinLinkedHeavyBolter2d.Checked = True Then
            mnuTwinLinkedHeavyBolter2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2d.Checked = True Then
            mnuMissileLauncher2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon2d.Checked = True Then
            mnuTwinLinkedLascannon2d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon2d.Checked = True Then
            mnuTwinLinkedAutocannon2d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon2d.Checked = True Then
            mnuAssaultCannon2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer2d.Checked = True Then
            mnuHeavyFlamer2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta2d.Checked = True Then
            mnuMultiMelta2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon2d.Checked = True Then
            mnuPlasmaCannon2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2d.Checked = True Then
            mnuExtraArmor2d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2d.Checked = True Then
            mnuSearchlight2d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2d.Checked = True Then
            mnuSmokeLaunchers2d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub


Private Sub mnuDreadnoughtChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 75
    
'If previously unchecked then:
    If mnuDreadnoughtChoice3.Checked = False Then
        mnuDreadnoughtChoice3.Checked = True
    'Add Dreadnought
        AddValueToGroup
        
    
    'disable vets and assault terminatars and terminators and enable Dreadnought
        mnuVeteran3.Visible = False
        mnuTerminator3.Visible = False
        mnuDreadnought3.Visible = True
        
    'If previously checked:
        If mnuVeteranChoice3.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3v.Checked = True Then
            mnuFragGrenades3v.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            mnuKrakGrenades3v.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            mnuTerminatorHonors3v.Checked = False
            ActiveValue = 10 * (SquadMembers(3) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuVeteranMarine31.Checked = True Then
            mnuVeteranMarine31.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine32.Checked = True Then
            mnuVeteranMarine32.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine33.Checked = True Then
            mnuVeteranMarine33.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine34.Checked = True Then
            mnuVeteranMarine34.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine35.Checked = True Then
            mnuVeteranMarine35.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuHeavyBolter3v.Checked = True Then
            mnuHeavyBolter3v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3v.Checked = True Then
            mnuMissileLauncher3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3v.Checked = True Then
            mnuLascannon3v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer3v.Checked = True Then
            mnuFlamer3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3v.Checked = True Then
            mnuMeltagun3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3v.Checked = True Then
            mnuPlasmagun3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice3.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice3.Checked = True Or mnuAssaultTerminatorChoice3.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuTerminator31.Checked = True Then
            mnuTerminator31.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator32.Checked = True Then
            mnuTerminator32.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator34.Checked = True Then
            mnuTerminator34.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator35.Checked = True Then
            mnuTerminator35.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        
        If mnuHeavyFlamer31t.Checked = True Then
            mnuHeavyFlamer31t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon31t.Checked = True Then
            mnuAssaultCannon31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer32t.Checked = True Then
            mnuHeavyFlamer32t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon32t.Checked = True Then
            mnuAssaultCannon32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist31t.Checked = True Then
            mnuChainfist31t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist32t.Checked = True Then
            mnuChainfist32t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist33t.Checked = True Then
            mnuChainfist33t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist34t.Checked = True Then
            mnuChainfist34t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist35t.Checked = True Then
            mnuChainfist35t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist36t.Checked = True Then
            mnuChainfist36t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist37t.Checked = True Then
            mnuChainfist37t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist38t.Checked = True Then
            mnuChainfist38t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist39t.Checked = True Then
            mnuChainfist39t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice3.Checked = False
        mnuAssaultTerminatorChoice3.Checked = False
        
        SquadMembers(3) = SquadMembers(3) + 1
        
        
    Else
    'If previously checked then:
        mnuDreadnoughtChoice3.Checked = False
    'disable Dreadnought
        mnuDreadnought3.Visible = False
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 1
        If mnuTwinLinkedHeavyBolter3d.Checked = True Then
            mnuTwinLinkedHeavyBolter3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3d.Checked = True Then
            mnuMissileLauncher3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon3d.Checked = True Then
            mnuTwinLinkedLascannon3d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon3d.Checked = True Then
            mnuTwinLinkedAutocannon3d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon3d.Checked = True Then
            mnuAssaultCannon3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer3d.Checked = True Then
            mnuHeavyFlamer3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta3d.Checked = True Then
            mnuMultiMelta3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon3d.Checked = True Then
            mnuPlasmaCannon3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3d.Checked = True Then
            mnuExtraArmor3d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3d.Checked = True Then
            mnuSearchlight3d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3d.Checked = True Then
            mnuSmokeLaunchers3d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub


Private Sub mnuExtraArmor1d_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor1d.Checked = False Then
        mnuExtraArmor1d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor1d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuExtraArmor2_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites
End Sub

Private Sub mnuExtraArmor2d_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor2d.Checked = False Then
        mnuExtraArmor2d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor2d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuExtraArmor3_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites
End Sub





Private Sub mnuExtraArmor1_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub

Private Sub mnuExtraArmor3d_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor3d.Checked = False Then
        mnuExtraArmor3d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor3d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuFlamer1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer1v.Checked = False Then
        mnuFlamer1v.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun1v.Checked
                mnuMeltagun1v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun1v.Checked
                mnuPlasmagun1v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub


Private Sub mnuFlamer2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer2v.Checked = False Then
        mnuFlamer2v.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun2v.Checked
                mnuMeltagun2v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun2v.Checked
                mnuPlasmagun2v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuFlamer3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuFlamer3v.Checked = False Then
        mnuFlamer3v.Checked = True
        AddValueToGroup
    'uncheck selected weapon
        Select Case True
            Case mnuMeltagun3v.Checked
                mnuMeltagun3v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuPlasmagun3v.Checked
                mnuPlasmagun3v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuFlamer3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuFragGrenades2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 1
    
'If previously unchecked then check
    If mnuFragGrenades2v.Checked = False Then
        mnuFragGrenades2v.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuFragGrenades1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 1
    
'If previously unchecked then check
    If mnuFragGrenades1v.Checked = False Then
        mnuFragGrenades1v.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites

End Sub



Private Sub mnuFragGrenades3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 1
    
'If previously unchecked then check
    If mnuFragGrenades3v.Checked = False Then
        mnuFragGrenades3v.Checked = True
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenades3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuHeavyBolter1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuHeavyBolter1v.Checked = False Then
        mnuHeavyBolter1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1v.Checked
                mnuMissileLauncher1v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon1v.Checked
                mnuLascannon1v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuHeavyFlamer11t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer11t.Checked = False Then
        mnuHeavyFlamer11t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer11t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuHeavyBolter2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuHeavyBolter2v.Checked = False Then
        mnuHeavyBolter2v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2v.Checked
                mnuMissileLauncher2v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon2v.Checked
                mnuLascannon2v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuHeavyFlamer12t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer12t.Checked = False Then
        mnuHeavyFlamer12t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer12t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuHeavyFlamer22t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer22t.Checked = False Then
        mnuHeavyFlamer22t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon22t.Checked = True Then
            mnuAssaultCannon22t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer22t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuHeavyFlamer21t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer21t.Checked = False Then
        mnuHeavyFlamer21t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon21t.Checked = True Then
            mnuAssaultCannon21t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer21t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuHeavyFlamer2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer2d.Checked = False Then
        mnuHeavyFlamer2d.Checked = True
        AddValueToGroup
    'weapon
        If mnuMissileLauncher2d.Checked = True Then
            mnuMissileLauncher2d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuHeavyFlamer2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuHeavyBolter3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuHeavyBolter3v.Checked = False Then
        mnuHeavyBolter3v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3v.Checked
                mnuMissileLauncher3v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuLascannon3v.Checked
                mnuLascannon3v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuHeavyBolter3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuHeavyFlamer1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer1d.Checked = False Then
        mnuHeavyFlamer1d.Checked = True
        AddValueToGroup
    'weapon
        If mnuMissileLauncher1d.Checked = True Then
            mnuMissileLauncher1d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuHeavyFlamer1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuHeavyFlamer32t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer32t.Checked = False Then
        mnuHeavyFlamer32t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon32t.Checked = True Then
            mnuAssaultCannon32t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer32t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuHeavyFlamer31t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer31t.Checked = False Then
        mnuHeavyFlamer31t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon31t.Checked = True Then
            mnuAssaultCannon31t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        
    Else
    'If previously checked then:
        mnuHeavyFlamer31t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuHeavyFlamer3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuHeavyFlamer3d.Checked = False Then
        mnuHeavyFlamer3d.Checked = True
        AddValueToGroup
    'weapon
        If mnuMissileLauncher3d.Checked = True Then
            mnuMissileLauncher3d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuHeavyFlamer3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuHunterKillerMissile1_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub

Private Sub mnuHunterKillerMissile2_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites
End Sub

Private Sub mnuHunterKillerMissile3_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites
End Sub

Private Sub mnuKrakGrenades1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = SquadMembers(1) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades1v.Checked = False Then
        mnuKrakGrenades1v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuKrakGrenades2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = SquadMembers(2) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades2v.Checked = False Then
        mnuKrakGrenades2v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuKrakGrenades3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = SquadMembers(3) * 2
    
'If previously unchecked then check
    If mnuKrakGrenades3v.Checked = False Then
        mnuKrakGrenades3v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenades3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuAssaultCannon1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuAssaultCannon1d.Checked = False Then
        mnuAssaultCannon1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon1d.Checked
                mnuTwinLinkedLascannon1d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter1d.Checked
                mnuTwinLinkedHeavyBolter1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta1d.Checked
                mnuMultiMelta1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon1d.Checked
                mnuPlasmaCannon1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon1d.Checked
                mnuTwinLinkedAutocannon1d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuAssaultCannon1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuLascannon2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon2v.Checked = False Then
        mnuLascannon2v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher2v.Checked
                mnuMissileLauncher2v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter2v.Checked
                mnuHeavyBolter2v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuLascannon3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon3v.Checked = False Then
        mnuLascannon3v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher3v.Checked
                mnuMissileLauncher3v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter3v.Checked
                mnuHeavyBolter3v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnulightningclawsergeant1t_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant1t.Checked = False Then
        mnuLightningClawSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuLightningClawSergeant2t_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant2t.Checked = False Then
        mnuLightningClawSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuLightningClawSergeant3t_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant3t.Checked = False Then
        mnuLightningClawSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuLightningClawsSergeant1t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsSergeant1t.Checked = False Then
            mnuLightningClawsSergeant1t.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerSergeant1t.Checked = True Then
                mnuBolterFlamerSergeant1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            End If
            mnuBolterFlamerSergeant1t.Visible = False
            If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
                mnuBolterGrenadeLauncherSergeant1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            End If
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            If mnuBolterMeltagunSergeant1t.Checked = True Then
                mnuBolterMeltagunSergeant1t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            End If
                mnuBolterMeltagunSergeant1t.Visible = False
            If mnuBolterPlasmagunSergeant1t.Checked = True Then
                mnuBolterPlasmagunSergeant1t.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            End If
                mnuBolterPlasmagunSergeant1t.Visible = False
            If mnuChainfistSergeant1t.Checked = True Then
                mnuChainfistSergeant1t.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            End If
                mnuChainfistSergeant1t.Visible = False
            If mnuLightningClawSergeant1t.Checked = True Then
                mnuLightningClawSergeant1t.Checked = False
                ActiveValue = 25
                RemoveValueFromGroup
            End If
                mnuLightningClawSergeant1t.Visible = False
           If mnuPowerFistSergeant1t.Checked = True Then
                mnuPowerFistSergeant1t.Checked = False
                ActiveValue = 25
                RemoveValueFromGroup
            End If
                mnuPowerFistSergeant1t.Visible = False
            If mnuStormShieldSergeant1t.Checked = True Then
                mnuStormShieldSergeant1t.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            End If
                mnuStormShieldSergeant1t.Visible = False
           If mnuThunderHammerSergeant1t.Checked = True Then
                mnuThunderHammerSergeant1t.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            End If
                mnuThunderHammerSergeant1t.Visible = False
            
    Else
    'If previously checked then uncheck
        mnuLightningClawsSergeant1t.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub


Private Sub mnuLightningClawsSergeant2t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsSergeant2t.Checked = False Then
        If mnuLightningClawsSergeant2t.Checked = False And mnuBolterFlamerSergeant2t.Checked = False And mnuBolterGrenadeLauncherSergeant2t.Checked = False And mnuBolterPlasmagunSergeant2t.Checked = False And mnuBolterMeltagunSergeant2t.Checked = False And mnuStormBolterSergeant2t.Checked = False And mnuBoltPistolsergeant2t.Checked = False And mnuChainfistSergeant2t.Checked = False And mnuCloseCombatWeaponsergeant2t.Checked = False And mnuLightningClawSergeant2t.Checked = False And mnuPowerFistSergeant2t.Checked = False And mnuPlasmaPistolsergeant2t.Checked = False And mnuPowerWeaponSergeant2t.Checked = False And mnuStormShieldSergeant2t.Checked = False And mnuThunderHammerSergeant2t.Checked = False Then
            mnuLightningClawsSergeant2t.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsSergeant2t.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuPlasmaPistolsergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub



End Sub


Private Sub mnuLightningClawsSergeant3t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsSergeant3t.Checked = False Then
        If mnuLightningClawsSergeant3t.Checked = False And mnuBolterFlamerSergeant3t.Checked = False And mnuBolterGrenadeLauncherSergeant3t.Checked = False And mnuBolterPlasmagunSergeant3t.Checked = False And mnuBolterMeltagunSergeant3t.Checked = False And mnuStormBolterSergeant3t.Checked = False And mnuBoltPistolsergeant3t.Checked = False And mnuChainfistSergeant3t.Checked = False And mnuCloseCombatWeaponsergeant3t.Checked = False And mnuLightningClawSergeant3t.Checked = False And mnuPowerFistSergeant3t.Checked = False And mnuPlasmaPistolsergeant3t.Checked = False And mnuPowerWeaponSergeant3t.Checked = False And mnuStormShieldSergeant3t.Checked = False And mnuThunderHammerSergeant3t.Checked = False Then
            mnuLightningClawsSergeant3t.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsSergeant3t.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawSergeant3t.Visible = True
        mnuPlasmaPistolsergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub



End Sub


Private Sub mnuMasterCraftedWeaponSergeant1t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponSergeant1t.Checked = False Then
        mnuMasterCraftedWeaponSergeant1t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponSergeant1t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuMasterCraftedWeaponSergeant2t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponSergeant2t.Checked = False Then
        mnuMasterCraftedWeaponSergeant2t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponSergeant2t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMasterCraftedWeaponSergeant3t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponSergeant3t.Checked = False Then
        mnuMasterCraftedWeaponSergeant3t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponSergeant3t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMissileLauncher1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher1d.Checked = False Then
        mnuMissileLauncher1d.Checked = True
        AddValueToGroup
    'weapon
        If mnuHeavyFlamer1d.Checked = True Then
            mnuHeavyFlamer1d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
                
    Else
    'If previously checked then:
        mnuMissileLauncher1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuMissileLauncher2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher2d.Checked = False Then
        mnuMissileLauncher2d.Checked = True
        AddValueToGroup
    'weapon
        If mnuHeavyFlamer2d.Checked = True Then
            mnuHeavyFlamer2d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
                
    Else
    'If previously checked then:
        mnuMissileLauncher2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMissileLauncher3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher3d.Checked = False Then
        mnuMissileLauncher3d.Checked = True
        AddValueToGroup
    'weapon
        If mnuHeavyFlamer3d.Checked = True Then
            mnuHeavyFlamer3d.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
                
    Else
    'If previously checked then:
        mnuMissileLauncher3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMultiMelta1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuMultiMelta1d.Checked = False Then
        mnuMultiMelta1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon1d.Checked
                mnuTwinLinkedLascannon1d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter1d.Checked
                mnuTwinLinkedHeavyBolter1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon1d.Checked
                mnuAssaultCannon1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuPlasmaCannon1d.Checked
                mnuPlasmaCannon1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon1d.Checked
                mnuTwinLinkedAutocannon1d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuMultiMelta1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMultiMelta2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuMultiMelta2d.Checked = False Then
        mnuMultiMelta2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon2d.Checked
                mnuTwinLinkedLascannon2d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter2d.Checked
                mnuTwinLinkedHeavyBolter2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon2d.Checked
                mnuAssaultCannon2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuPlasmaCannon2d.Checked
                mnuPlasmaCannon2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon2d.Checked
                mnuTwinLinkedAutocannon2d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuMultiMelta2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMultiMelta3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuMultiMelta3d.Checked = False Then
        mnuMultiMelta3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon3d.Checked
                mnuTwinLinkedLascannon3d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter3d.Checked
                mnuTwinLinkedHeavyBolter3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon3d.Checked
                mnuAssaultCannon3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuPlasmaCannon3d.Checked
                mnuPlasmaCannon3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon3d.Checked
                mnuTwinLinkedAutocannon3d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuMultiMelta3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuPlasmaCannon1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuPlasmaCannon1d.Checked = False Then
        mnuPlasmaCannon1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon1d.Checked
                mnuTwinLinkedLascannon1d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter1d.Checked
                mnuTwinLinkedHeavyBolter1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon1d.Checked
                mnuAssaultCannon1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta1d.Checked
                mnuMultiMelta1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon1d.Checked
                mnuTwinLinkedAutocannon1d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmaCannon1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuPlasmaCannon2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuPlasmaCannon2d.Checked = False Then
        mnuPlasmaCannon2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon2d.Checked
                mnuTwinLinkedLascannon2d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter2d.Checked
                mnuTwinLinkedHeavyBolter2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon2d.Checked
                mnuAssaultCannon2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta2d.Checked
                mnuMultiMelta2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon2d.Checked
                mnuTwinLinkedAutocannon2d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmaCannon2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuPlasmaCannon3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 40
    
'If previously unchecked then:
    If mnuPlasmaCannon3d.Checked = False Then
        mnuPlasmaCannon3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon3d.Checked
                mnuTwinLinkedLascannon3d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter3d.Checked
                mnuTwinLinkedHeavyBolter3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon3d.Checked
                mnuAssaultCannon3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta3d.Checked
                mnuMultiMelta3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon3d.Checked
                mnuTwinLinkedAutocannon3d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmaCannon3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuPowerFistSergeant1t_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFistSergeant1t.Checked = False Then
        mnuPowerFistSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFistSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFistSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub






Private Sub mnuSearchlight1d_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight1d.Checked = False Then
        mnuSearchlight1d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight1d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuSearchlight2d_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight2d.Checked = False Then
        mnuSearchlight2d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight2d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuSearchlight3d_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight3d.Checked = False Then
        mnuSearchlight3d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight3d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuSmokeLaunchers1d_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers1d.Checked = False Then
        mnuSmokeLaunchers1d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers1d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuSmokeLaunchers2d_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers2d.Checked = False Then
        mnuSmokeLaunchers2d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers2d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuSmokeLaunchers3d_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers3d.Checked = False Then
        mnuSmokeLaunchers3d.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers3d.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuStormShieldSergeant1t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldSergeant1t.Checked = False Then
        mnuStormShieldSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuStormShieldSergeant2t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldSergeant2t.Checked = False Then
        mnuStormShieldSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuStormShieldSergeant3t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldSergeant3t.Checked = False Then
        mnuStormShieldSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuLightningClawSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuLightningClawSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTeleportHomerSergeant1t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerSergeant1t.Checked = False Then
        mnuTeleportHomerSergeant1t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerSergeant1t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuTeleportHomerSergeant2t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerSergeant2t.Checked = False Then
        mnuTeleportHomerSergeant2t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerSergeant2t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTeleportHomerSergeant3t_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerSergeant3t.Checked = False Then
        mnuTeleportHomerSergeant3t.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerSergeant3t.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub




Private Sub mnuTerminator11_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator11.Checked = False Then
        mnuTerminator11.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuChainfist15t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator11.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuTerminator12_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator12.Checked = False Then
        mnuTerminator12.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuChainfist16t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator12.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist16t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator13_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator13.Checked = False Then
        mnuTerminator13.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuChainfist17t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator13.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist17t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator14_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator14.Checked = False Then
        mnuTerminator14.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuChainfist18t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator14.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist18t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator15_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator15.Checked = False Then
        mnuTerminator15.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        mnuChainfist19t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator15.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist19t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator21_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator21.Checked = False Then
        mnuTerminator21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuChainfist25t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist25t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator22_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator21.Checked = False Then
        mnuTerminator21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuChainfist26t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist26t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator23_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator21.Checked = False Then
        mnuTerminator21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuChainfist27t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist27t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator24_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator21.Checked = False Then
        mnuTerminator21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuChainfist28t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist28t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator25_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator21.Checked = False Then
        mnuTerminator21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        mnuChainfist29t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist29t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator31_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator31.Checked = False Then
        mnuTerminator31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuChainfist35t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist35t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator32_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator31.Checked = False Then
        mnuTerminator31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuChainfist36t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist36t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator33_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator31.Checked = False Then
        mnuTerminator31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuChainfist37t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist37t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator34_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator31.Checked = False Then
        mnuTerminator31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuChainfist38t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist38t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminator35_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42
    
'If previously unchecked then:
    If mnuTerminator31.Checked = False Then
        mnuTerminator31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        mnuChainfist39t.Visible = True
        
    Else
    'If previously checked then:
        mnuTerminator31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist39t.Visible = False
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminatorHonors1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = (SquadMembers(1) - 1) * 10
    
'If previously unchecked then check
    If mnuTerminatorHonors1v.Checked = False Then
        mnuTerminatorHonors1v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuTerminatorHonors1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub

Private Sub mnuTerminatorHonors2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = (SquadMembers(2) - 1) * 10
    
'If previously unchecked then check
    If mnuTerminatorHonors2v.Checked = False Then
        mnuTerminatorHonors2v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuTerminatorHonors2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub


Private Sub mnuTerminatorHonors3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = (SquadMembers(3) - 1) * 10
    
'If previously unchecked then check
    If mnuTerminatorHonors3v.Checked = False Then
        mnuTerminatorHonors3v.Checked = True
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuTerminatorHonors3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayElites
End Sub


Private Sub mnuThunderHammerSergeant1t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant1t.Checked = False Then
        mnuLightningClawSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuChainfistSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuChainfistSergeant1t.Checked = False Then
                mnuChainfistSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuChainfistSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuThunderHammerSergeant2t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant2t.Checked = False Then
        mnuLightningClawSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuChainfistSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuChainfistSergeant2t.Checked = False Then
                mnuChainfistSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuChainfistSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuThunderHammerSergeant3t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant3t.Checked = False Then
        mnuLightningClawSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuChainfistSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuLightningClawSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuChainfistSergeant3t.Checked = False Then
                mnuChainfistSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuChainfistSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuLightningClawSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTwinLinkedAutocannon1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 35
    
'If previously unchecked then:
    If mnuTwinLinkedAutocannon1d.Checked = False Then
        mnuTwinLinkedAutocannon1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon1d.Checked
                mnuTwinLinkedLascannon1d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter1d.Checked
                mnuTwinLinkedHeavyBolter1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon1d.Checked
                mnuAssaultCannon1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta1d.Checked
                mnuMultiMelta1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon1d.Checked
                mnuPlasmaCannon1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedAutocannon1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuTwinLinkedAutocannon2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 35
    
'If previously unchecked then:
    If mnuTwinLinkedAutocannon2d.Checked = False Then
        mnuTwinLinkedAutocannon2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon2d.Checked
                mnuTwinLinkedLascannon2d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter2d.Checked
                mnuTwinLinkedHeavyBolter2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon2d.Checked
                mnuAssaultCannon2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta2d.Checked
                mnuMultiMelta2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon2d.Checked
                mnuPlasmaCannon2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedAutocannon2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTwinLinkedAutocannon3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 35
    
'If previously unchecked then:
    If mnuTwinLinkedAutocannon3d.Checked = False Then
        mnuTwinLinkedAutocannon3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon3d.Checked
                mnuTwinLinkedLascannon3d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedHeavyBolter3d.Checked
                mnuTwinLinkedHeavyBolter3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuAssaultCannon3d.Checked
                mnuAssaultCannon3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta3d.Checked
                mnuMultiMelta3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon3d.Checked
                mnuPlasmaCannon3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedAutocannon3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTwinLinkedHeavyBolter1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuTwinLinkedHeavyBolter1d.Checked = False Then
        mnuTwinLinkedHeavyBolter1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon1d.Checked
                mnuTwinLinkedLascannon1d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon1d.Checked
                mnuTwinLinkedAutocannon1d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon1d.Checked
                mnuAssaultCannon1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta1d.Checked
                mnuMultiMelta1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon1d.Checked
                mnuPlasmaCannon1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedHeavyBolter1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTwinLinkedHeavyBolter2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuTwinLinkedHeavyBolter2d.Checked = False Then
        mnuTwinLinkedHeavyBolter2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon2d.Checked
                mnuTwinLinkedLascannon2d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon2d.Checked
                mnuTwinLinkedAutocannon2d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon2d.Checked
                mnuAssaultCannon2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta2d.Checked
                mnuMultiMelta2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon2d.Checked
                mnuPlasmaCannon2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedHeavyBolter2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuTwinLinkedHeavyBolter3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 30
    
'If previously unchecked then:
    If mnuTwinLinkedHeavyBolter3d.Checked = False Then
        mnuTwinLinkedHeavyBolter3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedLascannon3d.Checked
                mnuTwinLinkedLascannon3d.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon3d.Checked
                mnuTwinLinkedAutocannon3d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon3d.Checked
                mnuAssaultCannon3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta3d.Checked
                mnuMultiMelta3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon3d.Checked
                mnuPlasmaCannon3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedHeavyBolter3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub
Private Sub mnuTwinLinkedLascannon1d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 50
    
'If previously unchecked then:
    If mnuTwinLinkedLascannon1d.Checked = False Then
        mnuTwinLinkedLascannon1d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedHeavyBolter1d.Checked
                mnuTwinLinkedHeavyBolter1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon1d.Checked
                mnuTwinLinkedAutocannon1d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon1d.Checked
                mnuAssaultCannon1d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta1d.Checked
                mnuMultiMelta1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon1d.Checked
                mnuPlasmaCannon1d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedLascannon1d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub







Private Sub mnuLascannon1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 15
    
'If previously unchecked then:
    If mnuLascannon1v.Checked = False Then
        mnuLascannon1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMissileLauncher1v.Checked
                mnuMissileLauncher1v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuHeavyBolter1v.Checked
                mnuHeavyBolter1v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuLascannon1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuMeltagun1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun1v.Checked = False Then
        mnuMeltagun1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer1v.Checked
                mnuFlamer1v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun1v.Checked
                mnuPlasmagun1v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMeltagun2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun2v.Checked = False Then
        mnuMeltagun2v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer2v.Checked
                mnuFlamer2v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun2v.Checked
                mnuPlasmagun2v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuMeltagun3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMeltagun3v.Checked = False Then
        mnuMeltagun3v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuFlamer3v.Checked
                mnuFlamer3v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
            Case mnuPlasmagun3v.Checked
                mnuPlasmagun3v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMeltagun3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuMissileLauncher1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher1v.Checked = False Then
        mnuMissileLauncher1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter1v.Checked
                mnuHeavyBolter1v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon1v.Checked
                mnuLascannon1v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuCycloneMissileLauncher12t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher12t.Checked = False Then
        mnuCycloneMissileLauncher12t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist12t.Visible = False
        mnuAssaultCannon12t.Visible = False
        mnuHeavyFlamer12t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher12t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist12t.Visible = True
        mnuAssaultCannon12t.Visible = False
        mnuHeavyFlamer12t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuCycloneMissileLauncher11t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher11t.Checked = False Then
        mnuCycloneMissileLauncher11t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist11t.Visible = False
        mnuAssaultCannon11t.Visible = False
        mnuHeavyFlamer11t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher11t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist11t.Visible = True
        mnuAssaultCannon11t.Visible = False
        mnuHeavyFlamer11t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuCycloneMissileLauncher22t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher22t.Checked = False Then
        mnuCycloneMissileLauncher22t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist22t.Visible = False
        mnuAssaultCannon22t.Visible = False
        mnuHeavyFlamer22t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher22t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist22t.Visible = True
        mnuAssaultCannon22t.Visible = False
        mnuHeavyFlamer22t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuCycloneMissileLauncher21t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher21t.Checked = False Then
        mnuCycloneMissileLauncher21t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist21t.Visible = False
        mnuAssaultCannon21t.Visible = False
        mnuHeavyFlamer21t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher21t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist21t.Visible = True
        mnuAssaultCannon21t.Visible = False
        mnuHeavyFlamer21t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuMissileLauncher2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher1v.Checked = False Then
        mnuMissileLauncher1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter1v.Checked
                mnuHeavyBolter1v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon1v.Checked
                mnuLascannon1v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuMissileLauncher3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 10
    
'If previously unchecked then:
    If mnuMissileLauncher1v.Checked = False Then
        mnuMissileLauncher1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuHeavyBolter1v.Checked
                mnuHeavyBolter1v.Checked = False
                ActiveValue = 5
                RemoveValueFromGroup
            Case mnuLascannon1v.Checked
                mnuLascannon1v.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuMissileLauncher1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuCycloneMissileLauncher32t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher32t.Checked = False Then
        mnuCycloneMissileLauncher32t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist32t.Visible = False
        mnuAssaultCannon32t.Visible = False
        mnuHeavyFlamer32t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher32t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist32t.Visible = True
        mnuAssaultCannon32t.Visible = False
        mnuHeavyFlamer32t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuCycloneMissileLauncher31t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 20
    
'If previously unchecked then:
    If mnuCycloneMissileLauncher31t.Checked = False Then
        mnuCycloneMissileLauncher31t.Checked = True
        AddValueToGroup
    'weapon
        mnuChainfist31t.Visible = False
        mnuAssaultCannon31t.Visible = False
        mnuHeavyFlamer31t.Visible = False
    Else
    'If previously checked then:
        mnuCycloneMissileLauncher31t.Checked = False
        RemoveValueFromGroup
    'weapon
        mnuChainfist31t.Visible = True
        mnuAssaultCannon31t.Visible = False
        mnuHeavyFlamer31t.Visible = False
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuPintleMountedStormBolter1_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub

Private Sub mnuPintleMountedStormBolter2_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites

End Sub

Private Sub mnuPintleMountedStormBolter3_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites

End Sub

Private Sub mnuPlasmagun1v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun1v.Checked = False Then
        mnuPlasmagun1v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun1v.Checked
                mnuMeltagun1v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer1v.Checked
                mnuFlamer1v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun1v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuPlasmagun2v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun2v.Checked = False Then
        mnuPlasmagun2v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun2v.Checked
                mnuMeltagun2v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer2v.Checked
                mnuFlamer2v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun2v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuPlasmagun3v_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 6
    
'If previously unchecked then:
    If mnuPlasmagun3v.Checked = False Then
        mnuPlasmagun3v.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuMeltagun3v.Checked
                mnuMeltagun3v.Checked = False
                ActiveValue = 10
                RemoveValueFromGroup
            Case mnuFlamer3v.Checked
                mnuFlamer3v.Checked = False
                ActiveValue = 6
                RemoveValueFromGroup
        End Select
                
    Else
    'If previously checked then:
        mnuPlasmagun3v.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuRazorback1_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub

Private Sub mnuRazorback2_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites

End Sub

Private Sub mnuRazorback3_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites

End Sub

Private Sub mnuRhino1_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub


Private Sub mnuRhino2_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites

End Sub

Private Sub mnuRhino3_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites

End Sub




Private Sub mnuTwinLinkedLascannon2d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 50
    
'If previously unchecked then:
    If mnuTwinLinkedLascannon2d.Checked = False Then
        mnuTwinLinkedLascannon2d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedHeavyBolter2d.Checked
                mnuTwinLinkedHeavyBolter2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon2d.Checked
                mnuTwinLinkedAutocannon2d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon2d.Checked
                mnuAssaultCannon2d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta2d.Checked
                mnuMultiMelta2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon2d.Checked
                mnuPlasmaCannon2d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedLascannon2d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuTwinLinkedLascannon3d_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 50
    
'If previously unchecked then:
    If mnuTwinLinkedLascannon3d.Checked = False Then
        mnuTwinLinkedLascannon3d.Checked = True
        AddValueToGroup
    'weapon
        Select Case True
            Case mnuTwinLinkedHeavyBolter3d.Checked
                mnuTwinLinkedHeavyBolter3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuTwinLinkedAutocannon3d.Checked
                mnuTwinLinkedAutocannon3d.Checked = False
                ActiveValue = 35
                RemoveValueFromGroup
            Case mnuAssaultCannon3d.Checked
                mnuAssaultCannon3d.Checked = False
                ActiveValue = 30
                RemoveValueFromGroup
            Case mnuMultiMelta3d.Checked
                mnuMultiMelta3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
            Case mnuPlasmaCannon3d.Checked
                mnuPlasmaCannon3d.Checked = False
                ActiveValue = 40
                RemoveValueFromGroup
                
        End Select
                
    Else
    'If previously checked then:
        mnuTwinLinkedLascannon3d.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuVeteranMarine11_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine11.Checked = False Then
        mnuVeteranMarine11.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine11.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuVeteranMarine12_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine12.Checked = False Then
        mnuVeteranMarine12.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine12.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuVeteranMarine13_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine13.Checked = False Then
        mnuVeteranMarine13.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine13.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuVeteranMarine14_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine14.Checked = False Then
        mnuVeteranMarine14.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine14.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuVeteranMarine15_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine15.Checked = False Then
        mnuVeteranMarine15.Checked = True
        SquadMembers(1) = SquadMembers(1) + 1
        AddValueToGroup
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine15.Checked = False
        SquadMembers(1) = SquadMembers(1) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades1v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuVeteranMarine21_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine21.Checked = False Then
        mnuVeteranMarine21.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine21.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine22_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine22.Checked = False Then
        mnuVeteranMarine22.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine22.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine23_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine23.Checked = False Then
        mnuVeteranMarine23.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine23.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine24_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine24.Checked = False Then
        mnuVeteranMarine24.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine24.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine25_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine25.Checked = False Then
        mnuVeteranMarine25.Checked = True
        SquadMembers(2) = SquadMembers(2) + 1
        AddValueToGroup
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine25.Checked = False
        SquadMembers(2) = SquadMembers(2) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades2v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub


Private Sub mnuVeteranMarine31_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine31.Checked = False Then
        mnuVeteranMarine31.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine31.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine32_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine32.Checked = False Then
        mnuVeteranMarine32.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine32.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine33_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine33.Checked = False Then
        mnuVeteranMarine33.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine33.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranMarine34_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine34.Checked = False Then
        mnuVeteranMarine34.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine34.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuVeteranMarine35_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18
    
'If previously unchecked then:
    If mnuVeteranMarine35.Checked = False Then
        mnuVeteranMarine35.Checked = True
        SquadMembers(3) = SquadMembers(3) + 1
        AddValueToGroup
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            AddValueToGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            AddValueToGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            AddValueToGroup
        End If
    Else
    'If previously checked then:
        mnuVeteranMarine35.Checked = False
        SquadMembers(3) = SquadMembers(3) - 1
        RemoveValueFromGroup
        mnuChainfist15t.Visible = False
        If mnuFragGrenades3v.Checked = True Then
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            ActiveValue = 10
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 18 * 4
    
'If previously unchecked then:
    If mnuVeteranChoice1.Checked = False Then
        mnuVeteranChoice1.Checked = True
    'Add Veterans
        AddValueToGroup
     'Add Sergeant
        ActiveValue = 18
        ActiveGroup = 2
        AddValueToGroup
        
        
    
    'disable Dreadnought and assault terminatars and terminators and enable Veterans
        mnuDreadnought1.Visible = False
        mnuTerminator1.Visible = False
        mnuVeteran1.Visible = True
        
    'If previously checked:
        If mnuDreadnoughtChoice1.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 1
        If mnuTwinLinkedHeavyBolter1d.Checked = True Then
            mnuTwinLinkedHeavyBolter1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1d.Checked = True Then
            mnuMissileLauncher1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon1d.Checked = True Then
            mnuTwinLinkedLascannon1d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon1d.Checked = True Then
            mnuTwinLinkedAutocannon1d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon1d.Checked = True Then
            mnuAssaultCannon1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer1d.Checked = True Then
            mnuHeavyFlamer1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta1d.Checked = True Then
            mnuMultiMelta1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon1d.Checked = True Then
            mnuPlasmaCannon1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1d.Checked = True Then
            mnuExtraArmor1d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1d.Checked = True Then
            mnuSearchlight1d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1d.Checked = True Then
            mnuSmokeLaunchers1d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice1.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice1.Checked = True Or mnuAssaultTerminatorChoice1.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice1.Checked = False
        mnuAssaultTerminatorChoice1.Checked = False
        
        
        SquadMembers(1) = SquadMembers(1) + 5
        
    Else
    'If previously checked then:
        mnuVeteranChoice1.Checked = False
    'disable Dreadnought
        mnuVeteran1.Visible = False
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1v.Checked = True Then
            mnuFragGrenades1v.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            mnuKrakGrenades1v.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            mnuTerminatorHonors1v.Checked = False
            ActiveValue = 10 * (SquadMembers(1) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuVeteranMarine11.Checked = True Then
            mnuVeteranMarine11.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine12.Checked = True Then
            mnuVeteranMarine12.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine13.Checked = True Then
            mnuVeteranMarine13.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine14.Checked = True Then
            mnuVeteranMarine14.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine15.Checked = True Then
            mnuVeteranMarine15.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuHeavyBolter1v.Checked = True Then
            mnuHeavyBolter1v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1v.Checked = True Then
            mnuMissileLauncher1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1v.Checked = True Then
            mnuLascannon1v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer1v.Checked = True Then
            mnuFlamer1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1v.Checked = True Then
            mnuMeltagun1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1v.Checked = True Then
            mnuPlasmagun1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 18 * 4
    
'If previously unchecked then:
    If mnuVeteranChoice2.Checked = False Then
        mnuVeteranChoice2.Checked = True
    'Add Veterans
        AddValueToGroup
     'Add Sergeant
        ActiveValue = 18
        ActiveGroup = 2
        AddValueToGroup
        
        
    
    'disable Dreadnought and assault terminatars and terminators and enable Veterans
        mnuDreadnought2.Visible = False
        mnuTerminator2.Visible = False
        mnuVeteran2.Visible = True
        
    'If previously checked:
        If mnuDreadnoughtChoice2.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 1
        If mnuTwinLinkedHeavyBolter2d.Checked = True Then
            mnuTwinLinkedHeavyBolter2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2d.Checked = True Then
            mnuMissileLauncher2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon2d.Checked = True Then
            mnuTwinLinkedLascannon2d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon2d.Checked = True Then
            mnuTwinLinkedAutocannon2d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon2d.Checked = True Then
            mnuAssaultCannon2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer2d.Checked = True Then
            mnuHeavyFlamer2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta2d.Checked = True Then
            mnuMultiMelta2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon2d.Checked = True Then
            mnuPlasmaCannon2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2d.Checked = True Then
            mnuExtraArmor2d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2d.Checked = True Then
            mnuSearchlight2d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2d.Checked = True Then
            mnuSmokeLaunchers2d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice2.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice2.Checked = True Or mnuAssaultTerminatorChoice2.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice2.Checked = False
        mnuAssaultTerminatorChoice2.Checked = False
        
        SquadMembers(2) = SquadMembers(2) + 5
        
    Else
    'If previously checked then:
        mnuVeteranChoice2.Checked = False
    'disable Dreadnought
        mnuVeteran2.Visible = False
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2v.Checked = True Then
            mnuFragGrenades2v.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            mnuKrakGrenades2v.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            mnuTerminatorHonors2v.Checked = False
            ActiveValue = 10 * (SquadMembers(2) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuVeteranMarine21.Checked = True Then
            mnuVeteranMarine21.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine22.Checked = True Then
            mnuVeteranMarine22.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine23.Checked = True Then
            mnuVeteranMarine23.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine24.Checked = True Then
            mnuVeteranMarine24.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine25.Checked = True Then
            mnuVeteranMarine25.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuHeavyBolter2v.Checked = True Then
            mnuHeavyBolter2v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2v.Checked = True Then
            mnuMissileLauncher2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2v.Checked = True Then
            mnuLascannon2v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer2v.Checked = True Then
            mnuFlamer2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2v.Checked = True Then
            mnuMeltagun2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2v.Checked = True Then
            mnuPlasmagun2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuVeteranChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 18 * 4
    
'If previously unchecked then:
    If mnuVeteranChoice3.Checked = False Then
        mnuVeteranChoice3.Checked = True
    'Add Veterans
        AddValueToGroup
     'Add Sergeant
        ActiveValue = 18
        ActiveGroup = 2
        AddValueToGroup
        
        
    
    'disable Dreadnought and assault terminatars and terminators and enable Veterans
        mnuDreadnought3.Visible = False
        mnuTerminator3.Visible = False
        mnuVeteran3.Visible = True
    
    'If previously checked:
        If mnuDreadnoughtChoice3.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 1
        If mnuTwinLinkedHeavyBolter3d.Checked = True Then
            mnuTwinLinkedHeavyBolter3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3d.Checked = True Then
            mnuMissileLauncher3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon3d.Checked = True Then
            mnuTwinLinkedLascannon3d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon3d.Checked = True Then
            mnuTwinLinkedAutocannon3d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon3d.Checked = True Then
            mnuAssaultCannon3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer3d.Checked = True Then
            mnuHeavyFlamer3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta3d.Checked = True Then
            mnuMultiMelta3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon3d.Checked = True Then
            mnuPlasmaCannon3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3d.Checked = True Then
            mnuExtraArmor3d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3d.Checked = True Then
            mnuSearchlight3d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3d.Checked = True Then
            mnuSmokeLaunchers3d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice3.Checked = False
        
    'If previously checked:
        If mnuTerminatorChoice3.Checked = True Or mnuAssaultTerminatorChoice3.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher13t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice3.Checked = False
        mnuAssaultTerminatorChoice3.Checked = False
        
        SquadMembers(3) = SquadMembers(3) + 5
        
    Else
    'If previously checked then:
        mnuVeteranChoice3.Checked = False
    'disable Dreadnought
        mnuVeteran3.Visible = False
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3v.Checked = True Then
            mnuFragGrenades3v.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            mnuKrakGrenades3v.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            mnuTerminatorHonors3v.Checked = False
            ActiveValue = 10 * (SquadMembers(3) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuVeteranMarine31.Checked = True Then
            mnuVeteranMarine31.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine32.Checked = True Then
            mnuVeteranMarine32.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine33.Checked = True Then
            mnuVeteranMarine33.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine34.Checked = True Then
            mnuVeteranMarine34.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine35.Checked = True Then
            mnuVeteranMarine35.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuHeavyBolter3v.Checked = True Then
            mnuHeavyBolter3v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3v.Checked = True Then
            mnuMissileLauncher3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3v.Checked = True Then
            mnuLascannon3v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer3v.Checked = True Then
            mnuFlamer3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3v.Checked = True Then
            mnuMeltagun3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3v.Checked = True Then
            mnuPlasmagun3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuSearchlight1_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub


Private Sub mnuSearchlight2_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites

End Sub

Private Sub mnuSearchlight3_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites

End Sub

Private Sub mnuSmokeLaunchers1_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 9
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
    DisplayElites
End Sub

Private Sub mnuSmokeLaunchers2_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 10
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
    DisplayElites

End Sub

Private Sub mnuSmokeLaunchers3_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 11
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
    DisplayElites

End Sub



Private Sub mnuChainfist11t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist11t.Checked = False Then
        mnuChainfist11t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist11t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist12t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist12t.Checked = False Then
        mnuChainfist12t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist12t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist13t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist13t.Checked = False Then
        mnuChainfist13t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist13t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist14t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist14t.Checked = False Then
        mnuChainfist14t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist14t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuChainfist15t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist15t.Checked = False Then
        mnuChainfist15t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist15t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuChainfist16t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist16t.Checked = False Then
        mnuChainfist16t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist16t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuChainfist17t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist17t.Checked = False Then
        mnuChainfist17t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist17t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuChainfist18t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist18t.Checked = False Then
        mnuChainfist18t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist18t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuChainfist19t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist19t.Checked = False Then
        mnuChainfist19t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist19t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist21t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist21t.Checked = False Then
        mnuChainfist21t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist21t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuChainfist22t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist22t.Checked = False Then
        mnuChainfist22t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist22t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist23t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist23t.Checked = False Then
        mnuChainfist23t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist23t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist24t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist24t.Checked = False Then
        mnuChainfist24t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist24t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist25t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist25t.Checked = False Then
        mnuChainfist25t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist25t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist26t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist26t.Checked = False Then
        mnuChainfist26t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist26t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist27t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist27t.Checked = False Then
        mnuChainfist27t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist27t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist28t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist28t.Checked = False Then
        mnuChainfist28t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist28t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist29t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist29t.Checked = False Then
        mnuChainfist29t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist29t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub



Private Sub mnuChainfist31t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist31t.Checked = False Then
        mnuChainfist31t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist31t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist32t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 7
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist32t.Checked = False Then
        mnuChainfist32t.Checked = True
        AddValueToGroup
    'weapon
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
    Else
    'If previously checked then:
        mnuChainfist32t.Checked = False
        RemoveValueFromGroup
    
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist33t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist33t.Checked = False Then
        mnuChainfist33t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist33t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist34t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist34t.Checked = False Then
        mnuChainfist34t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist34t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist35t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist35t.Checked = False Then
        mnuChainfist35t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist35t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist36t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist36t.Checked = False Then
        mnuChainfist36t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist36t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist37t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist37t.Checked = False Then
        mnuChainfist37t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist37t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist38t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist38t.Checked = False Then
        mnuChainfist38t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist38t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfist39t_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 8
    ActiveValue = 5
    
'If previously unchecked then:
    If mnuChainfist39t.Checked = False Then
        mnuChainfist39t.Checked = True
        AddValueToGroup
    Else
    'If previously checked then:
        mnuChainfist39t.Checked = False
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfistSergeant1t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 9
    ActiveArmy = 1

'If previously unchecked then check
    If mnuChainfistSergeant1t.Checked = False Then
        mnuChainfistSergeant1t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuChainfistSergeant1t.Checked = True And mnuBolterFlamerSergeant1t.Checked = True Or mnuBolterGrenadeLauncherSergeant1t.Checked = True Or mnuBolterPlasmagunSergeant1t.Checked = True Or mnuBolterMeltagunSergeant1t.Checked = True Or mnuLightningClawSergeant1t.Checked = True Or mnuLightningClawsSergeant1t.Checked = True Or mnuPowerFistSergeant1t.Checked = True Or mnuStormShieldSergeant1t.Checked = True Or mnuThunderHammerSergeant1t.Checked = True Then
            If mnuBolterFlamerSergeant1t.Checked = False Then
                mnuBolterFlamerSergeant1t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant1t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant1t.Visible = False
            End If
            If mnuBolterMeltagunSergeant1t.Checked = False Then
                mnuBolterMeltagunSergeant1t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant1t.Checked = False Then
                mnuBolterPlasmagunSergeant1t.Visible = False
            End If
            If mnuStormBolterSergeant1t.Checked = False Then
                mnuStormBolterSergeant1t.Visible = False
            End If
            If mnuLightningClawSergeant1t.Checked = False Then
                mnuLightningClawSergeant1t.Visible = False
            End If
            If mnuLightningClawsSergeant1t.Checked = False Then
                mnuLightningClawsSergeant1t.Visible = False
            End If
            If mnuPowerFistSergeant1t.Checked = False Then
                mnuPowerFistSergeant1t.Visible = False
            End If
            If mnuPowerWeaponSergeant1t.Checked = False Then
                mnuPowerWeaponSergeant1t.Visible = False
            End If
            If mnuStormShieldSergeant1t.Checked = False Then
                mnuStormShieldSergeant1t.Visible = False
            End If
            If mnuThunderHammerSergeant1t.Checked = False Then
                mnuThunderHammerSergeant1t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuChainfistSergeant1t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant1t.Visible = True
        mnuBolterGrenadeLauncherSergeant1t.Visible = True
        mnuBolterMeltagunSergeant1t.Visible = True
        mnuBolterPlasmagunSergeant1t.Visible = True
        mnuStormBolterSergeant1t.Visible = True
        mnuLightningClawSergeant1t.Visible = True
        mnuLightningClawsSergeant1t.Visible = True
        mnuPowerFistSergeant1t.Visible = True
        mnuPowerWeaponSergeant1t.Visible = True
        mnuStormShieldSergeant1t.Visible = True
        mnuThunderHammerSergeant1t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfistSergeant2t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 10
    ActiveArmy = 1

'If previously unchecked then check
    If mnuChainfistSergeant2t.Checked = False Then
        mnuChainfistSergeant2t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuChainfistSergeant2t.Checked = True And mnuBolterFlamerSergeant2t.Checked = True Or mnuBolterGrenadeLauncherSergeant2t.Checked = True Or mnuBolterPlasmagunSergeant2t.Checked = True Or mnuBolterMeltagunSergeant2t.Checked = True Or mnuLightningClawSergeant2t.Checked = True Or mnuLightningClawsSergeant2t.Checked = True Or mnuPowerFistSergeant2t.Checked = True Or mnuStormShieldSergeant2t.Checked = True Or mnuThunderHammerSergeant2t.Checked = True Then
            If mnuBolterFlamerSergeant2t.Checked = False Then
                mnuBolterFlamerSergeant2t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant2t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant2t.Visible = False
            End If
            If mnuBolterMeltagunSergeant2t.Checked = False Then
                mnuBolterMeltagunSergeant2t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant2t.Checked = False Then
                mnuBolterPlasmagunSergeant2t.Visible = False
            End If
            If mnuStormBolterSergeant2t.Checked = False Then
                mnuStormBolterSergeant2t.Visible = False
            End If
            If mnuLightningClawSergeant2t.Checked = False Then
                mnuLightningClawSergeant2t.Visible = False
            End If
            If mnuLightningClawsSergeant2t.Checked = False Then
                mnuLightningClawsSergeant2t.Visible = False
            End If
            If mnuPowerFistSergeant2t.Checked = False Then
                mnuPowerFistSergeant2t.Visible = False
            End If
            If mnuPowerWeaponSergeant2t.Checked = False Then
                mnuPowerWeaponSergeant2t.Visible = False
            End If
            If mnuStormShieldSergeant2t.Checked = False Then
                mnuStormShieldSergeant2t.Visible = False
            End If
            If mnuThunderHammerSergeant2t.Checked = False Then
                mnuThunderHammerSergeant2t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuChainfistSergeant2t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant2t.Visible = True
        mnuBolterGrenadeLauncherSergeant2t.Visible = True
        mnuBolterMeltagunSergeant2t.Visible = True
        mnuBolterPlasmagunSergeant2t.Visible = True
        mnuStormBolterSergeant2t.Visible = True
        mnuLightningClawSergeant2t.Visible = True
        mnuLightningClawsSergeant2t.Visible = True
        mnuPowerFistSergeant2t.Visible = True
        mnuPowerWeaponSergeant2t.Visible = True
        mnuStormShieldSergeant2t.Visible = True
        mnuThunderHammerSergeant2t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuChainfistSergeant3t_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 11
    ActiveArmy = 1

'If previously unchecked then check
    If mnuChainfistSergeant3t.Checked = False Then
        mnuChainfistSergeant3t.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuChainfistSergeant3t.Checked = True And mnuBolterFlamerSergeant3t.Checked = True Or mnuBolterGrenadeLauncherSergeant3t.Checked = True Or mnuBolterPlasmagunSergeant3t.Checked = True Or mnuBolterMeltagunSergeant3t.Checked = True Or mnuLightningClawSergeant3t.Checked = True Or mnuLightningClawsSergeant3t.Checked = True Or mnuPowerFistSergeant3t.Checked = True Or mnuStormShieldSergeant3t.Checked = True Or mnuThunderHammerSergeant3t.Checked = True Then
            If mnuBolterFlamerSergeant3t.Checked = False Then
                mnuBolterFlamerSergeant3t.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant3t.Checked = False Then
                mnuBolterGrenadeLauncherSergeant3t.Visible = False
            End If
            If mnuBolterMeltagunSergeant3t.Checked = False Then
                mnuBolterMeltagunSergeant3t.Visible = False
            End If
            If mnuBolterPlasmagunSergeant3t.Checked = False Then
                mnuBolterPlasmagunSergeant3t.Visible = False
            End If
            If mnuStormBolterSergeant3t.Checked = False Then
                mnuStormBolterSergeant3t.Visible = False
            End If
            If mnuLightningClawSergeant3t.Checked = False Then
                mnuLightningClawSergeant3t.Visible = False
            End If
            If mnuLightningClawsSergeant3t.Checked = False Then
                mnuLightningClawsSergeant3t.Visible = False
            End If
            If mnuPowerFistSergeant3t.Checked = False Then
                mnuPowerFistSergeant3t.Visible = False
            End If
            If mnuPowerWeaponSergeant3t.Checked = False Then
                mnuPowerWeaponSergeant3t.Visible = False
            End If
            If mnuStormShieldSergeant3t.Checked = False Then
                mnuStormShieldSergeant3t.Visible = False
            End If
            If mnuThunderHammerSergeant3t.Checked = False Then
                mnuThunderHammerSergeant3t.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuChainfistSergeant3t.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant3t.Visible = True
        mnuBolterGrenadeLauncherSergeant3t.Visible = True
        mnuBolterMeltagunSergeant3t.Visible = True
        mnuBolterPlasmagunSergeant3t.Visible = True
        mnuStormBolterSergeant3t.Visible = True
        mnuLightningClawSergeant3t.Visible = True
        mnuLightningClawsSergeant3t.Visible = True
        mnuPowerFistSergeant3t.Visible = True
        mnuPowerWeaponSergeant3t.Visible = True
        mnuStormShieldSergeant3t.Visible = True
        mnuThunderHammerSergeant3t.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayElites

End Sub















Private Sub mnuTerminatorChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuTerminatorChoice1.Checked = False Then
        mnuTerminatorChoice1.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
        
    
    'disable vets and dreadnought and assault terminators and enable terminator squad
        mnuDreadnought1.Visible = False
        mnuVeteran1.Visible = False
        mnuTerminator1.Visible = True
        mnuCycloneMissileLauncher11t.Visible = True
        mnuAssaultCannon11t.Visible = True
        mnuHeavyFlamer11t.Visible = True
        mnuCycloneMissileLauncher12t.Visible = True
        mnuAssaultCannon12t.Visible = True
        mnuHeavyFlamer12t.Visible = True
               
    
    'If previously checked:
        If mnuVeteranChoice1.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1v.Checked = True Then
            mnuFragGrenades1v.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            mnuKrakGrenades1v.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            mnuTerminatorHonors1v.Checked = False
            ActiveValue = 10 * (SquadMembers(1) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuVeteranMarine11.Checked = True Then
            mnuVeteranMarine11.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine12.Checked = True Then
            mnuVeteranMarine12.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine13.Checked = True Then
            mnuVeteranMarine13.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine14.Checked = True Then
            mnuVeteranMarine14.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine15.Checked = True Then
            mnuVeteranMarine15.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuHeavyBolter1v.Checked = True Then
            mnuHeavyBolter1v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1v.Checked = True Then
            mnuMissileLauncher1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1v.Checked = True Then
            mnuLascannon1v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer1v.Checked = True Then
            mnuFlamer1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1v.Checked = True Then
            mnuMeltagun1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1v.Checked = True Then
            mnuPlasmagun1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice1.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice1.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 1
        If mnuTwinLinkedHeavyBolter1d.Checked = True Then
            mnuTwinLinkedHeavyBolter1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1d.Checked = True Then
            mnuMissileLauncher1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon1d.Checked = True Then
            mnuTwinLinkedLascannon1d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon1d.Checked = True Then
            mnuTwinLinkedAutocannon1d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon1d.Checked = True Then
            mnuAssaultCannon1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer1d.Checked = True Then
            mnuHeavyFlamer1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta1d.Checked = True Then
            mnuMultiMelta1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon1d.Checked = True Then
            mnuPlasmaCannon1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1d.Checked = True Then
            mnuExtraArmor1d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1d.Checked = True Then
            mnuSearchlight1d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1d.Checked = True Then
            mnuSmokeLaunchers1d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice1.Checked = False
        
        'If previously checked:
        If mnuAssaultTerminatorChoice1.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
        
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuAssaultTerminatorChoice1.Checked = False
        
        SquadMembers(1) = SquadMembers(1) + 5
    Else
    'If previously checked then:
        mnuTerminatorChoice1.Checked = False
    'disable terminator squad
        mnuTerminator1.Visible = False
    
    'clear Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5

        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites
End Sub
Private Sub mnuAssaultTerminatorChoice1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuAssaultTerminatorChoice1.Checked = False Then
        mnuAssaultTerminatorChoice1.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
    
    'disable vets and dreadnought and terminators and enable assault terminator squad
        mnuDreadnought1.Visible = False
        mnuVeteran1.Visible = False
        mnuTerminator1.Visible = True
        mnuCycloneMissileLauncher11t.Visible = False
        mnuAssaultCannon11t.Visible = False
        mnuHeavyFlamer11t.Visible = False
        mnuCycloneMissileLauncher12t.Visible = False
        mnuAssaultCannon12t.Visible = False
        mnuHeavyFlamer12t.Visible = False
    
    'If previously checked:
        If mnuVeteranChoice1.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant1.Checked = True Then
            mnuVeteranSergeant1.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades1v.Checked = True Then
            mnuFragGrenades1v.Checked = False
            ActiveValue = 1 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades1v.Checked = True Then
            mnuKrakGrenades1v.Checked = False
            ActiveValue = 2 * SquadMembers(1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors1v.Checked = True Then
            mnuTerminatorHonors1v.Checked = False
            ActiveValue = 10 * (SquadMembers(1) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuVeteranMarine11.Checked = True Then
            mnuVeteranMarine11.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine12.Checked = True Then
            mnuVeteranMarine12.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine13.Checked = True Then
            mnuVeteranMarine13.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine14.Checked = True Then
            mnuVeteranMarine14.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuVeteranMarine15.Checked = True Then
            mnuVeteranMarine15.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuHeavyBolter1v.Checked = True Then
            mnuHeavyBolter1v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1v.Checked = True Then
            mnuMissileLauncher1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon1v.Checked = True Then
            mnuLascannon1v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer1v.Checked = True Then
            mnuFlamer1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun1v.Checked = True Then
            mnuMeltagun1v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun1v.Checked = True Then
            mnuPlasmagun1v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino1.Checked = True Then
            mnuRhino1.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback1.Checked = True Then
            mnuRazorback1.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice1.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice1.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 1
        If mnuTwinLinkedHeavyBolter1d.Checked = True Then
            mnuTwinLinkedHeavyBolter1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher1d.Checked = True Then
            mnuMissileLauncher1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon1d.Checked = True Then
            mnuTwinLinkedLascannon1d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon1d.Checked = True Then
            mnuTwinLinkedAutocannon1d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon1d.Checked = True Then
            mnuAssaultCannon1d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer1d.Checked = True Then
            mnuHeavyFlamer1d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta1d.Checked = True Then
            mnuMultiMelta1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon1d.Checked = True Then
            mnuPlasmaCannon1d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor1d.Checked = True Then
            mnuExtraArmor1d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight1d.Checked = True Then
            mnuSearchlight1d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers1d.Checked = True Then
            mnuSmokeLaunchers1d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice1.Checked = False
        
        'If previously checked:
        If mnuTerminatorChoice1.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
        If mnuHeavyFlamer11t.Checked = True Then
            mnuHeavyFlamer11t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher11t.Checked = True Then
            mnuCycloneMissileLauncher11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon11t.Checked = True Then
            mnuAssaultCannon11t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer12t.Checked = True Then
            mnuHeavyFlamer12t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher12t.Checked = True Then
            mnuCycloneMissileLauncher12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon12t.Checked = True Then
            mnuAssaultCannon12t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice1.Checked = False
        
        
        SquadMembers(1) = SquadMembers(1) + 5
        
    Else
    'If previously checked then:
        mnuAssaultTerminatorChoice1.Checked = False
    'disable assault terminator squad
        mnuTerminator1.Visible = False
    
    'clear assault Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(1) = SquadMembers(1) - 5
        
        If mnuTerminator11.Checked = True Then
            mnuTerminator11.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator12.Checked = True Then
            mnuTerminator12.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator13.Checked = True Then
            mnuTerminator13.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator14.Checked = True Then
            mnuTerminator14.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        If mnuTerminator15.Checked = True Then
            mnuTerminator15.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(1) = SquadMembers(1) - 1
        End If
        
    'clear points from assault terminator squad
        If mnuChainfistSergeant1t.Checked = True Then
            mnuChainfistSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist11t.Checked = True Then
            mnuChainfist11t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist12t.Checked = True Then
            mnuChainfist12t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist13t.Checked = True Then
            mnuChainfist13t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist14t.Checked = True Then
            mnuChainfist14t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist15t.Checked = True Then
            mnuChainfist15t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist16t.Checked = True Then
            mnuChainfist16t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist17t.Checked = True Then
            mnuChainfist17t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist18t.Checked = True Then
            mnuChainfist18t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist19t.Checked = True Then
            mnuChainfist19t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant1t.Checked = True Then
            mnuLightningClawSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant1t.Checked = True Then
            mnuLightningClawsSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant1t.Checked = True Then
            mnuPowerFistSergeant1t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant1t.Checked = True Then
            mnuStormShieldSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant1t.Checked = True Then
            mnuThunderHammerSergeant1t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant1t.Checked = True Then
            mnuBolterFlamerSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant1t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant1t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant1t.Checked = True Then
            mnuBolterPlasmagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant1t.Checked = True Then
            mnuBolterMeltagunSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant1t.Checked = True Then
            mnuAuspexSergeant1t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant1t.Checked = True Then
            mnuMasterCraftedWeaponSergeant1t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant1t.Checked = True Then
            mnuTeleportHomerSergeant1t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites
End Sub

Private Sub mnuAssaultTerminatorChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuAssaultTerminatorChoice2.Checked = False Then
        mnuAssaultTerminatorChoice2.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
        
    
    'disable vets and dreadnought and terminators and enable assault terminator squad
        mnuDreadnought2.Visible = False
        mnuVeteran2.Visible = False
        mnuTerminator2.Visible = True
        mnuCycloneMissileLauncher21t.Visible = False
        mnuAssaultCannon21t.Visible = False
        mnuHeavyFlamer21t.Visible = False
        mnuCycloneMissileLauncher22t.Visible = False
        mnuAssaultCannon22t.Visible = False
        mnuHeavyFlamer22t.Visible = False
    
    'If previously checked:
        If mnuVeteranChoice2.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2v.Checked = True Then
            mnuFragGrenades2v.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            mnuKrakGrenades2v.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            mnuTerminatorHonors2v.Checked = False
            ActiveValue = 10 * (SquadMembers(2) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuVeteranMarine22.Checked = True Then
            mnuVeteranMarine22.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine22.Checked = True Then
            mnuVeteranMarine22.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine23.Checked = True Then
            mnuVeteranMarine23.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine24.Checked = True Then
            mnuVeteranMarine24.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine25.Checked = True Then
            mnuVeteranMarine25.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuHeavyBolter2v.Checked = True Then
            mnuHeavyBolter2v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2v.Checked = True Then
            mnuMissileLauncher2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2v.Checked = True Then
            mnuLascannon2v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer2v.Checked = True Then
            mnuFlamer2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2v.Checked = True Then
            mnuMeltagun2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2v.Checked = True Then
            mnuPlasmagun2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice2.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice2.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 1
        If mnuTwinLinkedHeavyBolter2d.Checked = True Then
            mnuTwinLinkedHeavyBolter2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2d.Checked = True Then
            mnuMissileLauncher2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon2d.Checked = True Then
            mnuTwinLinkedLascannon2d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon2d.Checked = True Then
            mnuTwinLinkedAutocannon2d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon2d.Checked = True Then
            mnuAssaultCannon2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer2d.Checked = True Then
            mnuHeavyFlamer2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta2d.Checked = True Then
            mnuMultiMelta2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon2d.Checked = True Then
            mnuPlasmaCannon2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2d.Checked = True Then
            mnuExtraArmor2d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2d.Checked = True Then
            mnuSearchlight2d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2d.Checked = True Then
            mnuSmokeLaunchers2d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice2.Checked = False
        
        'If previously checked:
        If mnuTerminatorChoice2.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator23.Checked = True Then
            mnuTerminator23.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator24.Checked = True Then
            mnuTerminator24.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator25.Checked = True Then
            mnuTerminator25.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        
        If mnuHeavyFlamer21t.Checked = True Then
            mnuHeavyFlamer21t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon21t.Checked = True Then
            mnuAssaultCannon21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer22t.Checked = True Then
            mnuHeavyFlamer22t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon22t.Checked = True Then
            mnuAssaultCannon22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist21t.Checked = True Then
            mnuChainfist21t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist22t.Checked = True Then
            mnuChainfist22t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist23t.Checked = True Then
            mnuChainfist23t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist24t.Checked = True Then
            mnuChainfist24t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist25t.Checked = True Then
            mnuChainfist25t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist26t.Checked = True Then
            mnuChainfist26t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist27t.Checked = True Then
            mnuChainfist27t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist28t.Checked = True Then
            mnuChainfist28t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist29t.Checked = True Then
            mnuChainfist29t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice2.Checked = False
        
        SquadMembers(2) = SquadMembers(2) + 5
        
    Else
    'If previously checked then:
        mnuAssaultTerminatorChoice2.Checked = False
    'disable assault terminator squad
        mnuTerminator2.Visible = False
    
    'clear assault Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator23.Checked = True Then
            mnuTerminator23.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator24.Checked = True Then
            mnuTerminator24.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator25.Checked = True Then
            mnuTerminator25.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
    'clear points from assault terminator squad
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist21t.Checked = True Then
            mnuChainfist21t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist22t.Checked = True Then
            mnuChainfist22t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist23t.Checked = True Then
            mnuChainfist23t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist24t.Checked = True Then
            mnuChainfist24t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist25t.Checked = True Then
            mnuChainfist25t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist26t.Checked = True Then
            mnuChainfist26t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist27t.Checked = True Then
            mnuChainfist27t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist28t.Checked = True Then
            mnuChainfist28t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist29t.Checked = True Then
            mnuChainfist29t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites

End Sub



Private Sub mnuTerminatorChoice2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuTerminatorChoice2.Checked = False Then
        mnuTerminatorChoice2.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
        
    
    'disable vets and dreadnought and assault terminators and enable terminator squad
        mnuDreadnought2.Visible = False
        mnuVeteran2.Visible = False
        mnuTerminator2.Visible = True
        mnuCycloneMissileLauncher21t.Visible = True
        mnuAssaultCannon21t.Visible = True
        mnuHeavyFlamer21t.Visible = True
        mnuCycloneMissileLauncher22t.Visible = True
        mnuAssaultCannon22t.Visible = True
        mnuHeavyFlamer22t.Visible = True
        
        
    'If previously checked:
        If mnuVeteranChoice2.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant2.Checked = True Then
            mnuVeteranSergeant2.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades2v.Checked = True Then
            mnuFragGrenades2v.Checked = False
            ActiveValue = 1 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades2v.Checked = True Then
            mnuKrakGrenades2v.Checked = False
            ActiveValue = 2 * SquadMembers(2)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors2v.Checked = True Then
            mnuTerminatorHonors2v.Checked = False
            ActiveValue = 10 * (SquadMembers(2) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuVeteranMarine21.Checked = True Then
            mnuVeteranMarine21.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine22.Checked = True Then
            mnuVeteranMarine22.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine23.Checked = True Then
            mnuVeteranMarine23.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine24.Checked = True Then
            mnuVeteranMarine24.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuVeteranMarine25.Checked = True Then
            mnuVeteranMarine25.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuHeavyBolter2v.Checked = True Then
            mnuHeavyBolter2v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2v.Checked = True Then
            mnuMissileLauncher2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon2v.Checked = True Then
            mnuLascannon2v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer2v.Checked = True Then
            mnuFlamer2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun2v.Checked = True Then
            mnuMeltagun2v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun2v.Checked = True Then
            mnuPlasmagun2v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino2.Checked = True Then
            mnuRhino2.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback2.Checked = True Then
            mnuRazorback2.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice2.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice2.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 1
        If mnuTwinLinkedHeavyBolter2d.Checked = True Then
            mnuTwinLinkedHeavyBolter2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher2d.Checked = True Then
            mnuMissileLauncher2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon2d.Checked = True Then
            mnuTwinLinkedLascannon2d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon2d.Checked = True Then
            mnuTwinLinkedAutocannon2d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon2d.Checked = True Then
            mnuAssaultCannon2d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer2d.Checked = True Then
            mnuHeavyFlamer2d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta2d.Checked = True Then
            mnuMultiMelta2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon2d.Checked = True Then
            mnuPlasmaCannon2d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor2d.Checked = True Then
            mnuExtraArmor2d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight2d.Checked = True Then
            mnuSearchlight2d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers2d.Checked = True Then
            mnuSmokeLaunchers2d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice2.Checked = False
        
        'If previously checked:
        If mnuAssaultTerminatorChoice2.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        If mnuTerminator21.Checked = True Then
            mnuTerminator21.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator23.Checked = True Then
            mnuTerminator23.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator24.Checked = True Then
            mnuTerminator24.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator25.Checked = True Then
            mnuTerminator25.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        
        
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist21t.Checked = True Then
            mnuChainfist21t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist22t.Checked = True Then
            mnuChainfist22t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist23t.Checked = True Then
            mnuChainfist23t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist24t.Checked = True Then
            mnuChainfist24t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist25t.Checked = True Then
            mnuChainfist25t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist26t.Checked = True Then
            mnuChainfist26t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist27t.Checked = True Then
            mnuChainfist27t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist28t.Checked = True Then
            mnuChainfist28t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist29t.Checked = True Then
            mnuChainfist29t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuAssaultTerminatorChoice2.Checked = False
        
        
        SquadMembers(2) = SquadMembers(2) + 5
        
    Else
    'If previously checked then:
        mnuTerminatorChoice2.Checked = False
    'disable terminator squad
        mnuTerminator2.Visible = False
    
    'clear Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(2) = SquadMembers(2) - 5
        
        If mnuTerminator21.Checked = True Then
            mnuTerminator21.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator22.Checked = True Then
            mnuTerminator22.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator23.Checked = True Then
            mnuTerminator23.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator24.Checked = True Then
            mnuTerminator24.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
        If mnuTerminator25.Checked = True Then
            mnuTerminator25.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(2) = SquadMembers(2) - 1
        End If
    'clear points from terminator squad
        
        If mnuHeavyFlamer21t.Checked = True Then
            mnuHeavyFlamer21t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher21t.Checked = True Then
            mnuCycloneMissileLauncher21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon21t.Checked = True Then
            mnuAssaultCannon21t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer22t.Checked = True Then
            mnuHeavyFlamer22t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher22t.Checked = True Then
            mnuCycloneMissileLauncher22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon22t.Checked = True Then
            mnuAssaultCannon22t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant2t.Checked = True Then
            mnuChainfistSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist21t.Checked = True Then
            mnuChainfist21t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist22t.Checked = True Then
            mnuChainfist22t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist23t.Checked = True Then
            mnuChainfist23t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist24t.Checked = True Then
            mnuChainfist24t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist25t.Checked = True Then
            mnuChainfist25t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist26t.Checked = True Then
            mnuChainfist26t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist27t.Checked = True Then
            mnuChainfist27t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist28t.Checked = True Then
            mnuChainfist28t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist29t.Checked = True Then
            mnuChainfist29t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant2t.Checked = True Then
            mnuLightningClawSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant2t.Checked = True Then
            mnuLightningClawsSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant2t.Checked = True Then
            mnuPowerFistSergeant2t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant2t.Checked = True Then
            mnuStormShieldSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant2t.Checked = True Then
            mnuThunderHammerSergeant2t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant2t.Checked = True Then
            mnuBolterFlamerSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant2t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant2t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant2t.Checked = True Then
            mnuBolterPlasmagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant2t.Checked = True Then
            mnuBolterMeltagunSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant2t.Checked = True Then
            mnuAuspexSergeant2t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant2t.Checked = True Then
            mnuMasterCraftedWeaponSergeant2t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant2t.Checked = True Then
            mnuTeleportHomerSergeant2t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuAssaultTerminatorChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuAssaultTerminatorChoice3.Checked = False Then
        mnuAssaultTerminatorChoice3.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
        
    
    'disable vets and dreadnought and terminators and enable assault terminator squad
        mnuDreadnought3.Visible = False
        mnuVeteran3.Visible = False
        mnuTerminator3.Visible = True
        mnuCycloneMissileLauncher31t.Visible = False
        mnuAssaultCannon31t.Visible = False
        mnuHeavyFlamer31t.Visible = False
        mnuCycloneMissileLauncher32t.Visible = False
        mnuAssaultCannon32t.Visible = False
        mnuHeavyFlamer32t.Visible = False
    
    'If previously checked:
        If mnuVeteranChoice3.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3v.Checked = True Then
            mnuFragGrenades3v.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            mnuKrakGrenades3v.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            mnuTerminatorHonors3v.Checked = False
            ActiveValue = 10 * (SquadMembers(3) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuVeteranMarine33.Checked = True Then
            mnuVeteranMarine33.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine32.Checked = True Then
            mnuVeteranMarine32.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine33.Checked = True Then
            mnuVeteranMarine33.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine34.Checked = True Then
            mnuVeteranMarine34.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine35.Checked = True Then
            mnuVeteranMarine35.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuHeavyBolter3v.Checked = True Then
            mnuHeavyBolter3v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3v.Checked = True Then
            mnuMissileLauncher3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3v.Checked = True Then
            mnuLascannon3v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer3v.Checked = True Then
            mnuFlamer3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3v.Checked = True Then
            mnuMeltagun3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3v.Checked = True Then
            mnuPlasmagun3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice3.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice3.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 1
        If mnuTwinLinkedHeavyBolter3d.Checked = True Then
            mnuTwinLinkedHeavyBolter3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3d.Checked = True Then
            mnuMissileLauncher3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon3d.Checked = True Then
            mnuTwinLinkedLascannon3d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon3d.Checked = True Then
            mnuTwinLinkedAutocannon3d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon3d.Checked = True Then
            mnuAssaultCannon3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer3d.Checked = True Then
            mnuHeavyFlamer3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta3d.Checked = True Then
            mnuMultiMelta3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon3d.Checked = True Then
            mnuPlasmaCannon3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3d.Checked = True Then
            mnuExtraArmor3d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3d.Checked = True Then
            mnuSearchlight3d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3d.Checked = True Then
            mnuSmokeLaunchers3d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice3.Checked = False
        
        'If previously checked:
        If mnuTerminatorChoice3.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator32.Checked = True Then
            mnuTerminator32.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator34.Checked = True Then
            mnuTerminator34.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator35.Checked = True Then
            mnuTerminator35.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        
        If mnuHeavyFlamer31t.Checked = True Then
            mnuHeavyFlamer31t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon31t.Checked = True Then
            mnuAssaultCannon31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer32t.Checked = True Then
            mnuHeavyFlamer32t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon32t.Checked = True Then
            mnuAssaultCannon32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist31t.Checked = True Then
            mnuChainfist31t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist32t.Checked = True Then
            mnuChainfist32t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist33t.Checked = True Then
            mnuChainfist33t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist34t.Checked = True Then
            mnuChainfist34t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist35t.Checked = True Then
            mnuChainfist35t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist36t.Checked = True Then
            mnuChainfist36t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist37t.Checked = True Then
            mnuChainfist37t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist38t.Checked = True Then
            mnuChainfist38t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist39t.Checked = True Then
            mnuChainfist39t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuTerminatorChoice3.Checked = False
        SquadMembers(3) = SquadMembers(3) + 5
        
    Else
    'If previously checked then:
        mnuAssaultTerminatorChoice3.Checked = False
    'disable assault terminator squad
        mnuTerminator3.Visible = False
    
    'clear assault Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator32.Checked = True Then
            mnuTerminator32.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator34.Checked = True Then
            mnuTerminator34.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator35.Checked = True Then
            mnuTerminator35.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
    'clear points from assault terminator squad
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist31t.Checked = True Then
            mnuChainfist31t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist32t.Checked = True Then
            mnuChainfist32t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist33t.Checked = True Then
            mnuChainfist33t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist34t.Checked = True Then
            mnuChainfist34t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist35t.Checked = True Then
            mnuChainfist35t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist36t.Checked = True Then
            mnuChainfist36t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist37t.Checked = True Then
            mnuChainfist37t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist38t.Checked = True Then
            mnuChainfist38t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist39t.Checked = True Then
            mnuChainfist39t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuTerminatorChoice3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 6
    ActiveValue = 42 * 4
    
'If previously unchecked then:
    If mnuTerminatorChoice3.Checked = False Then
        mnuTerminatorChoice3.Checked = True
    'Add assault Terminators
        AddValueToGroup
       
    'Add Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        AddValueToGroup
        
    
    'disable vets and dreadnought and assault terminators and enable terminator squad
        mnuDreadnought3.Visible = False
        mnuVeteran3.Visible = False
        mnuTerminator3.Visible = True
        mnuCycloneMissileLauncher31t.Visible = True
        mnuAssaultCannon31t.Visible = True
        mnuHeavyFlamer31t.Visible = True
        mnuCycloneMissileLauncher32t.Visible = True
        mnuAssaultCannon32t.Visible = True
        mnuHeavyFlamer32t.Visible = True
        
    
    'If previously checked:
        If mnuVeteranChoice3.Checked = True Then
    'clear points from Vet Squad
        ActiveValue = 18 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Vet squad
        If mnuVeteranSergeant3.Checked = True Then
            mnuVeteranSergeant3.Checked = False
            ActiveValue = 12
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenades3v.Checked = True Then
            mnuFragGrenades3v.Checked = False
            ActiveValue = 1 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades3v.Checked = True Then
            mnuKrakGrenades3v.Checked = False
            ActiveValue = 2 * SquadMembers(3)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors3v.Checked = True Then
            mnuTerminatorHonors3v.Checked = False
            ActiveValue = 10 * (SquadMembers(3) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        ActiveValue = 18
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuVeteranMarine31.Checked = True Then
            mnuVeteranMarine31.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine32.Checked = True Then
            mnuVeteranMarine32.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine33.Checked = True Then
            mnuVeteranMarine33.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine34.Checked = True Then
            mnuVeteranMarine34.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuVeteranMarine35.Checked = True Then
            mnuVeteranMarine35.Checked = False
            ActiveValue = 18
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuHeavyBolter3v.Checked = True Then
            mnuHeavyBolter3v.Checked = False
            ActiveValue = 5
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3v.Checked = True Then
            mnuMissileLauncher3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuLascannon3v.Checked = True Then
            mnuLascannon3v.Checked = False
            ActiveValue = 15
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuFlamer3v.Checked = True Then
            mnuFlamer3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMeltagun3v.Checked = True Then
            mnuMeltagun3v.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuPlasmagun3v.Checked = True Then
            mnuPlasmagun3v.Checked = False
            ActiveValue = 6
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        'Make transport options unavailable
        ActiveGroup = 9
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
        If mnuRhino3.Checked = True Then
            mnuRhino3.Checked = False
            ActiveValue = 50
            RemoveValueFromGroup
        End If
        If mnuRazorback3.Checked = True Then
            mnuRazorback3.Checked = False
            ActiveValue = 70
            RemoveValueFromGroup
        End If
        End If
        mnuVeteranChoice3.Checked = False
        
        'If previously checked:
        If mnuDreadnoughtChoice3.Checked = True Then
    'clear points from Dreadnought
        ActiveValue = 75
        ActiveGroup = 6
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 1
        If mnuTwinLinkedHeavyBolter3d.Checked = True Then
            mnuTwinLinkedHeavyBolter3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuMissileLauncher3d.Checked = True Then
            mnuMissileLauncher3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedLascannon3d.Checked = True Then
            mnuTwinLinkedLascannon3d.Checked = False
            ActiveValue = 50
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuTwinLinkedAutocannon3d.Checked = True Then
            mnuTwinLinkedAutocannon3d.Checked = False
            ActiveValue = 35
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon3d.Checked = True Then
            mnuAssaultCannon3d.Checked = False
            ActiveValue = 30
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuHeavyFlamer3d.Checked = True Then
            mnuHeavyFlamer3d.Checked = False
            ActiveValue = 10
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuMultiMelta3d.Checked = True Then
            mnuMultiMelta3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuPlasmaCannon3d.Checked = True Then
            mnuPlasmaCannon3d.Checked = False
            ActiveValue = 40
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuExtraArmor3d.Checked = True Then
            mnuExtraArmor3d.Checked = False
            ActiveValue = 5
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSearchlight3d.Checked = True Then
            mnuSearchlight3d.Checked = False
            ActiveValue = 1
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers3d.Checked = True Then
            mnuSmokeLaunchers3d.Checked = False
            ActiveValue = 3
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        End If
        mnuDreadnoughtChoice3.Checked = False
        
        'If previously checked:
        If mnuAssaultTerminatorChoice3.Checked = True Then
    'clear points from Terminator squad
        ActiveValue = 42 * 4
        ActiveGroup = 6
        RemoveValueFromGroup
    'clear points from Terminator squad
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5
        If mnuTerminator31.Checked = True Then
            mnuTerminator31.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator32.Checked = True Then
            mnuTerminator32.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator34.Checked = True Then
            mnuTerminator34.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator35.Checked = True Then
            mnuTerminator35.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        
        
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist31t.Checked = True Then
            mnuChainfist31t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist32t.Checked = True Then
            mnuChainfist32t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist33t.Checked = True Then
            mnuChainfist33t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist34t.Checked = True Then
            mnuChainfist34t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist35t.Checked = True Then
            mnuChainfist35t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist36t.Checked = True Then
            mnuChainfist36t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist37t.Checked = True Then
            mnuChainfist37t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist38t.Checked = True Then
            mnuChainfist38t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist39t.Checked = True Then
            mnuChainfist39t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        End If
        mnuAssaultTerminatorChoice3.Checked = False
        
        SquadMembers(3) = SquadMembers(3) + 5
        
    Else
    'If previously checked then:
        mnuTerminatorChoice3.Checked = False
    'disable terminator squad
        mnuTerminator3.Visible = False
    
    'clear Terminators
        RemoveValueFromGroup
    'clear Sergeant
        ActiveValue = 42
        ActiveGroup = 2
        RemoveValueFromGroup
        SquadMembers(3) = SquadMembers(3) - 5

        If mnuTerminator31.Checked = True Then
            mnuTerminator31.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator32.Checked = True Then
            mnuTerminator32.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator33.Checked = True Then
            mnuTerminator33.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator34.Checked = True Then
            mnuTerminator34.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        If mnuTerminator35.Checked = True Then
            mnuTerminator35.Checked = False
            ActiveValue = 42
            ActiveGroup = 6
            RemoveValueFromGroup
            SquadMembers(3) = SquadMembers(3) - 1
        End If
        
        If mnuHeavyFlamer31t.Checked = True Then
            mnuHeavyFlamer31t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher31t.Checked = True Then
            mnuCycloneMissileLauncher31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon31t.Checked = True Then
            mnuAssaultCannon31t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuHeavyFlamer32t.Checked = True Then
            mnuHeavyFlamer32t.Checked = False
            ActiveValue = 10
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuCycloneMissileLauncher32t.Checked = True Then
            mnuCycloneMissileLauncher32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        If mnuAssaultCannon32t.Checked = True Then
            mnuAssaultCannon32t.Checked = False
            ActiveValue = 20
            ActiveGroup = 8
            RemoveValueFromGroup
        End If
        
        If mnuChainfistSergeant3t.Checked = True Then
            mnuChainfistSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuChainfist31t.Checked = True Then
            mnuChainfist31t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist32t.Checked = True Then
            mnuChainfist32t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist33t.Checked = True Then
            mnuChainfist33t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist34t.Checked = True Then
            mnuChainfist34t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist35t.Checked = True Then
            mnuChainfist35t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist36t.Checked = True Then
            mnuChainfist36t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist37t.Checked = True Then
            mnuChainfist37t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist38t.Checked = True Then
            mnuChainfist38t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        If mnuChainfist39t.Checked = True Then
            mnuChainfist39t.Checked = False
            ActiveValue = 5
            ActiveGroup = 7
            RemoveValueFromGroup
        End If
        
        If mnuLightningClawSergeant3t.Checked = True Then
            mnuLightningClawSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuLightningClawsSergeant3t.Checked = True Then
            mnuLightningClawsSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuPowerFistSergeant3t.Checked = True Then
            mnuPowerFistSergeant3t.Checked = False
            ActiveValue = 25
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuStormShieldSergeant3t.Checked = True Then
            mnuStormShieldSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuThunderHammerSergeant3t.Checked = True Then
            mnuThunderHammerSergeant3t.Checked = False
            ActiveValue = 30
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterFlamerSergeant3t.Checked = True Then
            mnuBolterFlamerSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterGrenadeLauncherSergeant3t.Checked = True Then
            mnuBolterGrenadeLauncherSergeant3t.Checked = False
            ActiveValue = 10
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterPlasmagunSergeant3t.Checked = True Then
            mnuBolterPlasmagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuBolterMeltagunSergeant3t.Checked = True Then
            mnuBolterMeltagunSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuAuspexSergeant3t.Checked = True Then
            mnuAuspexSergeant3t.Checked = False
            ActiveValue = 2
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuMasterCraftedWeaponSergeant3t.Checked = True Then
            mnuMasterCraftedWeaponSergeant3t.Checked = False
            ActiveValue = 15
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuTeleportHomerSergeant3t.Checked = True Then
            mnuTeleportHomerSergeant3t.Checked = False
            ActiveValue = 5
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites

End Sub







Private Sub mnuVeteranSergeant1_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 9
    ActiveGroup = 2
    ActiveValue = 12
    
'If previously unchecked then:
    If mnuVeteranSergeant1.Checked = False Then
        mnuVeteranSergeant1.Checked = True
        AddValueToGroup
        mnuTerminatorHonors1v.Visible = True
    Else
    'If previously checked then:
        mnuVeteranSergeant1.Checked = False
        RemoveValueFromGroup
        mnuTerminatorHonors1v.Visible = False
        If mnuTerminatorHonors1v.Checked = True Then
            mnuTerminatorHonors1v.Checked = False
            ActiveValue = 10 * (SquadMembers(1) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
        
    End If
'Display Squad
    DisplayElites
End Sub


Private Sub mnuVeteranSergeant2_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 10
    ActiveGroup = 2
    ActiveValue = 12
    
'If previously unchecked then:
    If mnuVeteranSergeant2.Checked = False Then
        mnuVeteranSergeant2.Checked = True
        AddValueToGroup
        mnuTerminatorHonors2v.Visible = True
    Else
    'If previously checked then:
        mnuVeteranSergeant2.Checked = False
        RemoveValueFromGroup
        If mnuTerminatorHonors2v.Checked = True Then
            mnuTerminatorHonors2v.Checked = False
            ActiveValue = 10 * (SquadMembers(2) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub

Private Sub mnuVeteranSergeant3_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 11
    ActiveGroup = 2
    ActiveValue = 12
    
'If previously unchecked then:
    If mnuVeteranSergeant3.Checked = False Then
        mnuVeteranSergeant3.Checked = True
        AddValueToGroup
        mnuTerminatorHonors3v.Visible = True
    Else
    'If previously checked then:
        mnuVeteranSergeant3.Checked = False
        RemoveValueFromGroup
        If mnuTerminatorHonors3v.Checked = True Then
            mnuTerminatorHonors3v.Checked = False
            ActiveValue = 10 * (SquadMembers(3) - 1)
            ActiveGroup = 6
            RemoveValueFromGroup
        End If
    End If
'Display Squad
    DisplayElites

End Sub
