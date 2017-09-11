VERSION 5.00
Begin VB.Form frmSMHQ1 
   Caption         =   "Space Marines HQ1"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picDisplay 
      Height          =   2415
      Left            =   2880
      ScaleHeight     =   2355
      ScaleWidth      =   1635
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton cmdSMHQ1Done 
      Caption         =   "Done"
      Height          =   255
      Left            =   3840
      TabIndex        =   0
      Top             =   2880
      Width           =   615
   End
   Begin VB.Menu mnuSpaceMarines 
      Caption         =   "Space Marines"
      Begin VB.Menu mnuSMHQ1 
         Caption         =   "HQ 1"
         Begin VB.Menu mnuLeaderSMHQ1 
            Caption         =   "Leader 30"
         End
         Begin VB.Menu mnuCommanderSMHQ1 
            Caption         =   "Commander 45"
         End
         Begin VB.Menu mnuFCSMHQ1 
            Caption         =   "Force Commander 60"
         End
         Begin VB.Menu mnuLibrarianSMHQ1 
            Caption         =   "Librarian 60"
         End
         Begin VB.Menu mnuChaplainSMHQ1 
            Caption         =   "Chaplain 70"
         End
         Begin VB.Menu mnuEquipmentSMHQ1 
            Caption         =   "Equipment"
            Visible         =   0   'False
            Begin VB.Menu mnuBoltPistoSMlHQ1 
               Caption         =   "Bolt Pistol 01"
            End
            Begin VB.Menu mnuChainfistSMHQ1 
               Caption         =   "Chainfist (Terminators only)* 30"
            End
            Begin VB.Menu mnuCloseCombatWeaponSMHQ1 
               Caption         =   "Close Combat Weapon 01"
            End
            Begin VB.Menu mnuForceWeaponSMHQ1 
               Caption         =   "Force Weapon ('Librarians Only)* 40"
            End
            Begin VB.Menu mnuLightningClawSMHQ1 
               Caption         =   "Lightning Claw (Single)* 25"
            End
            Begin VB.Menu mnuLightningClawsSMHQ1 
               Caption         =   "Lightning Claw (pair, two choices)* 30"
            End
            Begin VB.Menu mnuPlasmaPistolSMHQ1 
               Caption         =   "Plasma Pistol 15"
            End
            Begin VB.Menu mnuPowerFistSMHQ1 
               Caption         =   "Power Fist* 25"
            End
            Begin VB.Menu mnuPowerWeaponSMHQ1 
               Caption         =   "Power Weapon* 15"
            End
            Begin VB.Menu mnuStormShieldSMHQ1 
               Caption         =   "Storm Shield* 10"
            End
            Begin VB.Menu mnuThunderHammerSMHQ1 
               Caption         =   "Thunder Hammer* 30"
            End
            Begin VB.Menu mnuBolterSMHQ1 
               Caption         =   "Bolter 02"
            End
            Begin VB.Menu mnuBolterFlamerSMHQ1 
               Caption         =   "Bolter-Flamer* 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSMHQ1 
               Caption         =   "Bolter-Grenade Launcher* 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSMHQ1 
               Caption         =   "Bolter-Plasmagun* 15"
            End
            Begin VB.Menu mnuBolterMeltagunSMHQ1 
               Caption         =   "Bolter-Meltagun* 15"
            End
            Begin VB.Menu mnuStormBolterSMHQ1 
               Caption         =   "Storm Bolter* 05"
            End
            Begin VB.Menu mnuArtificerArmorSMHQ1 
               Caption         =   "Artificer Armor 20"
            End
            Begin VB.Menu mnuAuspexSMHQ1 
               Caption         =   "Auspex* 02"
            End
            Begin VB.Menu mnuBionicsSMHQ1 
               Caption         =   "Bionics 10"
            End
            Begin VB.Menu mnuFragGrenadesSMHQ1 
               Caption         =   "Frag Grenades"
            End
            Begin VB.Menu mnuHolyRelicSMHQ1 
               Caption         =   "Holy Relic (Chaplain only) (1)* 40"
            End
            Begin VB.Menu mnuIronHaloSMHQ1 
               Caption         =   "Iron Halo (1) 25"
            End
            Begin VB.Menu mnuKrakGrenadesSMHQ1 
               Caption         =   "Krak Grenades"
            End
            Begin VB.Menu mnuJumpPackSMHQ1 
               Caption         =   "Jump Pack 20"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSMHQ1 
               Caption         =   "Master-Crafted Weapon* 15"
            End
            Begin VB.Menu mnuMeltaBombsSMHQ1 
               Caption         =   "Melta Bombs 05"
            End
            Begin VB.Menu mnuPyschicHoodSMHQ1 
               Caption         =   "Psychic Hood*L 25"
            End
            Begin VB.Menu mnuPuritySealsSMHQ1 
               Caption         =   "Purity Seals* 05"
            End
            Begin VB.Menu mnuSpaceMarineBikeSMHQ1 
               Caption         =   "Space Marine Bike 35"
            End
            Begin VB.Menu mnuTeleportHomerSMHQ1 
               Caption         =   "Teleport Homer* 05"
            End
            Begin VB.Menu mnuTerminatorArmorSMHQ1 
               Caption         =   "Terminator Armor 25"
            End
            Begin VB.Menu mnuTerminatorHonorsSMHQ1 
               Caption         =   "Terminator Honors 15"
            End
         End
         Begin VB.Menu mnuCommandSquadSMHQ1 
            Caption         =   "Command Squad"
            Visible         =   0   'False
            Begin VB.Menu mnuComSGTSMHQ1 
               Caption         =   "Sergeant 18"
            End
            Begin VB.Menu mnuComVetSGTSMHQ1 
               Caption         =   "Veteran Sergeant 30"
            End
            Begin VB.Menu mnuEquipmentComSGTSMHQ1 
               Caption         =   "Sergeant Equipment"
               Visible         =   0   'False
               Begin VB.Menu mnuBoltPistoComSGTSMHQ1 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponComSGT1 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawComSGTSMHQ1 
                  Caption         =   "Lightning Claw (Single) 25"
               End
               Begin VB.Menu mnuLightningClawsComSGTSMHQ1 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolComSGTSMHQ1 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerFistComSGTSMHQ1 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuPowerWeaponComSGTSMHQ1 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuStormShieldComSGTSMHQ1 
                  Caption         =   "Storm Shield 10"
               End
               Begin VB.Menu mnuThunderHammerComSGTSMHQ1 
                  Caption         =   "Thunder Hammer 30"
               End
               Begin VB.Menu mnuBolterComSGTSMHQ1 
                  Caption         =   "Bolter 02"
               End
               Begin VB.Menu mnuBolterFlamerComSGTSMHQ1 
                  Caption         =   "Bolter-Flamer 10"
               End
               Begin VB.Menu mnuBolterGrenadeLauncherComSGTSMHQ1 
                  Caption         =   "Bolter-Grenade Launcher 10"
               End
               Begin VB.Menu mnuBolterPlasmagunComSGTSMHQ1 
                  Caption         =   "Bolter-Plasmagun 15"
               End
               Begin VB.Menu mnuBolterMeltagunComSGTSMHQ1 
                  Caption         =   "Bolter-Meltagun 15"
               End
               Begin VB.Menu mnuStormBolterComSGTSMHQ1 
                  Caption         =   "Storm Bolter 05"
               End
               Begin VB.Menu mnuAuspexComSGTSMHQ1 
                  Caption         =   "Auspex 02"
               End
               Begin VB.Menu mnuBionicsComSGTSMHQ1 
                  Caption         =   "Bionics 10"
               End
               Begin VB.Menu mnuFragGrenadesComSGTSMHQ1 
                  Caption         =   "Frag Grenades"
               End
               Begin VB.Menu mnuIronHaloComSGTSMHQ1 
                  Caption         =   "Iron Halo (1) 25"
               End
               Begin VB.Menu mnuKrakGrenadesComSGTSMHQ1 
                  Caption         =   "Krak Grenades"
               End
               Begin VB.Menu mnuMasterCraftedWeaponComSGTSMHQ1 
                  Caption         =   "Master-Crafted Weapon 15"
               End
               Begin VB.Menu mnuMeltaBombsComSGTSMHQ1 
                  Caption         =   "Melta Bombs 05"
               End
               Begin VB.Menu mnuPuritySealsComSGTSMHQ1 
                  Caption         =   "Purity Seals 05"
               End
               Begin VB.Menu mnuTeleportHomerComSGTSMHQ1 
                  Caption         =   "Teleport Homer05"
               End
               Begin VB.Menu mnuTerminatorHonorsComSGTSMHQ1 
                  Caption         =   "Terminator Honors 15"
               End
            End
            Begin VB.Menu mnuApothecarySMHQ1 
               Caption         =   "Apothecary 18"
            End
            Begin VB.Menu mnuEquipmentAPOSMHQ1 
               Caption         =   "Apothecary Equipment"
               Visible         =   0   'False
               Begin VB.Menu mnuBoltPistolAPOSMHQ1 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponAPOSMHQ1 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawAPOSMHQ1 
                  Caption         =   "Lightning Claw (single) 25"
               End
               Begin VB.Menu mnuLightningClawsAPOSMHQ1 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolAPOSMHQ1 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerFistAPOSMHQ1 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuPowerWeaponAPOSMHQ1 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuStormShieldAPOSMHQ1 
                  Caption         =   "Storm Shield 10"
               End
               Begin VB.Menu mnuThunderHammerAPOSMHQ1 
                  Caption         =   "Thunder Hammer 30"
               End
               Begin VB.Menu mnuBolterAPOSMHQ1 
                  Caption         =   "Bolter 02"
               End
               Begin VB.Menu mnuBolterFlamerAPOSMHQ1 
                  Caption         =   "Bolter-Flamer 10"
               End
               Begin VB.Menu mnuBolterGrenadeLauncherAPOSMHQ1 
                  Caption         =   "Bolter-Grenade Launcher 10"
               End
               Begin VB.Menu mnuBolterMeltagunAPOSMHQ1 
                  Caption         =   "Bolter-Meltagun 15"
               End
               Begin VB.Menu mnuBolterPlasmagunAPOSMHQ1 
                  Caption         =   "Bolter-Plasmagun 15"
               End
               Begin VB.Menu mnuStormBolterAPOSMHQ1 
                  Caption         =   "Storm Bolter 05"
               End
               Begin VB.Menu mnuAuspexAPOSMHQ1 
                  Caption         =   "Auspex 02"
               End
               Begin VB.Menu mnuBionicsAPOSMHQ1 
                  Caption         =   "Bionics 10"
               End
               Begin VB.Menu mnuFragGrenadesAPOSMHQ1 
                  Caption         =   "Frag Grenades 01"
               End
               Begin VB.Menu mnuIronHaloAPOSMHQ1 
                  Caption         =   "Iron Halo (1) 25"
               End
               Begin VB.Menu mnuKrakGrenadesAPOSMHQ1 
                  Caption         =   "Krak Grenades 02"
               End
               Begin VB.Menu mnuNartheciumAPOSMHQ1 
                  Caption         =   "Narthecium 25"
               End
               Begin VB.Menu mnuMasterCraftWeaponAPOSMHQ1 
                  Caption         =   "Master-Crafted Weapon 15"
               End
               Begin VB.Menu mnuMeltaBombsAPOSMHQ1 
                  Caption         =   "Melta Bombs 05"
               End
               Begin VB.Menu mnuPuritySealsAPOSMHQ1 
                  Caption         =   "Purity Seals 05"
               End
               Begin VB.Menu mnuReductorAPOSMHQ1 
                  Caption         =   "Reductor 05"
               End
               Begin VB.Menu mnuTeleportHomerAPOSMHQ1 
                  Caption         =   "Teleport Homer 05"
               End
               Begin VB.Menu mnuTerminatorHonorsAPOSMHQ1 
                  Caption         =   "Terminator Honors 15"
               End
            End
            Begin VB.Menu mnuTechMarineSMHQ1 
               Caption         =   "Tech-Marine 18"
            End
            Begin VB.Menu mnuEquipmentTEMSMHQ1 
               Caption         =   "Tech-Marine Equipment"
               Visible         =   0   'False
               Begin VB.Menu mnuBoltPistolTEMSMHQ1 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponTEMSMHQ1 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawTEMSMHQ1 
                  Caption         =   "Lightning Claw (single) 25"
               End
               Begin VB.Menu mnuLightningClawsTEMSMHQ1 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolTEMSMHQ1 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerFistTEMSMHQ1 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuPowerWeaponTEMSMHQ1 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuStormShieldTEMSMHQ1 
                  Caption         =   "Storm Shield 10"
               End
               Begin VB.Menu mnuThunderHammerTEMSMHQ1 
                  Caption         =   "Thunder Hammer 30"
               End
               Begin VB.Menu mnuBolterTEMSMHQ1 
                  Caption         =   "Bolter 02"
               End
               Begin VB.Menu mnuBolterFlamerTEMSMHQ1 
                  Caption         =   "Bolter-Flamer 10"
               End
               Begin VB.Menu mnuBolterGrenadeLauncherTEMSMHQ1 
                  Caption         =   "Bolter-Grenade Launcher 10"
               End
               Begin VB.Menu mnuBolterMeltagunTEMSMHQ1 
                  Caption         =   "Bolter-Meltagun 15"
               End
               Begin VB.Menu mnuBolterPlasmagunTEMSMHQ1 
                  Caption         =   "Bolter-Plasmagun 15"
               End
               Begin VB.Menu mnuStormBolterTEMSMHQ1 
                  Caption         =   "Storm Bolter 05"
               End
               Begin VB.Menu mnuAuspexTEMSMHQ1 
                  Caption         =   "Auspex 02"
               End
               Begin VB.Menu mnuBionicsTEMSMHQ1 
                  Caption         =   "Bionics 10"
               End
               Begin VB.Menu mnuFragGrenadesTEMSMHQ1 
                  Caption         =   "Frag Grenades 01"
               End
               Begin VB.Menu mnuIronHaloTEMSMHQ1 
                  Caption         =   "Iron Halo (1) 25"
               End
               Begin VB.Menu mnuKrakGrenadesTEMSMHQ1 
                  Caption         =   "Krak Grenades 02"
               End
               Begin VB.Menu mnuMasterCraftedWeaponTEMSMHQ1 
                  Caption         =   "Master-Crafted Weapon 15"
               End
               Begin VB.Menu mnuMeltaBombsTEMSMHQ1 
                  Caption         =   "Melta Bombs 05"
               End
               Begin VB.Menu mnuPuritySealsTEMSMHQ1 
                  Caption         =   "Purity Seals 05"
               End
               Begin VB.Menu mnuServoArmTEMSMHQ1 
                  Caption         =   "Servo-Arm 30"
               End
               Begin VB.Menu mnuSignumTEMSMHQ1 
                  Caption         =   "Signum 15"
               End
               Begin VB.Menu mnuTeleportHomerTEMSMHQ1 
                  Caption         =   "Teleport Homer 05"
               End
               Begin VB.Menu mnuTerminatorHonorsTEMSMHQ1 
                  Caption         =   "Terminator Honors 15"
                  Index           =   7
               End
            End
            Begin VB.Menu mnuStandardBearerSMHQ1 
               Caption         =   "Standard Bearer 18"
            End
            Begin VB.Menu mnuEquipmentSBSMHQ1 
               Caption         =   "Standard Bearer Equipment"
               Visible         =   0   'False
               Begin VB.Menu mnuBoltPistolSTBSMHQ1 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponSTBSMHQ1 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawSTBSMHQ1 
                  Caption         =   "Lightning Claw (single) 25"
               End
               Begin VB.Menu mnuLightningClawsSTBSMHQ1 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolSTBSMHQ1 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerWeaponSTBSMHQ1 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuPowerFistSTBSMHQ1 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuStormShieldSTBSMHQ1 
                  Caption         =   "Storm Shield 10"
               End
               Begin VB.Menu mnuThunderHammerSTBSMHQ1 
                  Caption         =   "Thunder Hammer 30"
               End
               Begin VB.Menu mnuBolterSTBSMHQ1 
                  Caption         =   "Bolter 02"
               End
               Begin VB.Menu mnuBolterFlamerSTBSMHQ1 
                  Caption         =   "Bolter-Flamer 10"
               End
               Begin VB.Menu mnuBolterGrenadeLauncherSTBSMHQ1 
                  Caption         =   "Bolter-Grenade Launcher 10"
               End
               Begin VB.Menu mnuBolterPlasmagunSTBSMHQ1 
                  Caption         =   "Bolter-Plasmagun 15"
               End
               Begin VB.Menu mnuBolterMeltagunSTBSMHQ1 
                  Caption         =   "Bolter-Meltagun 15"
               End
               Begin VB.Menu mnuStormBolterSTBSMHQ1 
                  Caption         =   "Storm Bolter 05"
               End
               Begin VB.Menu mnuAuspexSTBSMHQ1 
                  Caption         =   "Auspex 02"
               End
               Begin VB.Menu mnuBionicsSTBSMHQ1 
                  Caption         =   "Bionics 10"
               End
               Begin VB.Menu mnuChapterBannerSTBSMHQ1 
                  Caption         =   "Chapter Banner 60"
               End
               Begin VB.Menu mnuFragGrenadesSTBSMHQ1 
                  Caption         =   "Frag Grenades 01"
               End
               Begin VB.Menu mnuHolyRelicSTBSMHQ1 
                  Caption         =   "Holy Relic (1) 40"
               End
               Begin VB.Menu mnuIronHaloSTBSMHQ1 
                  Caption         =   "Iron Halo (1) 25"
               End
               Begin VB.Menu mnuKrakGrenadesSTBSMHQ1 
                  Caption         =   "Krak Grenades 02"
               End
               Begin VB.Menu mnuMasterCraftedWeaponSTBSMHQ1 
                  Caption         =   "Master-Crafted Weapon 15"
               End
               Begin VB.Menu mnuMeltaBombsSTBSMHQ1 
                  Caption         =   "Melta Bombs 05"
               End
               Begin VB.Menu mnuPuritySealsSTBSMHQ1 
                  Caption         =   "Purity Seals 05"
               End
               Begin VB.Menu mnuSacredStandardSTBSMHQ1 
                  Caption         =   "Sacred Standard 20"
               End
               Begin VB.Menu mnuTeleportHomerSTBSMHQ1 
                  Caption         =   "Teleport Homer 05"
               End
               Begin VB.Menu mnuTerminatorHonorsSTBSMHQ1 
                  Caption         =   "Terminator Honors 15"
               End
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ11 
               Caption         =   "Bodyguard 18"
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ12 
               Caption         =   "BodyGuard 18"
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ13 
               Caption         =   "BodyGuard 18"
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ14 
               Caption         =   "BodyGuard 18"
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ15 
               Caption         =   "BodyGuard 18"
            End
            Begin VB.Menu mnuSMBodyGuardSMHQ16 
               Caption         =   "BodyGuard 18"
            End
         End
         Begin VB.Menu mnuOptionsSMHQ1 
            Caption         =   "Options"
            Begin VB.Menu mnuFGSMHQ1 
               Caption         =   "Frag Grenades"
            End
            Begin VB.Menu mnuKGSMHQ1 
               Caption         =   "Krak Grenades"
            End
            Begin VB.Menu mnuTransportSMHQ1 
               Caption         =   "Transport"
               Begin VB.Menu mnuRhinoSMHQ1 
                  Caption         =   "Rhino 50"
               End
               Begin VB.Menu mnuRazorbackSMHQ1 
                  Caption         =   "Razorback 70"
               End
               Begin VB.Menu mnuLandRaiderSMHQ1 
                  Caption         =   "Land Raider 250"
               End
               Begin VB.Menu mnuVehicleUpgradesSMHQ1 
                  Caption         =   "Vehicle Upgrades"
                  Begin VB.Menu mnuDozerBladesSMHQ1 
                     Caption         =   "Dozer Blades 05"
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
End
Attribute VB_Name = "frmSMHQ1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Declare Variables
    Dim SMHQ1 As Integer
    Dim Hero As Integer, SGT As Integer, SB As Integer, APO As Integer, TM As Integer, BG As Integer
    Dim Transport As Integer
    Dim SquadMembers As Integer
        
Private Sub cmdSMHQ1Done_Click()
frmSMHQ1.Hide
End Sub

'Adding the list
Private Sub mnuLeaderSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuLeaderSMHQ1.Checked = False Then
        mnuLeaderSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuLeaderSMHQ1.Checked = True
        mnuLeaderSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuLeaderSMHQ1.Checked = True Then
        Hero = Hero + 30
    'Make equipment visible
        mnuEquipmentSMHQ1.Visible = True
    'Make Command Squad Available
        mnuCommandSquadSMHQ1.Visible = True
    Else: mnuLeaderSMHQ1.Checked = False
        Hero = Hero - 30
    'Make equipment NOT visible
        mnuEquipmentSMHQ1.Visible = False
    'Make Command Squad NOT Available
        mnuCommandSquadSMHQ1.Visible = False
    End If
'Only one HQ position
    If mnuLeaderSMHQ1.Checked = True Then
        Call Commander(Hero)
        Call FC(Hero)
        Call Librarian(Hero)
        Call Chaplain(Hero)
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuCommanderSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuCommanderSMHQ1.Checked = False Then
        mnuCommanderSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuCommanderSMHQ1.Checked = True
        mnuCommanderSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuCommanderSMHQ1.Checked = True Then
        Hero = Hero + 45
    'Make equipment visible
        mnuEquipmentSMHQ1.Visible = True
    'Make Command Squad Available
        mnuCommandSquadSMHQ1.Visible = True
    Else: mnuCommanderSMHQ1.Checked = False
        Hero = Hero - 45
    'Make equipment NOT visible
        mnuEquipmentSMHQ1.Visible = False
    'Make Command Squad NOT Available
        mnuCommandSquadSMHQ1.Visible = False
    End If
'Only one HQ position
    If mnuCommanderSMHQ1.Checked = True Then
        Call Leader(Hero)
        Call FC(Hero)
        Call Librarian(Hero)
        Call Chaplain(Hero)
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFCSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFCSMHQ1.Checked = False Then
        mnuFCSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFCSMHQ1.Checked = True
        mnuFCSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuFCSMHQ1.Checked = True Then
        Hero = Hero + 60
    'Make equipment visible
        mnuEquipmentSMHQ1.Visible = True
    'Make Command Squad Available
        mnuCommandSquadSMHQ1.Visible = True
    Else: mnuFCSMHQ1.Checked = False
        Hero = Hero - 60
    'Make equipment NOT visible
        mnuEquipmentSMHQ1.Visible = False
    'Make Command Squad NOT Available
        mnuCommandSquadSMHQ1.Visible = False
    End If
'Only one HQ position
    If mnuFCSMHQ1.Checked = True Then
        Call Commander(Hero)
        Call Leader(Hero)
        Call Librarian(Hero)
        Call Chaplain(Hero)
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuLibrarianSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuLibrarianSMHQ1.Checked = False Then
        mnuLibrarianSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuLibrarianSMHQ1.Checked = True
        mnuLibrarianSMHQ1.Checked = False
    End If
'Only one HQ position
    If mnuLibrarianSMHQ1.Checked = True Then
        Call Commander(Hero)
        Call FC(Hero)
        Call Leader(Hero)
        Call Chaplain(Hero)
    End If
'Adding
'Checking adds value
    If mnuLibrarianSMHQ1.Checked = True Then
        Hero = Hero + 60
    'Make equipment visible
        mnuEquipmentSMHQ1.Visible = True
    'Make Command Squad Available
        mnuCommandSquadSMHQ1.Visible = True
    Else: mnuLibrarianSMHQ1.Checked = False
        Hero = Hero - 60
    'Make equipment NOT visible
        mnuEquipmentSMHQ1.Visible = False
    'Make Command Squad NOT Available
        mnuCommandSquadSMHQ1.Visible = False
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuChaplainSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuChaplainSMHQ1.Checked = False Then
        mnuChaplainSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuChaplainSMHQ1.Checked = True
        mnuChaplainSMHQ1.Checked = False
    End If
'Only one HQ position
    If mnuChaplainSMHQ1.Checked = True Then
        Call Commander(Hero)
        Call FC(Hero)
        Call Librarian(Hero)
        Call Leader(Hero)
    End If
'Adding
'Checking adds value
    If mnuChaplainSMHQ1.Checked = True Then
        Hero = Hero + 70
    'Make equipment visible
        mnuEquipmentSMHQ1.Visible = True
    'Make Command Squad Available
        mnuCommandSquadSMHQ1.Visible = True
    Else: mnuChaplainSMHQ1.Checked = False
        Hero = Hero - 70
    'Make equipment NOT visible
        mnuEquipmentSMHQ1.Visible = False
    'Make Command Squad NOT Available
       mnuCommandSquadSMHQ1.Visible = False
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub
Private Sub Leader(Hero As Integer)
'Removes value of Character
    If mnuLeaderSMHQ1.Checked = True Then
        mnuLeaderSMHQ1.Checked = False
        Hero = Hero - 30
    End If
End Sub

Private Sub Commander(Hero As Integer)
'Removes value of Character
    If mnuCommanderSMHQ1.Checked = True Then
        mnuCommanderSMHQ1.Checked = False
        Hero = Hero - 45
    End If
End Sub

Private Sub FC(Hero As Integer)
'Removes value of Character
    If mnuFCSMHQ1.Checked = True Then
        mnuFCSMHQ1.Checked = False
        Hero = Hero - 60
    End If
End Sub

Private Sub Librarian(Hero As Integer)
'Removes value of Character
    If mnuLibrarianSMHQ1.Checked = True Then
        mnuLibrarianSMHQ1.Checked = False
        Hero = Hero - 60
    End If
End Sub

Private Sub Chaplain(Hero As Integer)
'Removes value of Character
    If mnuChaplainSMHQ1.Checked = True Then
        mnuChaplainSMHQ1.Checked = False
        Hero = Hero - 70
    End If
End Sub

Private Sub mnuComVetSGTSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuComVetSGTSMHQ1.Checked = False Then
        mnuComVetSGTSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuComVetSGTSMHQ1.Checked = True
        mnuComVetSGTSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuComVetSGTSMHQ1.Checked = True Then
        SGT = SGT + 30
    'Make equipment visible
       mnuEquipmentComSGTSMHQ1.Visible = True
    Else: mnuComVetSGTSMHQ1.Checked = False
        SGT = SGT - 30
    'Make equipment NOT visible
        mnuEquipmentComSGTSMHQ1.Visible = False
        End If
'Only one SGT position
    If mnuComVetSGTSMHQ1.Checked = True Then
        Call Sergeant(SGT)
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub Sergeant(SGT As Integer)
'Removes the value of the character
    If mnuComSGTSMHQ1.Checked = True Then
        mnuComSGTSMHQ1.Checked = False
        SGT = SGT - 18
    End If
End Sub

Private Sub VetSergeant(SGT As Integer)
'Removes the value of the character
    If mnuComVetSGTSMHQ1.Checked = True Then
        mnuComVetSGTSMHQ1.Checked = False
        SGT = SGT - 30
    End If
End Sub
Private Sub mnuComSGTSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuComSGTSMHQ1.Checked = False Then
        mnuComSGTSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuComSGTSMHQ1.Checked = True
        mnuComSGTSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuComSGTSMHQ1.Checked = True Then
        SGT = SGT + 18
    'Make equipment visible
        mnuEquipmentComSGTSMHQ1.Visible = True
    Else: mnuComSGTSMHQ1.Checked = False
        SGT = SGT - 18
    'Make equipment NOT visible
        mnuEquipmentComSGTSMHQ1.Visible = False
    End If
'Only one HQ position
    If mnuLeaderSMHQ1.Checked = True Then
        Call VetSergeant(SGT)
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuApothecarySMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuApothecarySMHQ1.Checked = False Then
        mnuApothecarySMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuApothecarySMHQ1.Checked = True
        mnuApothecarySMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuApothecarySMHQ1.Checked = True Then
        APO = APO + 18
    'Make equipment visible
        mnuEquipmentAPOSMHQ1.Visible = True
    Else: mnuApothecarySMHQ1.Checked = False
        APO = APO - 18
    'Make equipment NOT visible
        mnuEquipmentAPOSMHQ1.Visible = False
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuStandardBearerSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuStandardBearerSMHQ1.Checked = False Then
        mnuStandardBearerSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuStandardBearerSMHQ1.Checked = True
        mnuStandardBearerSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuStandardBearerSMHQ1.Checked = True Then
        SB = SB + 18
    'Make equipment visible
        mnuEquipmentSBSMHQ1.Visible = True
    Else: mnuStandardBearerSMHQ1.Checked = False
        SB = SB - 18
    'Make equipment NOT visible
        mnuEquipmentSBSMHQ1.Visible = False
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuTechMarineSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuTechMarineSMHQ1.Checked = False Then
        mnuTechMarineSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuTechMarineSMHQ1.Checked = True
        mnuTechMarineSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuTechMarineSMHQ1.Checked = True Then
        TM = TM + 18
    'Make equipment visible
        mnuEquipmentTEMSMHQ1.Visible = True
    Else: mnuTechMarineSMHQ1.Checked = False
        TM = TM - 18
    'Make equipment NOT visible
        mnuEquipmentTEMSMHQ1.Visible = False
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuRhinoSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuRhinoSMHQ1.Checked = False Then
        mnuRhinoSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuRhinoSMHQ1.Checked = True
        mnuRhinoSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuRhinoSMHQ1.Checked = True Then
        Transport = Transport + 50
    Else: mnuRhinoSMHQ1.Checked = False
        Transport = Transport - 50
    End If
'Only one Transport
    Call Razorback(Transport)
    Call LandRaider(Transport)
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuRazorbackSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuRazorbackSMHQ1.Checked = False Then
        mnuRazorbackSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuRazorbackSMHQ1.Checked = True
        mnuRazorbackSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuRazorbackSMHQ1.Checked = True Then
        Transport = Transport + 70
    Else: mnuRazorbackSMHQ1.Checked = False
        Transport = Transport - 70
    End If
'Only one Transport
    Call Rhino(Transport)
    Call LandRaider(Transport)
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuLandRaiderSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuLandRaiderSMHQ1.Checked = False Then
        mnuLandRaiderSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuLandRaiderSMHQ1.Checked = True
        mnuLandRaiderSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuLandRaiderSMHQ1.Checked = True Then
        Transport = Transport + 250
    Else: mnuLandRaiderSMHQ1.Checked = False
        Transport = Transport - 250
    End If
'Only one Transport
    Call Rhino(Transport)
    Call Razorback(Transport)
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub Rhino(Transport As Integer)
'Removes value of Character
    If mnuRhinoSMHQ1.Checked = True Then
        mnuRhinoSMHQ1.Checked = False
        Transport = Transport - 50
    End If
End Sub

Private Sub Razorback(Transport As Integer)
'Removes value of Character
    If mnuRazorbackSMHQ1.Checked = True Then
        mnuRazorbackSMHQ1.Checked = False
        Transport = Transport - 70
    End If
End Sub

Private Sub LandRaider(Transport As Integer)
'Removes value of Character
    If mnuLandRaiderSMHQ1.Checked = True Then
        mnuLandRaiderSMHQ1.Checked = False
        Transport = Transport - 250
    End If
End Sub

Private Sub mnuDozerBladesSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuDozerBladesSMHQ1.Checked = False Then
        mnuDozerBladesSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuDozerBladesSMHQ1.Checked = True
        mnuDozerBladesSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuDozerBladesSMHQ1.Checked = True Then
        Transport = Transport + 5
    Else: mnuDozerBladesSMHQ1.Checked = False
        Transport = Transport - 5
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuExtraArmorSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuExtraArmorSMHQ1.Checked = False Then
        mnuExtraArmorSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuExtraArmorSMHQ1.Checked = True
        mnuExtraArmorSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuExtraArmorSMHQ1.Checked = True Then
        Transport = Transport + 5
    Else: mnuExtraArmorSMHQ1.Checked = False
        Transport = Transport - 5
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuHunterKillerMissileSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuHunterKillerMissileSMHQ1.Checked = False Then
        mnuHunterKillerMissileSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuHunterKillerMissileSMHQ1.Checked = True
        mnuHunterKillerMissileSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuHunterKillerMissileSMHQ1.Checked = True Then
        Transport = Transport + 15
    Else: mnuHunterKillerMissileSMHQ1.Checked = False
        Transport = Transport - 15
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuPintleMountedStormBolterSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuPintleMountedStormBolterSMHQ1.Checked = False Then
        mnuPintleMountedStormBolterSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuPintleMountedStormBolterSMHQ1.Checked = True
        mnuPintleMountedStormBolterSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuPintleMountedStormBolterSMHQ1.Checked = True Then
        Transport = Transport + 10
    Else: mnuPintleMountedStormBolterSMHQ1.Checked = False
        Transport = Transport - 10
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSearchlightSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuSearchlightSMHQ1.Checked = False Then
        mnuSearchlightSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuSearchlightSMHQ1.Checked = True
        mnuSearchlightSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuSearchlightSMHQ1.Checked = True Then
        Transport = Transport + 1
    Else: mnuSearchlightSMHQ1.Checked = False
        Transport = Transport - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSmokeLaunchersSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuSmokeLaunchersSMHQ1.Checked = False Then
        mnuSmokeLaunchersSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuSmokeLaunchersSMHQ1.Checked = True
        mnuSmokeLaunchersSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuSmokeLaunchersSMHQ1.Checked = True Then
        Transport = Transport + 3
    Else: mnuSmokeLaunchersSMHQ1.Checked = False
        Transport = Transport - 3
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFGSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFGSMHQ1.Checked = False Then
        mnuFGSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFGSMHQ1.Checked = True
        mnuFGSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuFGSMHQ1.Checked = True Then
        BG = BG + (1) * SquadMembers
        If mnuEquipmentSMHQ1.Visible = True Then
            Call mnuFragGrenadesSMHQ1_Click
        End If
        If mnuApothecarySMHQ1.Checked = True Then
           Call mnuFragGrenadesAPOSMHQ1_Click
        End If
        If mnuStandardBearerSMHQ1.Checked = True Then
            Call mnuFragGrenadesSTBSMHQ1_Click
        End If
        If mnuTechMarineSMHQ1.Checked = True Then
            Call mnuFragGrenadesTEMSMHQ1_Click
        End If
            Select Case mnuComSGTSMHQ1.Checked
                Case True
                   Call mnuFragGrenadesComSGTSMHQ1_Click
            End Select
    Else: mnuFGSMHQ1.Checked = False
            BG = BG - (1) * SquadMembers
        If mnuFragGrenadesSMHQ1.Checked = True Then
           Call mnuFragGrenadesSMHQ1_Click
        End If
        If mnuFragGrenadesAPOSMHQ1.Checked = True Then
            Call mnuFragGrenadesAPOSMHQ1_Click
        End If
        If mnuFragGrenadesSTBSMHQ1.Checked = True Then
            Call mnuFragGrenadesSTBSMHQ1_Click
        End If
        If mnuFragGrenadesTEMSMHQ1.Checked = True Then
            Call mnuFragGrenadesTEMSMHQ1_Click
        End If
            Select Case mnuFragGrenadesComSGTSMHQ1.Checked
                Case True
                    Call mnuFragGrenadesComSGTSMHQ1_Click
            End Select
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKGSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKGSMHQ1.Checked = False Then
        mnuKGSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuKGSMHQ1.Checked = True
        mnuKGSMHQ1.Checked = False
    End If
'Adding
'Checking adds value
    If mnuKGSMHQ1.Checked = True Then
        BG = BG + (2) * SquadMembers
        If mnuKrakGrenadesSMHQ1.Checked = True Then
            Call mnuKrakGrenadesSMHQ1_Click
        End If
        If mnuKrakGrenadesAPOSMHQ1.Checked = True Then
            Call mnuKrakGrenadesAPOSMHQ1_Click
        End If
        If mnuKrakGrenadesSTBSMHQ1.Checked = True Then
            Call mnuKrakGrenadesSTBSMHQ1_Click
        End If
        If mnuKrakGrenadesTEMSMHQ1.Checked = True Then
            Select Case mnuComSGTSMHQ1.Checked
                Case True
                    Call mnuKrakGrenadesComSGTSMHQ1_Click
            End Select
            Select Case mnuComVetSGTSMHQ1.Checked
                Case True
                    Call mnuKrakGrenadesComVetSGTSMHQ1_Click
            End Select
    Else: mnuKGSMHQ1.Checked = False
                BG = BG - (2) * SquadMembers
        If mnuKrakGrenadesSMHQ1.Checked = False Then
            Call mnuKrakGrenadesSMHQ1_Click
        End If
        If mnuKrakGrenadesAPOSMHQ1.Checked = False Then
            Call mnuKrakGrenadesAPOSMHQ1_Click
        End If
        If mnuKrakGrenadesSTBSMHQ1.Checked = False Then
            Call mnuKrakGrenadesSTBSMHQ1_Click
        End If
        If mnuKrakGrenadesTEMSMHQ1.Checked = False Then
            Call mnuKrakGrenadesSMHQ1_Click
        End If
            Select Case mnuKrakGrenadesComSGTSMHQ1.Checked
                Case True
                    Call mnuKrakGrenadesComSGTSMHQ1_Click
            End Select
            Select Case mnuKrakGrenadesComVetSGTSMHQ1.Checked
                Case True
                    Call mnuKrakGrenadesComVetSGTSMHQ1_Click
            End Select
        End If
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKrakGrenadesSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKrakGrenadesSMHQ1.Checked = False Then
        mnuKrakGrenadesSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuKrakGrenadesSMHQ1.Checked = True
        mnuKrakGrenadesSMHQ1.Checked = False
    End If
'Krak Grenades check
    If mnuKrakGrenadesSMHQ1.Checked = True Then
            Hero = Hero + 2
        Else: mnuKrakGrenadesSMHQ1.Checked = False
            Hero = Hero - 2
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFragGrenadesSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFragGrenadesSMHQ1.Checked = False Then
        mnuFragGrenadesSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFragGrenadesSMHQ1.Checked = True
        mnuFragGrenadesSMHQ1.Checked = False
    End If
'Frag Grenades check
    If mnuFragGrenadesSMHQ1.Checked = True Then
            Hero = Hero + 1
        Else: mnuFragGrenadesSMHQ1.Checked = False
            Hero = Hero - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKrakGrenadesComSGTSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKrakGrenadesComSGT.Checked = False Then
        mnuKrakGrenadesComSGT.Checked = True
'Clicking makes unchecked
    Else: mnuKrakGrenadesComSGT.Checked = True
        mnuKrakGrenadesComSGT.Checked = False
    End If
'Krak Grenades check
    If mnuKrakGrenadesComSGTSMHQ1.Checked = True Then
        If mnuKrakGrenadesComSGTSMHQ1.Checked = True Then
            SGT = SGT + 2
        Else: mnuKrakGrenadesComSGTSMHQ1.Checked = False
            SGT = SGT - 2
        End If
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFragGrenadesComSGTSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFragGrenadesComSGTSMHQ1.Checked = False Then
        mnuFragGrenadesComSGTSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFragGrenadesComSGTSMHQ1.Checked = True
        mnuFragGrenadesComSGTSMHQ1.Checked = False
    End If
'Frag Grenades check
        If mnuFragGrenadesComSGTSMHQ1.Checked = True Then
            SGT = SGT + 1
        Else: mnuFragGrenadesComSGTSMHQ1.Checked = False
            SGT = SGT - 1
        End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKrakGrenadesSTBSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKrakGrenadesSTBSMHQ1.Checked = False Then
        mnuKrakGrenadesSTBSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuKrakGrenadesSTBSMHQ1.Checked = True
        mnuKrakGrenadesSTBSMHQ1.Checked = False
    End If
'Krak Grenades check
    If mnuKrakGrenadesSTBSMHQ1.Checked = True Then
            Hero = Hero + 2
        Else: mnuKrakGrenadesSTBSMHQ1.Checked = False
            Hero = Hero - 2
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFragGrenadesSTBSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFragGrenadesSTBSMHQ1.Checked = False Then
        mnuFragGrenadesSTBSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFragGrenadesSTBSMHQ1.Checked = True
        mnuFragGrenadesSTBSMHQ1.Checked = False
    End If
'Frag Grenades check
    If mnuFragGrenadesSTBSMHQ1.Checked = True Then
            Hero = Hero + 1
        Else: mnuFragGrenadesSTBSMHQ1.Checked = False
            Hero = Hero - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKrakGrenadesAPOSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKrakGrenadesAPOSMHQ1.Checked = False Then
        mnuKrakGrenadesAPOSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuKrakGrenadesAPOSMHQ1.Checked = True
        mnuKrakGrenadesAPOSMHQ1.Checked = False
    End If
'Krak Grenades check
    If mnuKrakGrenadesAPOSMHQ1.Checked = True Then
            Hero = Hero + 2
        Else: mnuKrakGrenadesAPOSMHQ1.Checked = False
            Hero = Hero - 2
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFragGrenadesAPOSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFragGrenadesAPOSMHQ1.Checked = False Then
        mnuFragGrenadesAPOSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFragGrenadesAPOSMHQ1.Checked = True
        mnuFragGrenadesAPOSMHQ1.Checked = False
    End If
'Frag Grenades check
    If mnuFragGrenadesAPOSMHQ1.Checked = True Then
            Hero = Hero + 1
        Else: mnuFragGrenadesAPOSMHQ1.Checked = False
            Hero = Hero - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuKrakGrenadesTEMSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuKrakGrenadesTEMSMHQ1.Checked = False Then
        mnuKrakGrenadesTEMSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuKrakGrenadesTEMSMHQ1.Checked = True
        mnuKrakGrenadesTEMSMHQ1.Checked = False
    End If
'Krak Grenades check
    If mnuKrakGrenadesTEMSMHQ1.Checked = True Then
            Hero = Hero + 2
        Else: mnuKrakGrenadesTEMSMHQ1.Checked = False
            Hero = Hero - 2
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuFragGrenadesTEMSMHQ1_Click()
'Checking
'Clicking makes checked.
    If mnuFragGrenadesTEMSMHQ1.Checked = False Then
        mnuFragGrenadesTEMSMHQ1.Checked = True
'Clicking makes unchecked
    Else: mnuFragGrenadesTEMSMHQ1.Checked = True
        mnuFragGrenadesTEMSMHQ1.Checked = False
    End If
'Frag Grenades check
    If mnuFragGrenadesTEMSMHQ1.Checked = True Then
            Hero = Hero + 1
        Else: mnuFragGrenadesTEMSMHQ1.Checked = False
            Hero = Hero - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSMBodyGuardSMHQ11_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ11.Checked = False Then
        mnuSMBodyGuardSMHQ11.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ11.Checked = True
        mnuSMBodyGuardSMHQ11.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ11.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ11.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ11.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ11.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ11.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ11.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ11.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ11.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSMBodyguardSMHQ12_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ12.Checked = False Then
        mnuSMBodyGuardSMHQ12.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ12.Checked = True
        mnuSMBodyGuardSMHQ12.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ12.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ12.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ12.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ12.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ12.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ12.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ12.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ12.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1

End Sub

Private Sub mnuSMBodyguardSMHQ13_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ13.Checked = False Then
        mnuSMBodyGuardSMHQ13.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ13.Checked = True
        mnuSMBodyGuardSMHQ13.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ13.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ13.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ13.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ13.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ13.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ13.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ13.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ13.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSMBodyguardSMHQ14_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ14.Checked = False Then
        mnuSMBodyGuardSMHQ14.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ14.Checked = True
        mnuSMBodyGuardSMHQ14.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ14.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ14.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ14.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ14.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ14.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ14.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ14.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ14.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSMBodyguardSMHQ15_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ15.Checked = False Then
        mnuSMBodyGuardSMHQ15.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ15.Checked = True
        mnuSMBodyGuardSMHQ15.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ15.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ15.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ15.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ15.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ15.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ15.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ15.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ15.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

Private Sub mnuSMBodyguardSMHQ16_Click()
'Checking
'Clicking makes checked.
    If mnuSMBodyGuardSMHQ16.Checked = False Then
        mnuSMBodyGuardSMHQ16.Checked = True
'Clicking makes unchecked
    Else: mnuSMBodyGuardSMHQ16.Checked = True
        mnuSMBodyGuardSMHQ16.Checked = False
    End If
'Krak Grenades check
    If mnuKGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ16.Checked = True Then
            BG = BG + 2
        Else: mnuSMBodyGuardSMHQ16.Checked = False
            BG = BG - 2
        End If
    End If
'Frag Grenades check
    If mnuFGSMHQ1.Checked = True Then
        If mnuSMBodyGuardSMHQ16.Checked = True Then
            BG = BG + 1
        Else: mnuSMBodyGuardSMHQ16.Checked = False
            BG = BG - 1
        End If
    End If
'Adding
'Checking adds value
    If mnuSMBodyGuardSMHQ16.Checked = True Then
        BG = BG + 18
    Else: mnuSMBodyGuardSMHQ16.Checked = False
        BG = BG - 18
    End If
'Notate for members of the squad
    If mnuSMBodyGuardSMHQ16.Checked = True Then
        SquadMembers = SquadMembers + 1
    Else: mnuSMBodyGuardSMHQ16.Checked = False
        SquadMembers = SquadMembers - 1
    End If
'Initialize Total
    SMHQ1 = Hero + SGT + SB + APO + TM + BG + Transport
'Display
    picDisplay.Cls
    picDisplay.Print "Hero"; Hero
    picDisplay.Print "Sergeant"; SGT
    picDisplay.Print "Standard Bearer"; SB
    picDisplay.Print "Apothecary"; APO
    picDisplay.Print "Techmarine"; TM
    picDisplay.Print "Bodyguards"; BG
    picDisplay.Print "Transport"; Transport
    picDisplay.Print "Total"; SMHQ1
End Sub

