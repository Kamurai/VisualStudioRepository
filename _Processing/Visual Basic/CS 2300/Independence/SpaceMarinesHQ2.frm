VERSION 5.00
Begin VB.Form frmSpaceMarinesHQ2 
   Caption         =   "Space Marines HQ2"
   ClientHeight    =   3600
   ClientLeft      =   5250
   ClientTop       =   3450
   ClientWidth     =   4215
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
   ScaleHeight     =   3600
   ScaleWidth      =   4215
   Begin VB.CommandButton btnDisplay 
      Caption         =   "Display"
      Height          =   255
      Left            =   2040
      TabIndex        =   2
      Top             =   3000
      Width           =   1095
   End
   Begin VB.PictureBox picDisplay 
      Height          =   2655
      Left            =   2040
      ScaleHeight     =   2595
      ScaleWidth      =   1995
      TabIndex        =   1
      Top             =   120
      Width           =   2055
   End
   Begin VB.CommandButton btnDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   3480
      TabIndex        =   0
      Top             =   3000
      Width           =   615
   End
   Begin VB.Menu mnuHero 
      Caption         =   "Hero"
      Begin VB.Menu mnuLeader 
         Caption         =   "Leader 30"
      End
      Begin VB.Menu mnuCommander 
         Caption         =   "Commander 45"
      End
      Begin VB.Menu mnuForceCommander 
         Caption         =   "Force Commander 60"
      End
      Begin VB.Menu mnuLibrarian 
         Caption         =   "Librarian 60"
      End
      Begin VB.Menu mnuChaplain 
         Caption         =   "Chaplain 70"
      End
      Begin VB.Menu mnuEquipment 
         Caption         =   "Equipment"
         Visible         =   0   'False
         Begin VB.Menu mnuBoltPistol 
            Caption         =   "Bolt Pistol 01"
         End
         Begin VB.Menu mnuChainfist 
            Caption         =   "Chainfist (Terminators only)* 30"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuCloseCombatWeapon 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuForceWeapon 
            Caption         =   "Force Weapon ('Librarians Only)* 40"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuLightningClaw 
            Caption         =   "Lightning Claw (Single)* 25"
         End
         Begin VB.Menu mnuLightningClaws 
            Caption         =   "Lightning Claw (pair, two choices)* 30"
         End
         Begin VB.Menu mnuPlasmaPistol 
            Caption         =   "Plasma Pistol 15"
         End
         Begin VB.Menu mnuPowerFist 
            Caption         =   "Power Fist* 25"
         End
         Begin VB.Menu mnuPowerWeapon 
            Caption         =   "Power Weapon* 15"
         End
         Begin VB.Menu mnuStormShield 
            Caption         =   "Storm Shield* 10"
         End
         Begin VB.Menu mnuThunderHammer 
            Caption         =   "Thunder Hammer* 30"
         End
         Begin VB.Menu mnuBolter 
            Caption         =   "Bolter 02"
         End
         Begin VB.Menu mnuBolterFlamer 
            Caption         =   "Bolter-Flamer* 10"
         End
         Begin VB.Menu mnuBolterGrenadeLauncher 
            Caption         =   "Bolter-Grenade Launcher* 10"
         End
         Begin VB.Menu mnuBolterPlasmagun 
            Caption         =   "Bolter-Plasmagun* 15"
         End
         Begin VB.Menu mnuBolterMeltagun 
            Caption         =   "Bolter-Meltagun* 15"
         End
         Begin VB.Menu mnuStormBolter 
            Caption         =   "Storm Bolter* 05"
         End
         Begin VB.Menu mnuArtificerArmor 
            Caption         =   "Artificer Armor 20"
         End
         Begin VB.Menu mnuAuspex 
            Caption         =   "Auspex* 02"
         End
         Begin VB.Menu mnuBionics 
            Caption         =   "Bionics 10"
         End
         Begin VB.Menu mnuFragGrenades 
            Caption         =   "Frag Grenades"
         End
         Begin VB.Menu mnuHolyRelic 
            Caption         =   "Holy Relic (Chaplain only) (1)* 40"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuIronHalo 
            Caption         =   "Iron Halo (1) 25"
         End
         Begin VB.Menu mnuKrakGrenades 
            Caption         =   "Krak Grenades"
         End
         Begin VB.Menu mnuJumpPack 
            Caption         =   "Jump Pack 20"
         End
         Begin VB.Menu mnuMasterCraftedWeapon 
            Caption         =   "Master-Crafted Weapon* 15"
         End
         Begin VB.Menu mnuMeltaBombs 
            Caption         =   "Melta Bombs 05"
         End
         Begin VB.Menu mnuPsychicHood 
            Caption         =   "Psychic Hood*L 25"
            Visible         =   0   'False
         End
         Begin VB.Menu mnuPuritySeals 
            Caption         =   "Purity Seals* 05"
         End
         Begin VB.Menu mnuSpaceMarineBike 
            Caption         =   "Space Marine Bike 35"
         End
         Begin VB.Menu mnuTeleportHomer 
            Caption         =   "Teleport Homer* 05"
         End
         Begin VB.Menu mnuTerminatorArmor 
            Caption         =   "Terminator Armor 25"
         End
         Begin VB.Menu mnuTerminatorHonors 
            Caption         =   "Terminator Honors 15"
         End
      End
   End
   Begin VB.Menu mnuCommandSquad 
      Caption         =   "Command Squad"
      Visible         =   0   'False
      Begin VB.Menu mnuSergeant 
         Caption         =   "Sergeant 18"
      End
      Begin VB.Menu mnuVeteranSergeant 
         Caption         =   "Veteran Sergeant 30"
      End
      Begin VB.Menu mnuEquipmentSergeant 
         Caption         =   "Sergeant Equipment"
         Visible         =   0   'False
         Begin VB.Menu mnuBoltPistolSergeant 
            Caption         =   "Bolt Pistol 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuCloseCombatWeaponSergeant 
            Caption         =   "Close Combat Weapon 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuLightningClawSergeant 
            Caption         =   "Lightning Claw (Single) 25"
         End
         Begin VB.Menu mnuLightningClawsSergeant 
            Caption         =   "Lightning Claws (pair, two choices) 30"
         End
         Begin VB.Menu mnuPlasmaPistolSergeant 
            Caption         =   "Plasma Pistol 15"
         End
         Begin VB.Menu mnuPowerFistSergeant 
            Caption         =   "Power Fist 25"
         End
         Begin VB.Menu mnuPowerWeaponSergeant 
            Caption         =   "Power Weapon 15"
         End
         Begin VB.Menu mnuStormShieldSergeant 
            Caption         =   "Storm Shield 10"
         End
         Begin VB.Menu mnuThunderHammerSergeant 
            Caption         =   "Thunder Hammer 30"
         End
         Begin VB.Menu mnuBolterSergeant 
            Caption         =   "Bolter 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuBolterFlamerSergeant 
            Caption         =   "Bolter-Flamer 10"
         End
         Begin VB.Menu mnuBolterGrenadeLauncherSergeant 
            Caption         =   "Bolter-Grenade Launcher 10"
         End
         Begin VB.Menu mnuBolterPlasmagunSergeant 
            Caption         =   "Bolter-Plasmagun 15"
         End
         Begin VB.Menu mnuBolterMeltagunSergeant 
            Caption         =   "Bolter-Meltagun 15"
         End
         Begin VB.Menu mnuStormBolterSergeant 
            Caption         =   "Storm Bolter 05"
         End
         Begin VB.Menu mnuAuspexSergeant 
            Caption         =   "Auspex 02"
         End
         Begin VB.Menu mnuBionicsSergeant 
            Caption         =   "Bionics 10"
         End
         Begin VB.Menu mnuFragGrenadesSergeant 
            Caption         =   "Frag Grenades"
         End
         Begin VB.Menu mnuIronHaloSergeant 
            Caption         =   "Iron Halo (1) 25"
         End
         Begin VB.Menu mnuKrakGrenadesSergeant 
            Caption         =   "Krak Grenades"
         End
         Begin VB.Menu mnuMasterCraftedWeaponSergeant 
            Caption         =   "Master-Crafted Weapon 15"
         End
         Begin VB.Menu mnuMeltaBombsSergeant 
            Caption         =   "Melta Bombs 05"
         End
         Begin VB.Menu mnuPuritySealsSergeant 
            Caption         =   "Purity Seals 05"
         End
         Begin VB.Menu mnuTeleportHomerSergeant 
            Caption         =   "Teleport Homer05"
         End
         Begin VB.Menu mnuTerminatorHonorsSergeant 
            Caption         =   "Terminator Honors 15"
         End
      End
      Begin VB.Menu mnuApothecary 
         Caption         =   "Apothecary 18"
      End
      Begin VB.Menu mnuEquipmentApothecary 
         Caption         =   "Apothecary Equipment"
         Visible         =   0   'False
         Begin VB.Menu mnuBoltPistolApothecary 
            Caption         =   "Bolt Pistol 01"
         End
         Begin VB.Menu mnuCloseCombatWeaponApothecary 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuLightningClawApothecary 
            Caption         =   "Lightning Claw (single) 25"
         End
         Begin VB.Menu mnuLightningClawsApothecary 
            Caption         =   "Lightning Claws (pair, two choices) 30"
         End
         Begin VB.Menu mnuPlasmaPistolApothecary 
            Caption         =   "Plasma Pistol 15"
         End
         Begin VB.Menu mnuPowerFistApothecary 
            Caption         =   "Power Fist 25"
         End
         Begin VB.Menu mnuPowerWeaponApothecary 
            Caption         =   "Power Weapon 15"
         End
         Begin VB.Menu mnuStormShieldApothecary 
            Caption         =   "Storm Shield 10"
         End
         Begin VB.Menu mnuThunderHammerApothecary 
            Caption         =   "Thunder Hammer 30"
         End
         Begin VB.Menu mnuBolterApothecary 
            Caption         =   "Bolter 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuBolterFlamerApothecary 
            Caption         =   "Bolter-Flamer 10"
         End
         Begin VB.Menu mnuBolterGrenadeLauncherApothecary 
            Caption         =   "Bolter-Grenade Launcher 10"
         End
         Begin VB.Menu mnuBolterMeltagunApothecary 
            Caption         =   "Bolter-Meltagun 15"
         End
         Begin VB.Menu mnuBolterPlasmagunApothecary 
            Caption         =   "Bolter-Plasmagun 15"
         End
         Begin VB.Menu mnuStormBolterApothecary 
            Caption         =   "Storm Bolter 05"
         End
         Begin VB.Menu mnuAuspexApothecary 
            Caption         =   "Auspex 02"
         End
         Begin VB.Menu mnuBionicsApothecary 
            Caption         =   "Bionics 10"
         End
         Begin VB.Menu mnuFragGrenadesApothecary 
            Caption         =   "Frag Grenades 01"
         End
         Begin VB.Menu mnuIronHaloApothecary 
            Caption         =   "Iron Halo (1) 25"
         End
         Begin VB.Menu mnuKrakGrenadesApothecary 
            Caption         =   "Krak Grenades 02"
         End
         Begin VB.Menu mnuNartheciumApothecary 
            Caption         =   "Narthecium 25"
         End
         Begin VB.Menu mnuMasterCraftedWeaponApothecary 
            Caption         =   "Master-Crafted Weapon 15"
         End
         Begin VB.Menu mnuMeltaBombsApothecary 
            Caption         =   "Melta Bombs 05"
         End
         Begin VB.Menu mnuPuritySealsApothecary 
            Caption         =   "Purity Seals 05"
         End
         Begin VB.Menu mnuReductorApothecary 
            Caption         =   "Reductor 05"
         End
         Begin VB.Menu mnuTeleportHomerApothecary 
            Caption         =   "Teleport Homer 05"
         End
         Begin VB.Menu mnuTerminatorHonorsApothecary 
            Caption         =   "Terminator Honors 15"
         End
      End
      Begin VB.Menu mnuStandardBearer 
         Caption         =   "Standard Bearer 18"
      End
      Begin VB.Menu mnuEquipmentStandardBearer 
         Caption         =   "Standard Bearer Equipment"
         Visible         =   0   'False
         Begin VB.Menu mnuBoltPistolStandardBearer 
            Caption         =   "Bolt Pistol 01"
         End
         Begin VB.Menu mnuCloseCombatWeaponStandardBearer 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuLightningClawStandardBearer 
            Caption         =   "Lightning Claw (single) 25"
         End
         Begin VB.Menu mnuLightningClawsStandardBearer 
            Caption         =   "Lightning Claws (pair, two choices) 30"
         End
         Begin VB.Menu mnuPlasmaPistolStandardBearer 
            Caption         =   "Plasma Pistol 15"
         End
         Begin VB.Menu mnuPowerWeaponStandardBearer 
            Caption         =   "Power Weapon 15"
         End
         Begin VB.Menu mnuPowerFistStandardBearer 
            Caption         =   "Power Fist 25"
         End
         Begin VB.Menu mnuStormShieldStandardBearer 
            Caption         =   "Storm Shield 10"
         End
         Begin VB.Menu mnuThunderHammerStandardBearer 
            Caption         =   "Thunder Hammer 30"
         End
         Begin VB.Menu mnuBolterStandardBearer 
            Caption         =   "Bolter 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuBolterFlamerStandardBearer 
            Caption         =   "Bolter-Flamer 10"
         End
         Begin VB.Menu mnuBolterGrenadeLauncherStandardBearer 
            Caption         =   "Bolter-Grenade Launcher 10"
         End
         Begin VB.Menu mnuBolterPlasmagunStandardBearer 
            Caption         =   "Bolter-Plasmagun 15"
         End
         Begin VB.Menu mnuBolterMeltagunStandardBearer 
            Caption         =   "Bolter-Meltagun 15"
         End
         Begin VB.Menu mnuStormBolterStandardBearer 
            Caption         =   "Storm Bolter 05"
         End
         Begin VB.Menu mnuAuspexStandardBearer 
            Caption         =   "Auspex 02"
         End
         Begin VB.Menu mnuBionicsStandardBearer 
            Caption         =   "Bionics 10"
         End
         Begin VB.Menu mnuChapterBannerStandardBearer 
            Caption         =   "Chapter Banner 60"
         End
         Begin VB.Menu mnuFragGrenadesStandardBearer 
            Caption         =   "Frag Grenades 01"
         End
         Begin VB.Menu mnuHolyRelicStandardBearer 
            Caption         =   "Holy Relic (1 per army) 40"
         End
         Begin VB.Menu mnuIronHaloStandardBearer 
            Caption         =   "Iron Halo (1 per army) 25"
         End
         Begin VB.Menu mnuKrakGrenadesStandardBearer 
            Caption         =   "Krak Grenades 02"
         End
         Begin VB.Menu mnuMasterCraftedWeaponStandardBearer 
            Caption         =   "Master-Crafted Weapon 15"
         End
         Begin VB.Menu mnuMeltaBombsStandardBearer 
            Caption         =   "Melta Bombs 05"
         End
         Begin VB.Menu mnuPuritySealsStandardBearer 
            Caption         =   "Purity Seals 05"
         End
         Begin VB.Menu mnuSacredStandardStandardBearer 
            Caption         =   "Sacred Standard 20"
         End
         Begin VB.Menu mnuTeleportHomerStandardBearer 
            Caption         =   "Teleport Homer 05"
         End
         Begin VB.Menu mnuTerminatorHonorsStandardBearer 
            Caption         =   "Terminator Honors 15"
         End
      End
      Begin VB.Menu mnuTechMarine 
         Caption         =   "Tech-Marine 18"
      End
      Begin VB.Menu mnuEquipmentTechMarine 
         Caption         =   "Tech-Marine Equipment"
         Visible         =   0   'False
         Begin VB.Menu mnuCloseCombatWeaponTechMarine 
            Caption         =   "Close Combat Weapon 01"
         End
         Begin VB.Menu mnuLightningClawTechMarine 
            Caption         =   "Lightning Claw (single) 25"
         End
         Begin VB.Menu mnuLightningClawsTechMarine 
            Caption         =   "Lightning Claws (pair, two choices) 30"
         End
         Begin VB.Menu mnuPlasmaPistolTechMarine 
            Caption         =   "Plasma Pistol 15"
         End
         Begin VB.Menu mnuPowerFistTechMarine 
            Caption         =   "Power Fist 25"
         End
         Begin VB.Menu mnuPowerWeaponTechMarine 
            Caption         =   "Power Weapon 15"
         End
         Begin VB.Menu mnuStormShieldTechMarine 
            Caption         =   "Storm Shield 10"
         End
         Begin VB.Menu mnuThunderHammerTechMarine 
            Caption         =   "Thunder Hammer 30"
         End
         Begin VB.Menu mnuBolterTechMarine 
            Caption         =   "Bolter 00"
            Checked         =   -1  'True
            Enabled         =   0   'False
         End
         Begin VB.Menu mnuBolterFlamerTechMarine 
            Caption         =   "Bolter-Flamer 10"
         End
         Begin VB.Menu mnuBolterGrenadeLauncherTechMarine 
            Caption         =   "Bolter-Grenade Launcher 10"
         End
         Begin VB.Menu mnuBolterMeltagunTechMarine 
            Caption         =   "Bolter-Meltagun 15"
         End
         Begin VB.Menu mnuBolterPlasmagunTechMarine 
            Caption         =   "Bolter-Plasmagun 15"
         End
         Begin VB.Menu mnuStormBolterTechMarine 
            Caption         =   "Storm Bolter 05"
         End
         Begin VB.Menu mnuAuspexTechMarine 
            Caption         =   "Auspex 02"
         End
         Begin VB.Menu mnuBionicsTechMarine 
            Caption         =   "Bionics 10"
         End
         Begin VB.Menu mnuFragGrenadesTechMarine 
            Caption         =   "Frag Grenades 01"
         End
         Begin VB.Menu mnuIronHaloTechMarine 
            Caption         =   "Iron Halo (1 per army) 25"
         End
         Begin VB.Menu mnuKrakGrenadesTechMarine 
            Caption         =   "Krak Grenades 02"
         End
         Begin VB.Menu mnuMasterCraftedWeaponTechMarine 
            Caption         =   "Master-Crafted Weapon 15"
         End
         Begin VB.Menu mnuMeltaBombsTechMarine 
            Caption         =   "Melta Bombs 05"
         End
         Begin VB.Menu mnuPuritySealsTechMarine 
            Caption         =   "Purity Seals 05"
         End
         Begin VB.Menu mnuServoArmTechMarine 
            Caption         =   "Servo-Arm 30"
         End
         Begin VB.Menu mnuSignumTechMarine 
            Caption         =   "Signum 15"
         End
         Begin VB.Menu mnuTeleportHomerTechMarine 
            Caption         =   "Teleport Homer 05"
         End
         Begin VB.Menu mnuTerminatorHonorsTechMarine 
            Caption         =   "Terminator Honors 15"
         End
         Begin VB.Menu mnuBoltPistolTechMarine 
            Caption         =   "Bolt Pistol 01"
         End
      End
      Begin VB.Menu mnuSMBodyGuard1 
         Caption         =   "Bodyguard 18"
      End
      Begin VB.Menu mnuSMBodyGuard2 
         Caption         =   "BodyGuard 18"
      End
      Begin VB.Menu mnuSMBodyGuard3 
         Caption         =   "BodyGuard 18"
      End
      Begin VB.Menu mnuSMBodyGuard4 
         Caption         =   "BodyGuard 18"
      End
      Begin VB.Menu mnuSMBodyGuard5 
         Caption         =   "BodyGuard 18"
      End
      Begin VB.Menu mnuSMBodyGuard6 
         Caption         =   "BodyGuard 18"
      End
   End
   Begin VB.Menu mnuOptions 
      Caption         =   "Squad Options"
      Visible         =   0   'False
      Begin VB.Menu mnuFragGrenadesSquad 
         Caption         =   "Frag Grenades"
      End
      Begin VB.Menu mnuKrakGrenadesSquad 
         Caption         =   "Krak Grenades"
      End
      Begin VB.Menu mnuTerminatorHonorsSquad 
         Caption         =   "Terminator Honors (Requires Vet. SGT)"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuMissileLauncher1 
         Caption         =   "Missile Launcher 20"
      End
      Begin VB.Menu mnuMissileLauncher2 
         Caption         =   "Missile Launcher 20"
      End
      Begin VB.Menu mnuHeavyBolter1 
         Caption         =   "Heavy Bolter 15"
      End
      Begin VB.Menu mnuHeavyBolter2 
         Caption         =   "Heavy Bolter 15"
      End
      Begin VB.Menu mnuLasCannon1 
         Caption         =   "Las Cannon 35"
      End
      Begin VB.Menu mnuLasCannon2 
         Caption         =   "Las Cannon 35"
      End
      Begin VB.Menu mnuFlamer1 
         Caption         =   "Flamer 03"
      End
      Begin VB.Menu mnuFlamer2 
         Caption         =   "Flamer 03"
      End
      Begin VB.Menu mnuPlasmaGun1 
         Caption         =   "Plasma Gun 06"
      End
      Begin VB.Menu mnuPlasmaGun2 
         Caption         =   "PlasmaGun 06"
      End
      Begin VB.Menu mnuMeltagun1 
         Caption         =   "Meltagun 10"
      End
      Begin VB.Menu mnuMeltagun2 
         Caption         =   "Meltagun 10"
      End
   End
   Begin VB.Menu mnuTransport 
      Caption         =   "Transport"
      Visible         =   0   'False
      Begin VB.Menu mnuRhino 
         Caption         =   "Rhino 50"
      End
      Begin VB.Menu mnuRazorback 
         Caption         =   "Razorback 70"
      End
      Begin VB.Menu mnuLandRaider 
         Caption         =   "Land Raider 250"
      End
   End
   Begin VB.Menu mnuVehicleUpgrades 
      Caption         =   "Vehicle Upgrades"
      Visible         =   0   'False
      Begin VB.Menu mnuDozerBlades 
         Caption         =   "Dozer Blades 05"
      End
      Begin VB.Menu mnuExtraArmor 
         Caption         =   "Extra Armor 05"
      End
      Begin VB.Menu mnuHunterKillerMissile 
         Caption         =   "Hunter-Killer Missile 15"
      End
      Begin VB.Menu mnuPintleMountedStormBolter 
         Caption         =   "Pintle-Mounted Storm Bolter 10"
      End
      Begin VB.Menu mnuSearchlight 
         Caption         =   "Searchlight 01"
      End
      Begin VB.Menu mnuSmokeLaunchers 
         Caption         =   "Smoke Launchers 03"
      End
   End
End
Attribute VB_Name = "frmSpaceMarinesHQ2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'NOTE: Need to limit amount of weapons/equipment that the hero can equip

Dim SquadMembers As Integer
Dim TerminatorMembers As Integer

Private Sub DisplayHQ()
'Initialize Total
    Squad(ActiveSquad, ActiveArmy) = Group(1, ActiveSquad, ActiveArmy) + Group(2, ActiveSquad, ActiveArmy) + Group(3, ActiveSquad, ActiveArmy) + Group(4, ActiveSquad, ActiveArmy) + Group(5, ActiveSquad, ActiveArmy) + Group(6, ActiveSquad, ActiveArmy) + Group(7, ActiveSquad, ActiveArmy) + Group(8, ActiveSquad, ActiveArmy) + Group(9, ActiveSquad, ActiveArmy)
    'Display
    picDisplay.Cls
    picDisplay.Print "Group"; Tab(20); "Points"
    picDisplay.Print "Hero"; Tab(20); Group(1, ActiveSquad, ActiveArmy)
    picDisplay.Print "Sergeant"; Tab(20); Group(2, ActiveSquad, ActiveArmy)
    picDisplay.Print "Apothecary"; Tab(20); Group(3, ActiveSquad, ActiveArmy)
    picDisplay.Print "Standard Bearer"; Tab(20); Group(4, ActiveSquad, ActiveArmy)
    picDisplay.Print "Techmarine"; Tab(20); Group(5, ActiveSquad, ActiveArmy)
    picDisplay.Print "Squad Members"; Tab(20); Group(6, ActiveSquad, ActiveArmy)
    picDisplay.Print "Assault Weaponry"; Tab(20); Group(7, ActiveSquad, ActiveArmy)
    picDisplay.Print "Heavy Weaponry"; Tab(20); Group(8, ActiveSquad, ActiveArmy)
    picDisplay.Print "Transport"; Tab(20); Group(9, ActiveSquad, ActiveArmy)
    picDisplay.Print "Total"; Tab(20); Squad(ActiveSquad, ActiveArmy)
End Sub

Private Sub btnDisplay_Click()
ActiveArmy = 1
ActiveSquad = 2
DisplayHQ
End Sub


Private Sub btnDone_Click()
frmSpaceMarinesHQ2.Hide
End Sub


Private Sub Form_Load()
ActiveArmy = 1
ActiveSquad = 2
DisplayHQ
End Sub

Private Sub mnuApothecary_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 3
    ActiveValue = 18
'Routines
    'If previously unchecked then:
        If mnuApothecary.Checked = False Then
            mnuApothecary.Checked = True
            AddValueToGroup
            mnuEquipmentApothecary.Visible = True
            SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 70
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
            
         Else
    'If previously checked then:
            mnuApothecary.Checked = False
            ActiveValue = 18
            ActiveGroup = 3
            RemoveValueFromGroup
            mnuEquipmentApothecary.Visible = False
            SquadMembers = SquadMembers - 1
            
                'Clear Equipment and items
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuTransport.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub

Private Sub mnuArtificerArmor_Click()
'Initialize variables
    ActiveValue = 20
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuArtificerArmor.Checked = False Then
        mnuArtificerArmor.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuArtificerArmor.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuAuspex_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspex.Checked = False Then
        mnuAuspex.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspex.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuAuspexApothecary_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexApothecary.Checked = False Then
        mnuAuspexApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuAuspexSergeant_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexSergeant.Checked = False Then
        mnuAuspexSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuAuspexStandardBearer_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexStandardBearer.Checked = False Then
        mnuAuspexStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuAuspexTechMarine_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuAuspexTechMarine.Checked = False Then
        mnuAuspexTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuAuspexTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterFlamerSergeant_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerSergeant.Checked = False Then
        mnuBolterFlamerSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerSergeant.Checked = True And mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerSergeant.Checked = False
        
    'Make other weapons available
        
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterFlamerStandardBearer_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerStandardBearer.Checked = False Then
        mnuBolterFlamerStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerStandardBearer.Checked = True And mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerStandardBearer.Checked = False
        
    'Make other weapons available
        
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterFlamerTechMarine_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerTechMarine.Checked = False Then
        mnuBolterFlamerTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerTechMarine.Checked = True And mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
          
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub



Private Sub mnuBolterGrenadeLauncherApothecary_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherApothecary.Checked = False Then
        mnuBolterGrenadeLauncherApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterGrenadeLauncherSergeant_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherSergeant.Checked = False Then
        mnuBolterGrenadeLauncherSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterGrenadeLauncherStandardBearer_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
        mnuBolterGrenadeLauncherStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterGrenadeLauncherTechMarine_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
        mnuBolterGrenadeLauncherTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncherTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncherTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBionics_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBionics.Checked = False Then
        mnuBionics.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuBionics.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBionicsApothecary_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBionicsApothecary.Checked = False Then
        mnuBionicsApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuBionicsApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBionicsSergeant_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBionicsSergeant.Checked = False Then
        mnuBionicsSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuBionicsSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBionicsStandardBearer_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBionicsStandardBearer.Checked = False Then
        mnuBionicsStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuBionicsStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBionicsTechMarine_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBionicsTechMarine.Checked = False Then
        mnuBionicsTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuBionicsTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolter_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolter.Checked = False Then
        mnuBolter.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolter.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolter.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterFlamer_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamer.Checked = False Then
        mnuBolterFlamer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamer.Checked = True And mnuBolter.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamer.Checked = False
        
    'Make other weapons available
        mnuBolter.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterFlamerApothecary_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterFlamerApothecary.Checked = False Then
        mnuBolterFlamerApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterFlamerApothecary.Checked = True And mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterFlamerApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterGrenadeLauncher_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterGrenadeLauncher.Checked = False Then
        mnuBolterGrenadeLauncher.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterGrenadeLauncher.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolter.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterGrenadeLauncher.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolter.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub



Private Sub mnuBolterMeltagun_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagun.Checked = False Then
        mnuBolterMeltagun.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagun.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolter.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagun.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolter.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterMeltagunApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunApothecary.Checked = False Then
        mnuBolterMeltagunApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterMeltagunSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunSergeant.Checked = False Then
        mnuBolterMeltagunSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterMeltagunStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunStandardBearer.Checked = False Then
        mnuBolterMeltagunStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterMeltagunTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterMeltagunTechMarine.Checked = False Then
        mnuBolterMeltagunTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterMeltagunTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterMeltagunTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterPlasmagun_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagun.Checked = False Then
        mnuBolterPlasmagun.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagun.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolter.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagun.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolter.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterPlasmagunApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunApothecary.Checked = False Then
        mnuBolterPlasmagunApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterPlasmagunSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunSergeant.Checked = False Then
        mnuBolterPlasmagunSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBolterPlasmagunStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunStandardBearer.Checked = False Then
        mnuBolterPlasmagunStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuBolterPlasmagunTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBolterPlasmagunTechMarine.Checked = False Then
        mnuBolterPlasmagunTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBolterPlasmagunTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBolterPlasmagunTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBoltPistol_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBoltPistol.Checked = False Then
        mnuBoltPistol.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBoltPistol.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBolter.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBoltPistol.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBolter.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBoltPistolApothecary_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBoltPistolApothecary.Checked = False Then
        mnuBoltPistolApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBoltPistolApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBoltPistolApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBoltPistolSergeant_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBoltPistolSergeant.Checked = False Then
        mnuBoltPistolSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBoltPistolSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBoltPistolSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBoltPistolStandardBearer_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBoltPistolStandardBearer.Checked = False Then
        mnuBoltPistolStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBoltPistolStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBoltPistolStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuBoltPistolTechMarine_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuBoltPistolTechMarine.Checked = False Then
        mnuBoltPistolTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuBoltPistolTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuBoltPistolTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuChainfist_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuChainfist.Checked = False Then
        mnuChainfist.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuChainfist.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuBolter.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuChainfist.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuBolter.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
    
End Sub


Private Sub mnuChaplain_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 1
    ActiveValue = 70
'Routines
    'If previously unchecked then:
        If mnuChaplain.Checked = False Then
            mnuChaplain.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                Select Case True
                    Case mnuCommander.Checked
                        mnuCommander.Checked = False
                        ActiveValue = 45
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuForceCommander.Checked
                        mnuForceCommander.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLeader.Checked
                        mnuLeader.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLibrarian.Checked
                        mnuLibrarian.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                 End Select
                ActiveValue = 70
                mnuEquipment.Visible = True
                mnuCommandSquad.Visible = True
                mnuOptions.Visible = True
            'add to squadmembers
                SquadMembers = SquadMembers + 1
            'Remove Psychic Hood and Force Weapon from group
                If mnuPsychicHood.Checked = True Then
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                ActiveValue = 70
                mnuPsychicHood.Checked = False
                mnuForceWeapon.Checked = False
                mnuPsychicHood.Visible = False
                mnuForceWeapon.Visible = False
            'Enable Holy Relic for chaplain only, if Standard Bearer doesn't have it
                If mnuHolyRelicStandardBearer.Checked = False Then
                    mnuHolyRelic.Visible = True
                End If
         'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 70
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 70
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 70
        'Disable Land Raider if there are more than terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
             ActiveValue = 70
        Else
        'If previously checked then:
            mnuChaplain.Checked = False
            RemoveValueFromGroup
            mnuEquipment.Visible = False
            mnuCommandSquad.Visible = False
            mnuOptions.Visible = False
        'remove from squadmembers
            SquadMembers = SquadMembers - 1
        'Remove Holy Relic from group
             If mnuHolyRelic.Checked = True Then
                 ActiveValue = 40
                RemoveValueFromGroup
             End If
             ActiveValue = 70
             mnuHolyRelic.Checked = False
             mnuHolyRelic.Visible = False
             
        Select Case True
            Case mnuCommander.Checked
            Case mnuForceCommander.Checked
            Case mnuChaplain.Checked
            Case mnuLibrarian.Checked
            Case Else
            'Make equipment options unavailable
                mnuEquipment.Visible = False
                ActiveGroup = 1
                If mnuBoltPistol.Checked = True Then
                    mnuBoltPistol.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuChainfist.Checked = True Then
                    mnuChainfist.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuCloseCombatWeapon.Checked = True Then
                    mnuCloseCombatWeapon.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                If mnuLightningClaw.Checked = True Then
                    mnuLightningClaw.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuLightningClaws.Checked = True Then
                    mnuLightningClaws.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuPlasmaPistol.Checked = True Then
                    mnuPlasmaPistol.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPowerFist.Checked = True Then
                    mnuPowerFist.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuPowerWeapon.Checked = True Then
                    mnuPowerWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormShield.Checked = True Then
                    mnuStormShield.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuThunderHammer.Checked = True Then
                    mnuThunderHammer.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuBolter.Checked = True Then
                    mnuBolter.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBolterFlamer.Checked = True Then
                    mnuBolterFlamer.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterGrenadeLauncher.Checked = True Then
                    mnuBolterGrenadeLauncher.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterPlasmagun.Checked = True Then
                    mnuBolterPlasmagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuBolterMeltagun.Checked = True Then
                    mnuBolterMeltagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormBolter.Checked = True Then
                    mnuStormBolter.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuArtificerArmor.Checked = True Then
                    mnuArtificerArmor.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuAuspex.Checked = True Then
                    mnuAuspex.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBionics.Checked = True Then
                    mnuBionics.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuFragGrenades.Checked = True Then
                    mnuFragGrenades.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuIronHalo.Checked = True Then
                    mnuIronHalo.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuJumpPack.Checked = True Then
                    mnuJumpPack.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuKrakGrenades.Checked = True Then
                    mnuKrakGrenades.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuMasterCraftedWeapon.Checked = True Then
                    mnuMasterCraftedWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuMeltaBombs.Checked = True Then
                    mnuMeltaBombs.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuPuritySeals.Checked = True Then
                    mnuPuritySeals.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuSpaceMarineBike.Checked = True Then
                    mnuSpaceMarineBike.Checked = False
                    ActiveValue = 35
                    RemoveValueFromGroup
                End If
                If mnuTeleportHomer.Checked = True Then
                    mnuTeleportHomer.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuTerminatorArmor.Checked = True Then
                    mnuTerminatorArmor.Checked = False
                    ActiveValue = 25
                    TerminatorMembers = TerminatorMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonors.Checked = True Then
                    mnuTerminatorHonors.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
            'Make squad options unavailable
                mnuOptions.Visible = False
                ActiveGroup = 6
                If mnuKrakGrenadesSquad.Checked = True Then
                    mnuKrakGrenadesSquad.Checked = False

                    ActiveValue = 2 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    RemoveValueFromGroup
                End If
                If mnuFragGrenadesSquad.Checked = True Then
                    mnuFragGrenadesSquad.Checked = False
                    ActiveValue = 1 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveGroup = 1
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveGroup = 2
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveGroup = 3
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveGroup = 4
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveGroup = 5
                        ActiveValue = ActiveValue - 1
                    End If
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonorsSquad.Checked = True Then
                    mnuTerminatorHonorsSquad.Checked = False
                    ActiveValue = 10 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveGroup = 1
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuVeteranSergeant.Checked = True Then
                        ActiveGroup = 2
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveGroup = 3
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveGroup = 4
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveGroup = 5
                        ActiveValue = ActiveValue - 10
                    End If
                    RemoveValueFromGroup
                End If
                
                
                If mnuMissileLauncher1.Checked = True Then
                    mnuMissileLauncher1.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher1.Visible = True
                If mnuMissileLauncher2.Checked = True Then
                    mnuMissileLauncher2.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher2.Visible = True
                If mnuHeavyBolter1.Checked = True Then
                    mnuHeavyBolter1.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter1.Visible = True
                If mnuHeavyBolter2.Checked = True Then
                    mnuHeavyBolter2.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter2.Visible = True
                If mnuLasCannon1.Checked = True Then
                    mnuLasCannon1.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon1.Visible = True
                If mnuLasCannon2.Checked = True Then
                    mnuLasCannon2.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon2.Visible = True
                If mnuFlamer1.Checked = True Then
                    mnuFlamer1.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer1.Visible = True
                If mnuFlamer2.Checked = True Then
                    mnuFlamer2.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer2.Visible = True
                If mnuPlasmaGun1.Checked = True Then
                    mnuPlasmaGun1.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun1.Visible = True
                If mnuPlasmaGun2.Checked = True Then
                    mnuPlasmaGun2.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun2.Visible = True
                If mnuMeltagun1.Checked = True Then
                    mnuMeltagun1.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun1.Visible = True
                If mnuMeltagun2.Checked = True Then
                    mnuMeltagun2.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun2.Visible = True
                
            'Make Command Squad unavailable
                mnuCommandSquad.Visible = False
                    ActiveGroup = 2
                If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                    If mnuVeteranSergeant.Checked = True Then
                        mnuVeteranSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuSergeant.Checked = True Then
                        mnuSergeant.Checked = False
                        ActiveValue = 18
                        RemoveValueFromGroup
                    End If
                               
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipmentSergeant.Visible = False
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                If mnuApothecary.Checked = True Then
                    mnuApothecary.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 3
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                If mnuStandardBearer.Checked = True Then
                    mnuStandardBearer.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 4
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
                End If
                If mnuTechMarine.Checked = True Then
                    mnuTechMarine.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 5
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                ActiveGroup = 6
                If mnuSMBodyGuard1.Checked = True Then
                    mnuSMBodyGuard1.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard2.Checked = True Then
                    mnuSMBodyGuard2.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard3.Checked = True Then
                    mnuSMBodyGuard3.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard4.Checked = True Then
                    mnuSMBodyGuard4.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard5.Checked = True Then
                    mnuSMBodyGuard5.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard6.Checked = True Then
                    mnuSMBodyGuard6.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
        End Select
     
mnuTransport.Visible = False
        'Unchecked any selected vehicle
        If mnuRhino.Checked = True Then
            mnuRhino.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuLandRaider.Checked = True Then
            mnuLandRaider.Checked = False
            ActiveValue = 250
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback.Checked = True Then
            mnuRazorback.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
                
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        
            
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuRhino.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub

Private Sub mnuChapterBannerStandardBearer_Click()
'Initialize variables
    ActiveValue = 60
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuChapterBannerStandardBearer.Checked = False Then
        mnuChapterBannerStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuChapterBannerStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCloseCombatWeapon_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuCloseCombatWeapon.Checked = False Then
        mnuCloseCombatWeapon.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuCloseCombatWeapon.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuCloseCombatWeapon.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuBolter.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCloseCombatWeaponApothecary_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuCloseCombatWeaponApothecary.Checked = False Then
        mnuCloseCombatWeaponApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuCloseCombatWeaponApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuCloseCombatWeaponApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCloseCombatWeaponSergeant_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuCloseCombatWeaponSergeant.Checked = False Then
        mnuCloseCombatWeaponSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuCloseCombatWeaponSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuCloseCombatWeaponSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCloseCombatWeaponStandardBearer_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuCloseCombatWeaponStandardBearer.Checked = False Then
        mnuCloseCombatWeaponStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuCloseCombatWeaponStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuCloseCombatWeaponStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCloseCombatWeaponTechMarine_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuCloseCombatWeaponTechMarine.Checked = False Then
        mnuCloseCombatWeaponTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuCloseCombatWeaponTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuCloseCombatWeaponTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuCommander_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 1
    ActiveValue = 45
'Routines
    'If previously unchecked then:
        If mnuCommander.Checked = False Then
            mnuCommander.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                Select Case True
                    Case mnuLeader.Checked
                        mnuLeader.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuForceCommander.Checked
                        mnuForceCommander.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuChaplain.Checked
                        mnuChaplain.Checked = False
                        ActiveValue = 70
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLibrarian.Checked
                        mnuLibrarian.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                End Select
                ActiveValue = 45
                mnuEquipment.Visible = True
                mnuCommandSquad.Visible = True
                mnuOptions.Visible = True
            'add to squadmembers
                SquadMembers = SquadMembers + 1
        'Remove Psychic Hood and Force Weapon from group
            If mnuPsychicHood.Checked = True Then
                ActiveValue = 25
                RemoveValueFromGroup
            End If
            If mnuForceWeapon.Checked = True Then
                ActiveValue = 40
                RemoveValueFromGroup
            End If
            ActiveValue = 45
            mnuPsychicHood.Checked = False
            mnuForceWeapon.Checked = False
            mnuPsychicHood.Visible = False
            mnuForceWeapon.Visible = False
        'Remove Holy Relic from group
             If mnuHolyRelic.Checked = True Then
                 ActiveValue = 40
                RemoveValueFromGroup
             End If
             ActiveValue = 45
             mnuHolyRelic.Checked = False
             mnuHolyRelic.Visible = False
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 45
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 45
        'Disable Land Raider if there are more 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
 
        Else
        'If previously checked then:
            mnuCommander.Checked = False
            RemoveValueFromGroup
            mnuEquipment.Visible = False
            mnuCommandSquad.Visible = False
            mnuOptions.Visible = False
        'remove from squadmembers
            SquadMembers = SquadMembers - 1
            
                Select Case True
            Case mnuCommander.Checked
            Case mnuForceCommander.Checked
            Case mnuChaplain.Checked
            Case mnuLibrarian.Checked
            Case Else
            'Make equipment options unavailable
                mnuEquipment.Visible = False
                ActiveGroup = 1
                If mnuBoltPistol.Checked = True Then
                    mnuBoltPistol.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuChainfist.Checked = True Then
                    mnuChainfist.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuCloseCombatWeapon.Checked = True Then
                    mnuCloseCombatWeapon.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                If mnuLightningClaw.Checked = True Then
                    mnuLightningClaw.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuLightningClaws.Checked = True Then
                    mnuLightningClaws.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuPlasmaPistol.Checked = True Then
                    mnuPlasmaPistol.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPowerFist.Checked = True Then
                    mnuPowerFist.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuPowerWeapon.Checked = True Then
                    mnuPowerWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormShield.Checked = True Then
                    mnuStormShield.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuThunderHammer.Checked = True Then
                    mnuThunderHammer.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuBolter.Checked = True Then
                    mnuBolter.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBolterFlamer.Checked = True Then
                    mnuBolterFlamer.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterGrenadeLauncher.Checked = True Then
                    mnuBolterGrenadeLauncher.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterPlasmagun.Checked = True Then
                    mnuBolterPlasmagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuBolterMeltagun.Checked = True Then
                    mnuBolterMeltagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormBolter.Checked = True Then
                    mnuStormBolter.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuArtificerArmor.Checked = True Then
                    mnuArtificerArmor.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuAuspex.Checked = True Then
                    mnuAuspex.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBionics.Checked = True Then
                    mnuBionics.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuFragGrenades.Checked = True Then
                    mnuFragGrenades.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuIronHalo.Checked = True Then
                    mnuIronHalo.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuJumpPack.Checked = True Then
                    mnuJumpPack.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuKrakGrenades.Checked = True Then
                    mnuKrakGrenades.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuMasterCraftedWeapon.Checked = True Then
                    mnuMasterCraftedWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuMeltaBombs.Checked = True Then
                    mnuMeltaBombs.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuPuritySeals.Checked = True Then
                    mnuPuritySeals.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuSpaceMarineBike.Checked = True Then
                    mnuSpaceMarineBike.Checked = False
                    ActiveValue = 35
                    RemoveValueFromGroup
                End If
                If mnuTeleportHomer.Checked = True Then
                    mnuTeleportHomer.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuTerminatorArmor.Checked = True Then
                    mnuTerminatorArmor.Checked = False
                    TerminatorMembers = TerminatorMembers - 1
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonors.Checked = True Then
                    mnuTerminatorHonors.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
            'Make squad options unavailable
                mnuOptions.Visible = False
                ActiveGroup = 6
                If mnuKrakGrenadesSquad.Checked = True Then
                    mnuKrakGrenadesSquad.Checked = False
                    ActiveValue = 2 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    RemoveValueFromGroup
                End If
                If mnuFragGrenadesSquad.Checked = True Then
                    mnuFragGrenadesSquad.Checked = False
                    ActiveValue = 1 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonorsSquad.Checked = True Then
                    mnuTerminatorHonorsSquad.Checked = False
                    ActiveValue = 10 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuVeteranSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    RemoveValueFromGroup
                End If
                
                
                If mnuMissileLauncher1.Checked = True Then
                    mnuMissileLauncher1.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher1.Visible = True
                If mnuMissileLauncher2.Checked = True Then
                    mnuMissileLauncher2.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher2.Visible = True
                If mnuHeavyBolter1.Checked = True Then
                    mnuHeavyBolter1.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter1.Visible = True
                If mnuHeavyBolter2.Checked = True Then
                    mnuHeavyBolter2.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter2.Visible = True
                If mnuLasCannon1.Checked = True Then
                    mnuLasCannon1.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon1.Visible = True
                If mnuLasCannon2.Checked = True Then
                    mnuLasCannon2.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon2.Visible = True
                If mnuFlamer1.Checked = True Then
                    mnuFlamer1.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer1.Visible = True
                If mnuFlamer2.Checked = True Then
                    mnuFlamer2.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer2.Visible = True
                If mnuPlasmaGun1.Checked = True Then
                    mnuPlasmaGun1.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun1.Visible = True
                If mnuPlasmaGun2.Checked = True Then
                    mnuPlasmaGun2.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun2.Visible = True
                If mnuMeltagun1.Checked = True Then
                    mnuMeltagun1.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun1.Visible = True
                If mnuMeltagun2.Checked = True Then
                    mnuMeltagun2.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun2.Visible = True
                
                'Make Command Squad unavailable
                mnuCommandSquad.Visible = False
                
                If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                    ActiveGroup = 2
                    If mnuVeteranSergeant.Checked = True Then
                        mnuVeteranSergeant.Checked = False
                        ActiveValue = 30
                        
                        RemoveValueFromGroup
                    End If
                    If mnuSergeant.Checked = True Then
                        mnuSergeant.Checked = False
                        ActiveValue = 18
                        RemoveValueFromGroup
                    End If
                               
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipmentSergeant.Visible = False
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                If mnuApothecary.Checked = True Then
                    mnuApothecary.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 3
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                If mnuStandardBearer.Checked = True Then
                    mnuStandardBearer.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 4
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
                End If
                If mnuTechMarine.Checked = True Then
                    mnuTechMarine.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 5
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                ActiveGroup = 6
                If mnuSMBodyGuard1.Checked = True Then
                    mnuSMBodyGuard1.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard2.Checked = True Then
                    mnuSMBodyGuard2.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard3.Checked = True Then
                    mnuSMBodyGuard3.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard4.Checked = True Then
                    mnuSMBodyGuard4.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard5.Checked = True Then
                    mnuSMBodyGuard5.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard6.Checked = True Then
                    mnuSMBodyGuard6.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
        End Select

mnuTransport.Visible = False
        'Unchecked any selected vehicle
        If mnuRhino.Checked = True Then
            mnuRhino.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuLandRaider.Checked = True Then
            mnuLandRaider.Checked = False
            ActiveValue = 250
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback.Checked = True Then
            mnuRazorback.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
                
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        
            
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuRhino.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub





Private Sub mnuDozerBlades_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuDozerBlades.Checked = False Then
        mnuDozerBlades.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuDozerBlades.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub






Private Sub mnuExtraArmor_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuExtraArmor.Checked = False Then
        mnuExtraArmor.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuExtraArmor.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuFlamer1_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFlamer1.Checked = False Then
        mnuFlamer1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuFlamer1.Checked = True And mnuPlasmaGun1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuFlamer1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuFlamer2_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFlamer2.Checked = False Then
        mnuFlamer2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuFlamer2.Checked = True And mnuFlamer1.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuFlamer2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuForceCommander_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 1
    ActiveValue = 60
'Routines
    'If previously unchecked then:
        If mnuForceCommander.Checked = False Then
            mnuForceCommander.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                Select Case True
                    Case mnuCommander.Checked
                        mnuCommander.Checked = False
                        ActiveValue = 45
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLeader.Checked
                        mnuLeader.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuChaplain.Checked
                        mnuChaplain.Checked = False
                        ActiveValue = 70
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLibrarian.Checked
                        mnuLibrarian.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                End Select
                ActiveValue = 60
                mnuEquipment.Visible = True
                mnuCommandSquad.Visible = True
                mnuOptions.Visible = True
            'add to squadmembers
                SquadMembers = SquadMembers + 1
       'Remove Psychic Hood and Force Weapon from group
            If mnuPsychicHood.Checked = True Then
                ActiveValue = 25
                RemoveValueFromGroup
            End If
            If mnuForceWeapon.Checked = True Then
                ActiveValue = 40
                RemoveValueFromGroup
            End If
            ActiveValue = 60
            mnuPsychicHood.Checked = False
            mnuForceWeapon.Checked = False
            mnuPsychicHood.Visible = False
            mnuForceWeapon.Visible = False
        'Remove Holy Relic from group
             If mnuHolyRelic.Checked = True Then
                 ActiveValue = 40
                RemoveValueFromGroup
             End If
             ActiveValue = 60
             mnuHolyRelic.Checked = False
             mnuHolyRelic.Visible = False
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 60
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 60
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
            ActiveValue = 60
        Else
        'If previously checked then:
            mnuForceCommander.Checked = False
            RemoveValueFromGroup
            mnuEquipment.Visible = False
            mnuCommandSquad.Visible = False
            mnuOptions.Visible = False
        'remove from squadmembers
            SquadMembers = SquadMembers - 1
                Select Case True
            Case mnuCommander.Checked
            Case mnuForceCommander.Checked
            Case mnuChaplain.Checked
            Case mnuLibrarian.Checked
            Case Else
            'Make equipment options unavailable
                mnuEquipment.Visible = False
                ActiveGroup = 1
                If mnuBoltPistol.Checked = True Then
                    mnuBoltPistol.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuChainfist.Checked = True Then
                    mnuChainfist.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuCloseCombatWeapon.Checked = True Then
                    mnuCloseCombatWeapon.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                If mnuLightningClaw.Checked = True Then
                    mnuLightningClaw.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuLightningClaws.Checked = True Then
                    mnuLightningClaws.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuPlasmaPistol.Checked = True Then
                    mnuPlasmaPistol.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPowerFist.Checked = True Then
                    mnuPowerFist.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuPowerWeapon.Checked = True Then
                    mnuPowerWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormShield.Checked = True Then
                    mnuStormShield.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuThunderHammer.Checked = True Then
                    mnuThunderHammer.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuBolter.Checked = True Then
                    mnuBolter.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBolterFlamer.Checked = True Then
                    mnuBolterFlamer.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterGrenadeLauncher.Checked = True Then
                    mnuBolterGrenadeLauncher.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterPlasmagun.Checked = True Then
                    mnuBolterPlasmagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuBolterMeltagun.Checked = True Then
                    mnuBolterMeltagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormBolter.Checked = True Then
                    mnuStormBolter.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuArtificerArmor.Checked = True Then
                    mnuArtificerArmor.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuAuspex.Checked = True Then
                    mnuAuspex.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBionics.Checked = True Then
                    mnuBionics.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuFragGrenades.Checked = True Then
                    mnuFragGrenades.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuIronHalo.Checked = True Then
                    mnuIronHalo.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuJumpPack.Checked = True Then
                    mnuJumpPack.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuKrakGrenades.Checked = True Then
                    mnuKrakGrenades.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuMasterCraftedWeapon.Checked = True Then
                    mnuMasterCraftedWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuMeltaBombs.Checked = True Then
                    mnuMeltaBombs.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuPuritySeals.Checked = True Then
                    mnuPuritySeals.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuSpaceMarineBike.Checked = True Then
                    mnuSpaceMarineBike.Checked = False
                    ActiveValue = 35
                    RemoveValueFromGroup
                End If
                If mnuTeleportHomer.Checked = True Then
                    mnuTeleportHomer.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuTerminatorArmor.Checked = True Then
                    mnuTerminatorArmor.Checked = False
                    ActiveValue = 25
                    TerminatorMembers = TerminatorMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonors.Checked = True Then
                    mnuTerminatorHonors.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
            'Make squad options unavailable
                mnuOptions.Visible = False
                ActiveGroup = 6
                If mnuKrakGrenadesSquad.Checked = True Then
                    mnuKrakGrenadesSquad.Checked = False
                    ActiveValue = 2 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    RemoveValueFromGroup
                End If
                If mnuFragGrenadesSquad.Checked = True Then
                    mnuFragGrenadesSquad.Checked = False
                    ActiveValue = 1 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonorsSquad.Checked = True Then
                    mnuTerminatorHonorsSquad.Checked = False
                    ActiveValue = 10 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuVeteranSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    RemoveValueFromGroup
                End If
                If mnuMissileLauncher1.Checked = True Then
                    mnuMissileLauncher1.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher1.Visible = True
                If mnuMissileLauncher2.Checked = True Then
                    mnuMissileLauncher2.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher2.Visible = True
                If mnuHeavyBolter1.Checked = True Then
                    mnuHeavyBolter1.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter1.Visible = True
                If mnuHeavyBolter2.Checked = True Then
                    mnuHeavyBolter2.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter2.Visible = True
                If mnuLasCannon1.Checked = True Then
                    mnuLasCannon1.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon1.Visible = True
                If mnuLasCannon2.Checked = True Then
                    mnuLasCannon2.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon2.Visible = True
                If mnuFlamer1.Checked = True Then
                    mnuFlamer1.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer1.Visible = True
                If mnuFlamer2.Checked = True Then
                    mnuFlamer2.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer2.Visible = True
                If mnuPlasmaGun1.Checked = True Then
                    mnuPlasmaGun1.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun1.Visible = True
                If mnuPlasmaGun2.Checked = True Then
                    mnuPlasmaGun2.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun2.Visible = True
                If mnuMeltagun1.Checked = True Then
                    mnuMeltagun1.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun1.Visible = True
                If mnuMeltagun2.Checked = True Then
                    mnuMeltagun2.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun2.Visible = True
                
            'Make Command Squad unavailable
                mnuCommandSquad.Visible = False
                ActiveGroup = 2
                If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                    If mnuVeteranSergeant.Checked = True Then
                        mnuVeteranSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuSergeant.Checked = True Then
                        mnuSergeant.Checked = False
                        ActiveValue = 18
                        RemoveValueFromGroup
                    End If
                               
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipmentSergeant.Visible = False
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                If mnuApothecary.Checked = True Then
                    mnuApothecary.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 3
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                If mnuStandardBearer.Checked = True Then
                    mnuStandardBearer.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 4
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
                End If
                If mnuTechMarine.Checked = True Then
                    mnuTechMarine.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 5
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                ActiveGroup = 6
                If mnuSMBodyGuard1.Checked = True Then
                    mnuSMBodyGuard1.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard2.Checked = True Then
                    mnuSMBodyGuard2.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard3.Checked = True Then
                    mnuSMBodyGuard3.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard4.Checked = True Then
                    mnuSMBodyGuard4.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard5.Checked = True Then
                    mnuSMBodyGuard5.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard6.Checked = True Then
                    mnuSMBodyGuard6.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
        End Select

mnuTransport.Visible = False
        'Unchecked any selected vehicle
        If mnuRhino.Checked = True Then
            mnuRhino.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuLandRaider.Checked = True Then
            mnuLandRaider.Checked = False
            ActiveValue = 250
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback.Checked = True Then
            mnuRazorback.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
                
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        
            
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuRhino.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub


Private Sub mnuForceWeapon_Click()
'Initialize variables
    ActiveValue = 40
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuForceWeapon.Checked = False Then
        mnuForceWeapon.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuForceWeapon.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuBolter.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuForceWeapon.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuBolter.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
    
End Sub

Private Sub mnuFragGrenades_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenades.Checked = False Then
        mnuFragGrenades.Checked = True
    
    'add value
        AddValueToGroup
    End If
'If previsously checked then check
    If mnuFragGrenades.Checked = True Then
        mnuFragGrenades.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuFragGrenadesApothecary_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenadesApothecary.Checked = False Then
        mnuFragGrenadesApothecary.Checked = True
    
    'add value
        AddValueToGroup
    End If
'If previsously checked then check
    If mnuFragGrenadesApothecary.Checked = True Then
        mnuFragGrenadesApothecary.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
    'Display Squad
        DisplayHQ
End Sub


Private Sub mnuFragGrenadesSergeant_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenadesSergeant.Checked = False Then
        mnuFragGrenadesSergeant.Checked = True
    
    'add value
        AddValueToGroup
    End If
'If previsously checked then check
    If mnuFragGrenadesSergeant.Checked = True Then
        mnuFragGrenadesSergeant.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuFragGrenadesSquad_Click()
'Initialize variables
    ActiveValue = 1
    'NO ActiveGroup
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenadesSquad.Checked = False Then
        mnuFragGrenadesSquad.Checked = True
    
    'Run checks on other fraggrenade items
        If mnuFragGrenades.Checked = False And mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuChaplain.Checked = True Or mnuLibrarian.Checked = True Then
            mnuFragGrenades.Checked = True
            ActiveGroup = 1
            AddValueToGroup
        End If
        If mnuFragGrenadesSergeant.Checked = False And mnuSergeant.Checked = True Or mnuVeteranSergeant.Checked = True Then
            mnuFragGrenadesSergeant.Checked = True
            ActiveGroup = 2
            AddValueToGroup
        End If
        If mnuFragGrenadesApothecary.Checked = False And mnuApothecary.Checked = True Then
            mnuFragGrenadesApothecary.Checked = True
            ActiveGroup = 3
            AddValueToGroup
        End If
        If mnuFragGrenadesStandardBearer.Checked = False And mnuStandardBearer.Checked = True Then
            mnuFragGrenadesStandardBearer.Checked = True
            ActiveGroup = 4
            AddValueToGroup
        End If
        If mnuFragGrenadesTechMarine.Checked = False And mnuTechMarine.Checked = True Then
            mnuFragGrenadesTechMarine.Checked = True
            ActiveGroup = 5
            AddValueToGroup
        End If
    'add value for bodyguards
        ActiveGroup = 6
        ActiveValue = SquadMembers * 1
    'Compensate for character krak grenades
        If mnuFragGrenades.Checked = True Then
            ActiveValue = ActiveValue - 1
        End If
        If mnuFragGrenadesSergeant.Checked = True Then
            ActiveValue = ActiveValue - 1
        End If
        If mnuFragGrenadesApothecary.Checked = True Then
            ActiveValue = ActiveValue - 1
        End If
        If mnuFragGrenadesStandardBearer.Checked = True Then
            ActiveValue = ActiveValue - 1
        End If
        If mnuFragGrenadesTechMarine.Checked = True Then
            ActiveValue = ActiveValue - 1
        End If
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuFragGrenadesSquad.Checked = False
    
    'Run checks on other Krakgrenade items
        If mnuFragGrenades.Checked = True Then
            mnuFragGrenades.Checked = False
            ActiveGroup = 1
            RemoveValueFromGroup
        End If
        If mnuFragGrenadesSergeant.Checked = True Then
            mnuFragGrenadesSergeant.Checked = False
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuFragGrenadesApothecary.Checked = True Then
            mnuFragGrenadesApothecary.Checked = False
            ActiveGroup = 3
            RemoveValueFromGroup
        End If
        If mnuFragGrenadesStandardBearer.Checked = True Then
            mnuFragGrenadesStandardBearer.Checked = False
            ActiveGroup = 4
            RemoveValueFromGroup
        End If
        If mnuFragGrenadesTechMarine.Checked = True Then
            mnuFragGrenadesTechMarine.Checked = False
            ActiveGroup = 5
            RemoveValueFromGroup
        End If
    'alter group
        ActiveGroup = 6
    'Reset activevalue to 0
        ActiveValue = 0
    'count up pending which bodyguard were selected
        If mnuSMBodyGuard1.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        If mnuSMBodyGuard2.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        If mnuSMBodyGuard3.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        If mnuSMBodyGuard4.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        If mnuSMBodyGuard5.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        If mnuSMBodyGuard6.Checked = True Then
            ActiveValue = ActiveValue + 1
        End If
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuFragGrenadesStandardBearer_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenadesStandardBearer.Checked = False Then
        mnuFragGrenadesStandardBearer.Checked = True
    
    'add value
        AddValueToGroup
    End If
'If previsously checked then check
    If mnuFragGrenadesStandardBearer.Checked = True Then
        mnuFragGrenadesStandardBearer.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuFragGrenadesTechMarine_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuFragGrenadesTechMarine.Checked = False Then
        mnuFragGrenadesTechMarine.Checked = True
    
    'add value
        AddValueToGroup
    End If
'If previsously checked then check
    If mnuFragGrenadesTechMarine.Checked = True Then
        mnuFragGrenadesTechMarine.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub


Private Sub mnuHeavyBolter1_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHeavyBolter1.Checked = False Then
        mnuHeavyBolter1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuHeavyBolter1.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuHeavyBolter1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuHeavyBolter2_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHeavyBolter2.Checked = False Then
        mnuHeavyBolter2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuHeavyBolter2.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuHeavyBolter2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub




Private Sub mnuHolyRelic_Click()
'Initialize variables
    ActiveValue = 40
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHolyRelic.Checked = False Then
        mnuHolyRelic.Checked = True
    'Disable Standard Bearer's Holy Relic
        mnuHolyRelicStandardBearer.Visible = False
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuHolyRelic.Checked = False
    'Enable Standard Bearer's Holy Relic
        mnuHolyRelicStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuHolyRelicStandardBearer_Click()
'Initialize variables
    ActiveValue = 40
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHolyRelicStandardBearer.Checked = False Then
        mnuHolyRelicStandardBearer.Checked = True
    'Disable Chaplain's Holy Relic
        mnuHolyRelic.Visible = False
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuHolyRelicStandardBearer.Checked = False
    'Enable chaplain's Holy Relic
        mnuHolyRelic.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuHunterKillerMissile_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuHunterKillerMissile.Checked = False Then
        mnuHunterKillerMissile.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuHunterKillerMissile.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuIronHalo_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuIronHalo.Checked = False Then
        mnuIronHalo.Checked = True
    'Disable all other Iron Halos
        mnuIronHaloSergeant.Visible = False
        mnuIronHaloApothecary.Visible = False
        mnuIronHaloStandardBearer.Visible = False
        mnuIronHaloTechMarine.Visible = False
    'add value
        AddValueToGroup
    
    Else
    'If previously checked then uncheck
        mnuIronHalo.Checked = False
    'Enable other Iron Halos
        mnuIronHaloSergeant.Visible = True
        mnuIronHaloApothecary.Visible = True
        mnuIronHaloStandardBearer.Visible = True
        mnuIronHaloTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub



Private Sub mnuIronHaloApothecary_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuIronHaloApothecary.Checked = False Then
        mnuIronHaloApothecary.Checked = True
    'Disable all other Iron Halos
        mnuIronHaloSergeant.Visible = False
        mnuIronHalo.Visible = False
        mnuIronHaloStandardBearer.Visible = False
        mnuIronHaloTechMarine.Visible = False
    'add value
        AddValueToGroup
    
    Else
    'If previously checked then uncheck
        mnuIronHaloApothecary.Checked = False
    'Enable other Iron Halos
        mnuIronHaloSergeant.Visible = True
        mnuIronHalo.Visible = True
        mnuIronHaloStandardBearer.Visible = True
        mnuIronHaloTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuIronHaloSergeant_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuIronHaloSergeant.Checked = False Then
        mnuIronHaloSergeant.Checked = True
    'Disable all other Iron Halos
        mnuIronHaloApothecary.Visible = False
        mnuIronHalo.Visible = False
        mnuIronHaloStandardBearer.Visible = False
        mnuIronHaloTechMarine.Visible = False
    'add value
        AddValueToGroup
    
    Else
    'If previously checked then uncheck
        mnuIronHaloSergeant.Checked = False
    'Enable other Iron Halos
        mnuIronHaloApothecary.Visible = True
        mnuIronHalo.Visible = True
        mnuIronHaloStandardBearer.Visible = True
        mnuIronHaloTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuIronHaloStandardBearer_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuIronHaloStandardBearer.Checked = False Then
        mnuIronHaloStandardBearer.Checked = True
    'Disable all other Iron Halos
        mnuIronHaloSergeant.Visible = False
        mnuIronHalo.Visible = False
        mnuIronHaloApothecary.Visible = False
        mnuIronHaloTechMarine.Visible = False
    'add value
        AddValueToGroup
    
    Else
    'If previously checked then uncheck
        mnuIronHaloStandardBearer.Checked = False
    'Enable other Iron Halos
        mnuIronHaloSergeant.Visible = True
        mnuIronHalo.Visible = True
        mnuIronHaloApothecary.Visible = True
        mnuIronHaloTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuIronHaloTechMarine_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuIronHaloTechMarine.Checked = False Then
        mnuIronHaloTechMarine.Checked = True
    'Disable all other Iron Halos
        mnuIronHaloSergeant.Visible = False
        mnuIronHalo.Visible = False
        mnuIronHaloStandardBearer.Visible = False
        mnuIronHaloApothecary.Visible = False
    'add value
        AddValueToGroup
    
    Else
    'If previously checked then uncheck
        mnuIronHaloTechMarine.Checked = False
    'Enable other Iron Halos
        mnuIronHaloSergeant.Visible = True
        mnuIronHalo.Visible = True
        mnuIronHaloStandardBearer.Visible = True
        mnuIronHaloApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuJumpPack_Click()
'Initialize variables
    ActiveValue = 20
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuJumpPack.Checked = False Then
        mnuJumpPack.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuJumpPack.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuKrakGrenades_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenades.Checked = False Then
        mnuKrakGrenades.Checked = True
    
    'add value
        AddValueToGroup
    
'If previsously checked then check
    Else
        mnuKrakGrenades.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuKrakGrenadesApothecary_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenadesApothecary.Checked = False Then
        mnuKrakGrenadesApothecary.Checked = True
    
    'add value
        AddValueToGroup
    
'If previsously checked then check
    Else
        mnuKrakGrenadesApothecary.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub


Private Sub mnuKrakGrenadesSergeant_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenadesSergeant.Checked = False Then
        mnuKrakGrenadesSergeant.Checked = True
    
    'add value
        AddValueToGroup

'If previsously checked then check
    Else
        mnuKrakGrenadesSergeant.Checked = False
    
'remove value
        RemoveValueFromGroup
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuKrakGrenadesSquad_Click()
'Initialize variables
    ActiveValue = 2
    'NO ActiveGroup
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenadesSquad.Checked = False Then
        mnuKrakGrenadesSquad.Checked = True
    
    'Run checks on other Krakgrenade items for addition
        If mnuKrakGrenades.Checked = False And mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuChaplain.Checked = True Or mnuLibrarian.Checked = True Then
            mnuKrakGrenades.Checked = True
            ActiveGroup = 1
            AddValueToGroup
        End If
        If mnuKrakGrenadesSergeant.Checked = False And mnuSergeant.Checked = True Or mnuVeteranSergeant.Checked = True Then
            mnuKrakGrenadesSergeant.Checked = True
            ActiveGroup = 2
            AddValueToGroup
        End If
        If mnuKrakGrenadesApothecary.Checked = False And mnuApothecary.Checked = True Then
            mnuKrakGrenadesApothecary.Checked = True
            ActiveGroup = 3
            AddValueToGroup
        End If
        If mnuKrakGrenadesStandardBearer.Checked = False And mnuStandardBearer.Checked = True Then
            mnuKrakGrenadesStandardBearer.Checked = True
            ActiveGroup = 4
            AddValueToGroup
        End If
        If mnuKrakGrenadesTechMarine.Checked = False And mnuTechMarine.Checked = True Then
            mnuKrakGrenadesTechMarine.Checked = True
            ActiveGroup = 5
            AddValueToGroup
        End If
    'add value for bodyguards
        ActiveGroup = 6
        ActiveValue = SquadMembers * 2
    'Compensate for character krak grenades
        If mnuKrakGrenades.Checked = True Then
            ActiveValue = ActiveValue - 2
        End If
        If mnuKrakGrenadesSergeant.Checked = True Then
            ActiveValue = ActiveValue - 2
        End If
        If mnuKrakGrenadesApothecary.Checked = True Then
            ActiveValue = ActiveValue - 2
        End If
        If mnuKrakGrenadesStandardBearer.Checked = True Then
            ActiveValue = ActiveValue - 2
        End If
        If mnuKrakGrenadesTechMarine.Checked = True Then
            ActiveValue = ActiveValue - 2
        End If
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuKrakGrenadesSquad.Checked = False
    
    'Run checks on other Krakgrenade items for deduction
        If mnuKrakGrenades.Checked = True Then
            mnuKrakGrenades.Checked = False
            ActiveGroup = 1
            RemoveValueFromGroup
        End If
        If mnuKrakGrenadesSergeant.Checked = True Then
            mnuKrakGrenadesSergeant.Checked = False
            ActiveGroup = 2
            RemoveValueFromGroup
        End If
        If mnuKrakGrenadesApothecary.Checked = True Then
            mnuKrakGrenadesApothecary.Checked = False
            ActiveGroup = 3
            RemoveValueFromGroup
        End If
        If mnuKrakGrenadesStandardBearer.Checked = True Then
            mnuKrakGrenadesStandardBearer.Checked = False
            ActiveGroup = 4
            RemoveValueFromGroup
        End If
        If mnuKrakGrenadesTechMarine.Checked = True Then
            mnuKrakGrenadesTechMarine.Checked = False
            ActiveGroup = 5
            RemoveValueFromGroup
        End If
    'remove value
        ActiveGroup = 6
    'Reset activevalue to 0
        ActiveValue = 0
    'count up pending which bodyguard were selected
        If mnuSMBodyGuard1.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        If mnuSMBodyGuard2.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        If mnuSMBodyGuard3.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        If mnuSMBodyGuard4.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        If mnuSMBodyGuard5.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        If mnuSMBodyGuard6.Checked = True Then
            ActiveValue = ActiveValue + 2
        End If
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuKrakGrenadesStandardBearer_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenadesStandardBearer.Checked = False Then
        mnuKrakGrenadesStandardBearer.Checked = True
    
    'add value
        AddValueToGroup
    
'If previsously checked then check
    Else
        mnuKrakGrenadesStandardBearer.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuKrakGrenadesTechMarine_Click()
'Initialize variables
    ActiveValue = 2
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuKrakGrenadesTechMarine.Checked = False Then
        mnuKrakGrenadesTechMarine.Checked = True
    
    'add value
        AddValueToGroup
    
'If previsously checked then check
    Else
        mnuKrakGrenadesTechMarine.Checked = False
    
'remove value
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub


Private Sub mnuLandRaider_Click()

'Initialize variables
    ActiveValue = 250
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLandRaider.Checked = False Then
        mnuLandRaider.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers >= 10 Then
            mnuLandRaider.Checked = False
            MsgBox "Too many members in squad", , "Obstruction"
        ElseIf TerminatorMembers >= 5 Then
            mnuLandRaider.Checked = False
            MsgBox "Too many terminators in squad", , "Obstruction"
        
        Else
        'add value
            AddValueToGroup
        'Make vehicle upgrades available
            mnuVehicleUpgrades.Visible = True
        'Unchecked any other selected vehicle
            If mnuRhino.Checked = True Then
                mnuRhino.Checked = False
                ActiveValue = 50
                RemoveValueFromGroup
            End If
            If mnuRazorback.Checked = True Then
                mnuRazorback.Checked = False
                ActiveValue = 70
                RemoveValueFromGroup
            End If
            ActiveValue = 250
        End If
    Else
    'If previously checked then uncheck
        mnuLandRaider.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 250
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLascannon1_Click()
'Initialize variables
    ActiveValue = 35
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLasCannon1.Checked = False Then
        mnuLasCannon1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuLasCannon1.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLasCannon1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLasCannon2_Click()
'Initialize variables
    ActiveValue = 35
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLasCannon2.Checked = False Then
        mnuLasCannon2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuLasCannon2.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuPlasmaGun1.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLasCannon2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLeader_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 1
    ActiveValue = 30
'Routines
    'If previously unchecked then:
        If mnuLeader.Checked = False Then
            mnuLeader.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                Select Case True
                    Case mnuCommander.Checked
                        mnuCommander.Checked = False
                        ActiveValue = 45
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuForceCommander.Checked
                        mnuForceCommander.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuChaplain.Checked
                        mnuChaplain.Checked = False
                        ActiveValue = 70
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLibrarian.Checked
                        mnuLibrarian.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                End Select
                ActiveValue = 30
                mnuEquipment.Visible = True
                mnuCommandSquad.Visible = True
                mnuOptions.Visible = True
                mnuTransport.Visible = True
            'add to squadmembers
                SquadMembers = SquadMembers + 1
            'Remove Psychic Hood and Force Weapon from group
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                ActiveValue = 30
                
                mnuPsychicHood.Visible = False
                mnuForceWeapon.Visible = False
            'Remove Holy Relic from group
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                ActiveValue = 30
                
                mnuHolyRelic.Visible = False
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 30
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 30
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
            ActiveValue = 30
        Else
    'If previously checked then:
            mnuLeader.Checked = False
            RemoveValueFromGroup
        'remove from squadmembers
            SquadMembers = SquadMembers - 1
        
        
    'If and only If no other Hero is checked then disable hero options
        Select Case True
            Case mnuCommander.Checked
            Case mnuForceCommander.Checked
            Case mnuChaplain.Checked
            Case mnuLibrarian.Checked
            Case Else
            'Make equipment options unavailable
                mnuEquipment.Visible = False
                ActiveGroup = 1
                If mnuBoltPistol.Checked = True Then
                    mnuBoltPistol.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuChainfist.Checked = True Then
                    mnuChainfist.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuCloseCombatWeapon.Checked = True Then
                    mnuCloseCombatWeapon.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                If mnuLightningClaw.Checked = True Then
                    mnuLightningClaw.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuLightningClaws.Checked = True Then
                    mnuLightningClaws.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuPlasmaPistol.Checked = True Then
                    mnuPlasmaPistol.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPowerFist.Checked = True Then
                    mnuPowerFist.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuPowerWeapon.Checked = True Then
                    mnuPowerWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormShield.Checked = True Then
                    mnuStormShield.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuThunderHammer.Checked = True Then
                    mnuThunderHammer.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuBolter.Checked = True Then
                    mnuBolter.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBolterFlamer.Checked = True Then
                    mnuBolterFlamer.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterGrenadeLauncher.Checked = True Then
                    mnuBolterGrenadeLauncher.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterPlasmagun.Checked = True Then
                    mnuBolterPlasmagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuBolterMeltagun.Checked = True Then
                    mnuBolterMeltagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormBolter.Checked = True Then
                    mnuStormBolter.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuArtificerArmor.Checked = True Then
                    mnuArtificerArmor.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuAuspex.Checked = True Then
                    mnuAuspex.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBionics.Checked = True Then
                    mnuBionics.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuFragGrenades.Checked = True Then
                    mnuFragGrenades.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuIronHalo.Checked = True Then
                    mnuIronHalo.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuJumpPack.Checked = True Then
                    mnuJumpPack.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuKrakGrenades.Checked = True Then
                    mnuKrakGrenades.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuMasterCraftedWeapon.Checked = True Then
                    mnuMasterCraftedWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuMeltaBombs.Checked = True Then
                    mnuMeltaBombs.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuPuritySeals.Checked = True Then
                    mnuPuritySeals.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuSpaceMarineBike.Checked = True Then
                    mnuSpaceMarineBike.Checked = False
                    ActiveValue = 35
                    RemoveValueFromGroup
                End If
                If mnuTeleportHomer.Checked = True Then
                    mnuTeleportHomer.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuTerminatorArmor.Checked = True Then
                    mnuTerminatorArmor.Checked = False
                    ActiveValue = 25
                    TerminatorMembers = TerminatorMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonors.Checked = True Then
                    mnuTerminatorHonors.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
            'Make squad options unavailable
                mnuOptions.Visible = False
                ActiveGroup = 6
                If mnuKrakGrenadesSquad.Checked = True Then
                    mnuKrakGrenadesSquad.Checked = False
                    ActiveValue = 2 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    RemoveValueFromGroup
                End If
                If mnuFragGrenadesSquad.Checked = True Then
                    mnuFragGrenadesSquad.Checked = False
                    ActiveValue = 1 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonorsSquad.Checked = True Then
                    mnuTerminatorHonorsSquad.Checked = False
                    ActiveValue = 10 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuVeteranSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    RemoveValueFromGroup
                End If
                
                If mnuMissileLauncher1.Checked = True Then
                    mnuMissileLauncher1.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher1.Visible = True
                If mnuMissileLauncher2.Checked = True Then
                    mnuMissileLauncher2.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher2.Visible = True
                If mnuHeavyBolter1.Checked = True Then
                    mnuHeavyBolter1.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter1.Visible = True
                If mnuHeavyBolter2.Checked = True Then
                    mnuHeavyBolter2.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter2.Visible = True
                If mnuLasCannon1.Checked = True Then
                    mnuLasCannon1.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon1.Visible = True
                If mnuLasCannon2.Checked = True Then
                    mnuLasCannon2.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon2.Visible = True
                If mnuFlamer1.Checked = True Then
                    mnuFlamer1.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer1.Visible = True
                If mnuFlamer2.Checked = True Then
                    mnuFlamer2.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer2.Visible = True
                If mnuPlasmaGun1.Checked = True Then
                    mnuPlasmaGun1.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun1.Visible = True
                If mnuPlasmaGun2.Checked = True Then
                    mnuPlasmaGun2.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun2.Visible = True
                If mnuMeltagun1.Checked = True Then
                    mnuMeltagun1.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun1.Visible = True
                If mnuMeltagun2.Checked = True Then
                    mnuMeltagun2.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun2.Visible = True
                            
            'Make Command Squad unavailable
                mnuCommandSquad.Visible = False
                ActiveGroup = 2
                If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                    If mnuVeteranSergeant.Checked = True Then
                        mnuVeteranSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuSergeant.Checked = True Then
                        mnuSergeant.Checked = False
                        ActiveValue = 18
                        RemoveValueFromGroup
                    End If
                               
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipmentSergeant.Visible = False
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                If mnuApothecary.Checked = True Then
                    mnuApothecary.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 3
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                If mnuStandardBearer.Checked = True Then
                    mnuStandardBearer.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 4
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
                End If
                If mnuTechMarine.Checked = True Then
                    mnuTechMarine.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 5
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                ActiveGroup = 6
                If mnuSMBodyGuard1.Checked = True Then
                    mnuSMBodyGuard1.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard2.Checked = True Then
                    mnuSMBodyGuard2.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard3.Checked = True Then
                    mnuSMBodyGuard3.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard4.Checked = True Then
                    mnuSMBodyGuard4.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard5.Checked = True Then
                    mnuSMBodyGuard5.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard6.Checked = True Then
                    mnuSMBodyGuard6.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
        End Select
        
        
        mnuTransport.Visible = False
        'Unchecked any selected vehicle
        If mnuRhino.Checked = True Then
            mnuRhino.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuLandRaider.Checked = True Then
            mnuLandRaider.Checked = False
            ActiveValue = 250
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback.Checked = True Then
            mnuRazorback.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
                
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        
            
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuRhino.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
    End If
        ActiveValue = 30
    'Display Squad
        DisplayHQ
End Sub


Private Sub mnuLibrarian_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 1
    ActiveValue = 60
'Routines
    'If previously unchecked then:
        If mnuLibrarian.Checked = False Then
            mnuLibrarian.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                Select Case True
                    Case mnuCommander.Checked
                        mnuCommander.Checked = False
                        ActiveValue = 45
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuForceCommander.Checked
                        mnuForceCommander.Checked = False
                        ActiveValue = 60
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuChaplain.Checked
                        mnuChaplain.Checked = False
                        ActiveValue = 70
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                    Case mnuLeader.Checked
                        mnuLeader.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                        SquadMembers = SquadMembers - 1
                End Select
                ActiveValue = 60
                mnuEquipment.Visible = True
                mnuCommandSquad.Visible = True
                mnuOptions.Visible = True
            'add to squadmembers
                SquadMembers = SquadMembers + 1
            'Enable psychic Hood and force weapon for librarian only
                mnuPsychicHood.Visible = True
                mnuForceWeapon.Visible = True
            'Remove Holy Relic from group
                 If mnuHolyRelic.Checked = True Then
                     ActiveValue = 40
                    RemoveValueFromGroup
                End If
                ActiveValue = 60
                mnuHolyRelic.Checked = False
                mnuHolyRelic.Visible = False
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveGroup = 9
                    ActiveValue = 50
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveGroup = 9
                    ActiveValue = 250
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 60
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 60
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
            ActiveValue = 60
        Else
        'If previously checked then:
            mnuLibrarian.Checked = False
            RemoveValueFromGroup
            mnuEquipment.Visible = False
        'Disable Command Squad option
            mnuCommandSquad.Visible = False
            mnuOptions.Visible = False
        'Remove Psychic Hood and Force Weapon from group
            If mnuPsychicHood.Checked = True Then
                ActiveValue = 25
                RemoveValueFromGroup
            End If
            If mnuForceWeapon.Checked = True Then
                ActiveValue = 40
                RemoveValueFromGroup
            End If
            ActiveValue = 60
            mnuPsychicHood.Checked = False
            mnuForceWeapon.Checked = False
            mnuPsychicHood.Visible = False
            mnuForceWeapon.Visible = False

        'remove from squadmembers
            SquadMembers = SquadMembers - 1
                Select Case True
            Case mnuCommander.Checked
            Case mnuForceCommander.Checked
            Case mnuChaplain.Checked
            Case mnuLibrarian.Checked
            Case Else
            'Make equipment options unavailable
                mnuEquipment.Visible = False
                If mnuBoltPistol.Checked = True Then
                    mnuBoltPistol.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuChainfist.Checked = True Then
                    mnuChainfist.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuCloseCombatWeapon.Checked = True Then
                    mnuCloseCombatWeapon.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuForceWeapon.Checked = True Then
                    mnuForceWeapon.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
                If mnuLightningClaw.Checked = True Then
                    mnuLightningClaw.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuLightningClaws.Checked = True Then
                    mnuLightningClaws.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuPlasmaPistol.Checked = True Then
                    mnuPlasmaPistol.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPowerFist.Checked = True Then
                    mnuPowerFist.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuPowerWeapon.Checked = True Then
                    mnuPowerWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormShield.Checked = True Then
                    mnuStormShield.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuThunderHammer.Checked = True Then
                    mnuThunderHammer.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup
                End If
                If mnuBolter.Checked = True Then
                    mnuBolter.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBolterFlamer.Checked = True Then
                    mnuBolterFlamer.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterGrenadeLauncher.Checked = True Then
                    mnuBolterGrenadeLauncher.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuBolterPlasmagun.Checked = True Then
                    mnuBolterPlasmagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuBolterMeltagun.Checked = True Then
                    mnuBolterMeltagun.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuStormBolter.Checked = True Then
                    mnuStormBolter.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuArtificerArmor.Checked = True Then
                    mnuArtificerArmor.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuAuspex.Checked = True Then
                    mnuAuspex.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuBionics.Checked = True Then
                    mnuBionics.Checked = False
                    ActiveValue = 10
                    RemoveValueFromGroup
                End If
                If mnuFragGrenades.Checked = True Then
                    mnuFragGrenades.Checked = False
                    ActiveValue = 1
                    RemoveValueFromGroup
                End If
                If mnuIronHalo.Checked = True Then
                    mnuIronHalo.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuJumpPack.Checked = True Then
                    mnuJumpPack.Checked = False
                    ActiveValue = 20
                    RemoveValueFromGroup
                End If
                If mnuKrakGrenades.Checked = True Then
                    mnuKrakGrenades.Checked = False
                    ActiveValue = 2
                    RemoveValueFromGroup
                End If
                If mnuMasterCraftedWeapon.Checked = True Then
                    mnuMasterCraftedWeapon.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuMeltaBombs.Checked = True Then
                    mnuMeltaBombs.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuPuritySeals.Checked = True Then
                    mnuPuritySeals.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuSpaceMarineBike.Checked = True Then
                    mnuSpaceMarineBike.Checked = False
                    ActiveValue = 35
                    RemoveValueFromGroup
                End If
                If mnuTeleportHomer.Checked = True Then
                    mnuTeleportHomer.Checked = False
                    ActiveValue = 5
                    RemoveValueFromGroup
                End If
                If mnuTerminatorArmor.Checked = True Then
                    mnuTerminatorArmor.Checked = False
                    ActiveValue = 25
                    TerminatorMembers = TerminatorMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonors.Checked = True Then
                    mnuTerminatorHonors.Checked = False
                    ActiveValue = 15
                    RemoveValueFromGroup
                End If
                If mnuPsychicHood.Checked = True Then
                    mnuPsychicHood.Checked = False
                    ActiveValue = 25
                    RemoveValueFromGroup
                End If
                If mnuHolyRelic.Checked = True Then
                    mnuHolyRelic.Checked = False
                    ActiveValue = 40
                    RemoveValueFromGroup
                End If
            'Make squad options unavailable
                mnuOptions.Visible = False
                ActiveGroup = 6
                If mnuKrakGrenadesSquad.Checked = True Then
                    mnuKrakGrenadesSquad.Checked = False
                    ActiveValue = 2 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 2
                    End If
                    RemoveValueFromGroup
                End If
                If mnuFragGrenadesSquad.Checked = True Then
                    mnuFragGrenadesSquad.Checked = False
                    ActiveValue = 1 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 1
                    End If
                    RemoveValueFromGroup
                End If
                If mnuTerminatorHonorsSquad.Checked = True Then
                    mnuTerminatorHonorsSquad.Checked = False
                    ActiveValue = 10 * SquadMembers
                '- characters
                    If mnuLeader.Checked = True Or mnuCommander.Checked = True Or mnuForceCommander.Checked = True Or mnuLibrarian.Checked = True Or mnuChaplain.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuVeteranSergeant.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuApothecary.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuStandardBearer.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    If mnuTechMarine.Checked = True Then
                        ActiveValue = ActiveValue - 10
                    End If
                    RemoveValueFromGroup
                End If


                If mnuMissileLauncher1.Checked = True Then
                    mnuMissileLauncher1.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher1.Visible = True
                If mnuMissileLauncher2.Checked = True Then
                    mnuMissileLauncher2.Checked = False
                    ActiveValue = 20
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuMissileLauncher2.Visible = True
                If mnuHeavyBolter1.Checked = True Then
                    mnuHeavyBolter1.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter1.Visible = True
                If mnuHeavyBolter2.Checked = True Then
                    mnuHeavyBolter2.Checked = False
                    ActiveValue = 15
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuHeavyBolter2.Visible = True
                If mnuLasCannon1.Checked = True Then
                    mnuLasCannon1.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon1.Visible = True
                If mnuLasCannon2.Checked = True Then
                    mnuLasCannon2.Checked = False
                    ActiveValue = 35
                    ActiveGroup = 8
                    RemoveValueFromGroup
                End If
                mnuLasCannon2.Visible = True
                If mnuFlamer1.Checked = True Then
                    mnuFlamer1.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer1.Visible = True
                If mnuFlamer2.Checked = True Then
                    mnuFlamer2.Checked = False
                    ActiveValue = 3
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuFlamer2.Visible = True
                If mnuPlasmaGun1.Checked = True Then
                    mnuPlasmaGun1.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun1.Visible = True
                If mnuPlasmaGun2.Checked = True Then
                    mnuPlasmaGun2.Checked = False
                    ActiveValue = 6
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuPlasmaGun2.Visible = True
                If mnuMeltagun1.Checked = True Then
                    mnuMeltagun1.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun1.Visible = True
                If mnuMeltagun2.Checked = True Then
                    mnuMeltagun2.Checked = False
                    ActiveValue = 10
                    ActiveGroup = 7
                    RemoveValueFromGroup
                End If
                mnuMeltagun2.Visible = True
                
                
            'Make Command Squad unavailable
                mnuCommandSquad.Visible = False
                ActiveGroup = 2
                If mnuVeteranSergeant.Checked = True Or mnuSergeant.Checked = True Then
                    If mnuVeteranSergeant.Checked = True Then
                        mnuVeteranSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuSergeant.Checked = True Then
                        mnuSergeant.Checked = False
                        ActiveValue = 18
                        RemoveValueFromGroup
                    End If
                               
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipmentSergeant.Visible = False
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                If mnuApothecary.Checked = True Then
                    mnuApothecary.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 3
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolApothecary.Checked = True Then
                        mnuBoltPistolApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponApothecary.Checked = True Then
                        mnuCloseCombatWeaponApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawApothecary.Checked = True Then
                        mnuLightningClawApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsApothecary.Checked = True Then
                        mnuLightningClawsApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolApothecary.Checked = True Then
                        mnuPlasmaPistolApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistApothecary.Checked = True Then
                        mnuPowerFistApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponApothecary.Checked = True Then
                        mnuPowerWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldApothecary.Checked = True Then
                        mnuStormShieldApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerApothecary.Checked = True Then
                        mnuThunderHammerApothecary.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerApothecary.Checked = True Then
                        mnuBolterFlamerApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherApothecary.Checked = True Then
                        mnuBolterGrenadeLauncherApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunApothecary.Checked = True Then
                        mnuBolterPlasmagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunApothecary.Checked = True Then
                        mnuBolterMeltagunApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterApothecary.Checked = True Then
                        mnuStormBolterApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexApothecary.Checked = True Then
                        mnuAuspexApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsApothecary.Checked = True Then
                        mnuBionicsApothecary.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesApothecary.Checked = True Then
                        mnuFragGrenadesApothecary.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloApothecary.Checked = True Then
                        mnuIronHaloApothecary.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesApothecary.Checked = True Then
                        mnuKrakGrenadesApothecary.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponApothecary.Checked = True Then
                        mnuMasterCraftedWeaponApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsApothecary.Checked = True Then
                        mnuMeltaBombsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsApothecary.Checked = True Then
                        mnuPuritySealsApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerApothecary.Checked = True Then
                        mnuTeleportHomerApothecary.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsApothecary.Checked = True Then
                        mnuTerminatorHonorsApothecary.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                If mnuStandardBearer.Checked = True Then
                    mnuStandardBearer.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 4
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
                End If
                If mnuTechMarine.Checked = True Then
                    mnuTechMarine.Checked = False
                    ActiveValue = 18
                    ActiveGroup = 5
                    RemoveValueFromGroup
                'Clear Equipment and items
                'Make equipment options unavailable
                    mnuEquipment.Visible = False
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                End If
                
                ActiveGroup = 6
                If mnuSMBodyGuard1.Checked = True Then
                    mnuSMBodyGuard1.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard2.Checked = True Then
                    mnuSMBodyGuard2.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard3.Checked = True Then
                    mnuSMBodyGuard3.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard4.Checked = True Then
                    mnuSMBodyGuard4.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard5.Checked = True Then
                    mnuSMBodyGuard5.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
                If mnuSMBodyGuard6.Checked = True Then
                    mnuSMBodyGuard6.Checked = False
                    ActiveValue = 18
                    SquadMembers = SquadMembers - 1
                    RemoveValueFromGroup
                End If
        End Select


mnuTransport.Visible = False
        'Unchecked any selected vehicle
        If mnuRhino.Checked = True Then
            mnuRhino.Checked = False
            ActiveValue = 50
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuLandRaider.Checked = True Then
            mnuLandRaider.Checked = False
            ActiveValue = 250
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
        If mnuRazorback.Checked = True Then
            mnuRazorback.Checked = False
            ActiveValue = 70
            ActiveGroup = 9
            RemoveValueFromGroup
        End If
                
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        
            
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuRhino.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub

Private Sub mnuLightningClaw_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClaw.Checked = False Then
        mnuLightningClaw.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClaw.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuBolter.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClaw.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuBolter.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClawApothecary_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawApothecary.Checked = False Then
        mnuLightningClawApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClaws_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClaws.Checked = False Then
        If mnuLightningClaws.Checked = False And mnuBolter.Checked = False And mnuBolterFlamer.Checked = False And mnuBolterGrenadeLauncher.Checked = False And mnuBolterPlasmagun.Checked = False And mnuBolterMeltagun.Checked = False And mnuStormBolter.Checked = False And mnuBoltPistol.Checked = False And mnuChainfist.Checked = False And mnuCloseCombatWeapon.Checked = False And mnuForceWeapon.Checked = False And mnuLightningClaw.Checked = False And mnuPowerFist.Checked = False And mnuPlasmaPistol.Checked = False And mnuPowerWeapon.Checked = False And mnuStormShield.Checked = False And mnuThunderHammer.Checked = False Then
            mnuLightningClaws.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClaws.Checked = False
    
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuBolter.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuLightningClawsApothecary_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsApothecary.Checked = False Then
        If mnuLightningClawsApothecary.Checked = False And mnuBolterFlamerApothecary.Checked = False And mnuBolterGrenadeLauncherApothecary.Checked = False And mnuBolterPlasmagunApothecary.Checked = False And mnuBolterMeltagunApothecary.Checked = False And mnuStormBolterApothecary.Checked = False And mnuBoltPistolApothecary.Checked = False And mnuCloseCombatWeaponApothecary.Checked = False And mnuLightningClawApothecary.Checked = False And mnuPowerFistApothecary.Checked = False And mnuPlasmaPistolApothecary.Checked = False And mnuPowerWeaponApothecary.Checked = False And mnuStormShieldApothecary.Checked = False And mnuThunderHammerApothecary.Checked = False Then
            mnuLightningClawsApothecary.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsApothecary.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClawSergeant_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawSergeant.Checked = False Then
        mnuLightningClawSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClawsSergeant_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsSergeant.Checked = False Then
        If mnuLightningClawsSergeant.Checked = False And mnuBolterFlamerSergeant.Checked = False And mnuBolterGrenadeLauncherSergeant.Checked = False And mnuBolterPlasmagunSergeant.Checked = False And mnuBolterMeltagunSergeant.Checked = False And mnuStormBolterSergeant.Checked = False And mnuBoltPistolSergeant.Checked = False And mnuCloseCombatWeaponSergeant.Checked = False And mnuLightningClawSergeant.Checked = False And mnuPowerFistSergeant.Checked = False And mnuPlasmaPistolSergeant.Checked = False And mnuPowerWeaponSergeant.Checked = False And mnuStormShieldSergeant.Checked = False And mnuThunderHammerSergeant.Checked = False Then
            mnuLightningClawsSergeant.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsSergeant.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClawsStandardBearer_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsstandardbeareChecked = False Then
        If mnuLightningClawsstandardbeareChecked = False And mnuBolterFlamerstandardbearerChecked = False And mnuBolterGrenadeLauncherstandardbearerChecked = False And mnuBolterPlasmagunstandardbearerChecked = False And mnuBolterMeltagunstandardbearerChecked = False And mnuStormBolterstandardbearerChecked = False And mnuBoltPistolstandardbearerChecked = False And mnuCloseCombatWeaponstandardbearerChecked = False And mnuLightningClawstandardbearerChecked = False And mnuPowerFiststandardbearerChecked = False And mnuPlasmaPistolstandardbearerChecked = False And mnuPowerWeaponstandardbearerChecked = False And mnuStormShieldstandardbearerChecked = False And mnuThunderHammerstandardbearerChecked = False Then
            mnuLightningClawsstandardbeareChecked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerstandardbearerChecked = False Then
                mnuBolterFlamerstandardbearerVisible = False
            End If
            If mnuBolterGrenadeLauncherstandardbearerChecked = False Then
                mnuBolterGrenadeLauncherstandardbearerVisible = False
            End If
            If mnuBolterMeltagunstandardbearerChecked = False Then
                mnuBolterMeltagunstandardbearerVisible = False
            End If
            If mnuBolterPlasmagunstandardbearerChecked = False Then
                mnuBolterPlasmagunstandardbearerVisible = False
            End If
            If mnuStormBolterstandardbearerChecked = False Then
                mnuStormBolterstandardbearerVisible = False
            End If
            If mnuBoltPistolstandardbearerChecked = False Then
                mnuBoltPistolstandardbearerVisible = False
            End If
            If mnuCloseCombatWeaponstandardbearerChecked = False Then
                mnuCloseCombatWeaponstandardbearerVisible = False
            End If
            If mnuLightningClawstandardbearerChecked = False Then
                mnuLightningClawstandardbearerVisible = False
            End If
            If mnuPlasmaPistolstandardbearerChecked = False Then
                mnuPlasmaPistolstandardbearerVisible = False
            End If
            If mnuPowerFiststandardbearerChecked = False Then
                mnuPowerFiststandardbearerVisible = False
            End If
            If mnuPowerWeaponstandardbearerChecked = False Then
                mnuPowerWeaponstandardbearerVisible = False
            End If
            If mnuStormShieldstandardbearerChecked = False Then
                mnuStormShieldstandardbearerVisible = False
            End If
            If mnuThunderHammerstandardbearerChecked = False Then
                mnuThunderHammerstandardbearerVisible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsstandardbeareChecked = False
    
    'Make other weapons available
        mnuBolterFlamerstandardbearerVisible = True
        mnuBolterGrenadeLauncherstandardbearerVisible = True
        mnuBolterMeltagunstandardbearerVisible = True
        mnuBolterPlasmagunstandardbearerVisible = True
        mnuStormBolterstandardbearerVisible = True
        mnuBoltPistolstandardbearerVisible = True
        mnuCloseCombatWeaponstandardbearerVisible = True
        mnuLightningClawstandardbearerVisible = True
        mnuPlasmaPistolstandardbearerVisible = True
        mnuPowerFiststandardbearerVisible = True
        mnuPowerWeaponstandardbearerVisible = True
        mnuStormShieldstandardbearerVisible = True
        mnuThunderHammerstandardbearerVisible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuLightningClawStandardBearer_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawStandardBearer.Checked = False Then
        mnuLightningClawStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuLightningClawsTechMarine_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawsTechMarine.Checked = False Then
        If mnuLightningClawsTechMarine.Checked = False And And mnuBolterFlamerTechMarine.Checked = False And mnuBolterGrenadeLauncherTechMarine.Checked = False And mnuBolterPlasmagunTechMarine.Checked = False And mnuBolterMeltagunTechMarine.Checked = False And mnuStormBolterTechMarine.Checked = False And mnuBoltPistolTechMarine.Checked = False And mnuCloseCombatWeaponTechMarine.Checked = False And mnuLightningClawTechMarine.Checked = False And mnuPowerFistTechMarine.Checked = False And mnuPlasmaPistolTechMarine.Checked = False And mnuPowerWeaponTechMarine.Checked = False And mnuStormShieldTechMarine.Checked = False And mnuThunderHammerTechMarine.Checked = False Then
            mnuLightningClawsTechMarine.Checked = True
        'add value
            AddValueToGroup
        'LightningClaws takes up both hands, so no other weapons are available after selection
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuLightningClawsTechMarine.Checked = False
    
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuLightningClawTechMarine_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuLightningClawTechMarine.Checked = False Then
        mnuLightningClawTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuLightningClawTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuLightningClawTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMasterCraftedWeapon_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeapon.Checked = False Then
        mnuMasterCraftedWeapon.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeapon.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMasterCraftedWeaponApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponApothecary.Checked = False Then
        mnuMasterCraftedWeaponApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMasterCraftedWeaponSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponSergeant.Checked = False Then
        mnuMasterCraftedWeaponSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMasterCraftedWeaponStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponStandardBearer.Checked = False Then
        mnuMasterCraftedWeaponStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMasterCraftedWeaponTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMasterCraftedWeaponTechMarine.Checked = False Then
        mnuMasterCraftedWeaponTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMasterCraftedWeaponTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMeltaBombs_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltaBombs.Checked = False Then
        mnuMeltaBombs.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMeltaBombs.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMeltaBombsApothecary_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltaBombsApothecary.Checked = False Then
        mnuMeltaBombsApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMeltaBombsApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMeltaBombsSergeant_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltaBombsSergeant.Checked = False Then
        mnuMeltaBombsSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMeltaBombsSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMeltaBombsStandardBearer_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltaBombsStandardBearer.Checked = False Then
        mnuMeltaBombsStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMeltaBombsStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMeltaBombsTechMarine_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltaBombsTechMarine.Checked = False Then
        mnuMeltaBombsTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuMeltaBombsTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuMeltagun1_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltagun1.Checked = False Then
        mnuMeltagun1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuMeltagun1.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuPlasma1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuMeltagun1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMeltagun2_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMeltagun2.Checked = False Then
        mnuMeltagun2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuMeltagun2.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuMeltagun2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMissileLauncher1_Click()
'Initialize variables
    ActiveValue = 20
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMissileLauncher1.Checked = False Then
        mnuMissileLauncher1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuMissileLauncher1.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuMissileLauncher1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuMissileLauncher2_Click()
'Initialize variables
    ActiveValue = 20
    ActiveGroup = 8
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuMissileLauncher2.Checked = False Then
        mnuMissileLauncher2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuMissileLauncher2.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuMissileLauncher2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuNartheciumApothecary_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuNartheciumApothecary.Checked = False Then
        mnuNartheciumApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuNartheciumApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPintleMountedStormBolter_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPintleMountedStormBolter.Checked = False Then
        mnuPintleMountedStormBolter.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuPintleMountedStormBolter.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPlasmagun1_Click()
'Initialize variables
    ActiveValue = 6
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaGun1.Checked = False Then
        mnuPlasmaGun1.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuPlasmaGun1.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun2.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun2.Checked = False Then
                mnuPlasmaGun2.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuPlasmaGun1.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPlasmaGun2_Click()
'Initialize variables
    ActiveValue = 6
    ActiveGroup = 7
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaGun2.Checked = False Then
        mnuPlasmaGun2.Checked = True
    'add value
        AddValueToGroup
    'User is only able to pick two weapons for squad
        If mnuPlasmaGun2.Checked = True And mnuFlamer1.Checked = True Or mnuFlamer2.Checked = True Or mnuPlasmaGun1.Checked = True Or mnuMeltagun1.Checked = True Or mnuMeltagun2.Checked = True Or mnuHeavyBolter1.Checked = True Or mnuHeavyBolter2.Checked = True Or mnuMissileLauncher1.Checked = True Or mnuMissileLauncher2.Checked = True Or mnuLasCannon1.Checked = True Or mnuLasCannon2.Checked = True Then
            If mnuFlamer1.Checked = False Then
                mnuFlamer1.Visible = False
            End If
            If mnuFlamer2.Checked = False Then
                mnuFlamer2.Visible = False
            End If
            If mnuPlasmaGun1.Checked = False Then
                mnuPlasmaGun1.Visible = False
            End If
            If mnuMeltagun1.Checked = False Then
                mnuMeltagun1.Visible = False
            End If
            If mnuMeltagun2.Checked = False Then
                mnuMeltagun2.Visible = False
            End If
            If mnuHeavyBolter1.Checked = False Then
                mnuHeavyBolter1.Visible = False
            End If
            If mnuHeavyBolter2.Checked = False Then
                mnuHeavyBolter2.Visible = False
            End If
            If mnuMissileLauncher1.Checked = False Then
                mnuMissileLauncher1.Visible = False
            End If
            If mnuMissileLauncher2.Checked = False Then
                mnuMissileLauncher2.Visible = False
            End If
            If mnuLasCannon1.Checked = False Then
                mnuLasCannon1.Visible = False
            End If
            If mnuLasCannon2.Checked = False Then
                mnuLasCannon2.Visible = False
            End If
        End If
    Else
    'If previously checked then uncheck
        mnuPlasmaGun2.Checked = False
    'Make other weapons available
        mnuMissileLauncher1.Visible = True
        mnuMissileLauncher2.Visible = True
        mnuHeavyBolter1.Visible = True
        mnuHeavyBolter2.Visible = True
        mnuLasCannon1.Visible = True
        mnuLasCannon2.Visible = True
        mnuFlamer1.Visible = True
        mnuFlamer2.Visible = True
        mnuMeltagun1.Visible = True
        mnuMeltagun2.Visible = True
        mnuPlasmaGun1.Visible = True
        mnuPlasmaGun2.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuPlasmaPistol_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaPistol.Checked = False Then
        mnuPlasmaPistol.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPlasmaPistol.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuBolter.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPlasmaPistol.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuBolter.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuPlasmaPistolApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaPistolApothecary.Checked = False Then
        mnuPlasmaPistolApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPlasmaPistolApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerplasmapistol.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherplasmapistol.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunplasmapistol.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunplasmapistol.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterplasmapistol.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolplasmapistol.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponplasmapistol.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawplasmapistol.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsplasmapistol.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistplasmapistol.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponplasmapistol.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldplasmapistol.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerplasmapistol.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPlasmaPistolApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerplasmapistol.Visible = True
        mnuBolterGrenadeLauncherplasmapistol.Visible = True
        mnuBolterMeltagunplasmapistol.Visible = True
        mnuBolterPlasmagunplasmapistol.Visible = True
        mnuStormBolterplasmapistol.Visible = True
        mnuBoltPistolplasmapistol.Visible = True
        mnuChainfistplasmapistol.Visible = True
        mnuCloseCombatWeaponplasmapistol.Visible = True
        mnuForceWeaponplasmapistol.Visible = True
        mnuLightningClawplasmapistol.Visible = True
        mnuLightningClawsplasmapistol.Visible = True
        mnuBolterplasmapistol.Visible = True
        mnuPowerFistplasmapistol.Visible = True
        mnuPowerWeaponplasmapistol.Visible = True
        mnuStormShieldplasmapistol.Visible = True
        mnuThunderHammerplasmapistol.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPlasmaPistolSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaPistolSergeant.Checked = False Then
        mnuPlasmaPistolSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPlasmaPistolSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPlasmaPistolSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPlasmaPistolStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaPistolStandardBearer.Checked = False Then
        mnuPlasmaPistolStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPlasmaPistolStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPlasmaPistolStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPlasmaPistolTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPlasmaPistolTechMarine.Checked = False Then
        mnuPlasmaPistolTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPlasmaPistolTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPlasmaPistolTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerFist_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFist.Checked = False Then
        mnuPowerFist.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFist.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuBolter.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFist.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuBolter.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuPowerFistApothecary_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFistApothecary.Checked = False Then
        mnuPowerFistApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFistApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFistApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerFistSergeant_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFistSergeant.Checked = False Then
        mnuPowerFistSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFistSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFistSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerFistStandardBearer_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFistStandardBearer.Checked = False Then
        mnuPowerFistStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFistStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFistStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerFistTechMarine_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerFistTechMarine.Checked = False Then
        mnuPowerFistTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerFistTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerFistTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerWeapon_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerWeapon.Checked = False Then
        mnuPowerWeapon.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerWeapon.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuBolter.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerWeapon.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuBolter.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuPowerWeaponApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerWeaponApothecary.Checked = False Then
        mnuPowerWeaponApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerWeaponApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerWeaponApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerWeaponSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerWeaponSergeant.Checked = False Then
        mnuPowerWeaponSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerWeaponSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerWeaponSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        
        mnuStormShieldSergeant.Visible = True
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerWeaponStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerWeaponStandardBearer.Checked = False Then
        mnuPowerWeaponStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerWeaponStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerWeaponStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        
        mnuStormShieldStandardBearer.Visible = True
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPowerWeaponTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPowerWeaponTechMarine.Checked = False Then
        mnuPowerWeaponTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuPowerWeaponTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuPowerWeaponTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPsychicHood_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPsychicHood.Checked = False And mnuLibrarian.Checked = True Then
        mnuPsychicHood.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPsychicHood.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
    
End Sub

Private Sub mnuPuritySeals_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPuritySeals.Checked = False Then
        mnuPuritySeals.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPuritySeals.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuPuritySealsApothecary_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPuritySealsApothecary.Checked = False Then
        mnuPuritySealsApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPuritySealsApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPuritySealsSergeant_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPuritySealsSergeant.Checked = False Then
        mnuPuritySealsSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPuritySealsSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPuritySealsStandardBearer_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPuritySealsStandardBearer.Checked = False Then
        mnuPuritySealsStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPuritySealsStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuPuritySealsTechMarine_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuPuritySealsTechMarine.Checked = False Then
        mnuPuritySealsTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuPuritySealsTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuRazorback_Click()
'Initialize variables
    ActiveValue = 70
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRazorback.Checked = False Then
        mnuRazorback.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers > 6 Or TerminatorMembers <> 0 Then
            mnuRazorback.Checked = False
            MsgBox "Too many members in squad", , "Obstruction"
        Else
        'add value
            AddValueToGroup
        'Make vehicle upgrades available
            mnuVehicleUpgrades.Visible = True
        'Unchecked any other selected vehicle
            If mnuRhino.Checked = True Then
                ActiveValue = 50
                RemoveValueFromGroup
            End If
            If mnuLandRaider.Checked = True Then
                ActiveValue = 250
                RemoveValueFromGroup
            End If
            ActiveValue = 250
            mnuRhino.Checked = False
            mnuLandRaider.Checked = False
        End If
    Else
    'If previously checked then uncheck
        mnuRazorback.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 70
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuReductorApothecary_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuReductorApothecary.Checked = False Then
        mnuReductorApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuReductorApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuRhino_Click()
'Initialize variables
    ActiveValue = 50
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuRhino.Checked = False Then
        mnuRhino.Checked = True
    'Run check for number of marines in tank max 10, NO terminators
        If SquadMembers > 10 Or TerminatorMembers <> 0 Then
            mnuRhino.Checked = False
            MsgBox "Too Many members in squad", , "Obrstruction"
        Else
        'add value
            AddValueToGroup
        'Make transport options available
            mnuVehicleUpgrades.Visible = True
        'Unchecked any other selected vehicle
            If mnuLandRaider.Checked = True Then
                ActiveValue = 250
                RemoveValueFromGroup
            End If
            If mnuRazorback.Checked = True Then
                ActiveValue = 70
                RemoveValueFromGroup
            End If
            ActiveValue = 250
            mnuLandRaider.Checked = False
            mnuRazorback.Checked = False
        End If
    
    Else
    'If previously checked then uncheck
        mnuRhino.Checked = False
    
    'remove value
        RemoveValueFromGroup
    'Make transport options unavailable
        mnuVehicleUpgrades.Visible = False
        If mnuDozerBlades.Checked = True Then
            mnuDozerBlades.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuExtraArmor.Checked = True Then
            mnuExtraArmor.Checked = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuHunterKillerMissile.Checked = True Then
            mnuHunterKillerMissile.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuPintleMountedStormBolter.Checked = True Then
            mnuPintleMountedStormBolter.Checked = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuSearchlight.Checked = True Then
            mnuSearchlight.Checked = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuSmokeLaunchers.Checked = True Then
            mnuSmokeLaunchers.Checked = False
            ActiveValue = 3
            RemoveValueFromGroup
        End If
        ActiveValue = 50
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuSacredStandardStandardBearer_Click()
'Initialize variables
    ActiveValue = 20
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSacredStandardStandardBearer.Checked = False Then
        mnuSacredStandardStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuSacredStandardStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuSearchlight_Click()
'Initialize variables
    ActiveValue = 1
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSearchlight.Checked = False Then
        mnuSearchlight.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSearchlight.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuSergeant_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 2
    ActiveValue = 18
'Routines
    'If previously unchecked then:
        If mnuSergeant.Checked = False Then
            mnuSergeant.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                If mnuVeteranSergeant.Checked = True Then
                    mnuVeteranSergeant.Checked = False
                    ActiveValue = 30
                    RemoveValueFromGroup

                End If
                ActiveValue = 18
                mnuEquipmentSergeant.Visible = True
                SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than  terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveGroup = 9
                    ActiveValue = 250
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
       
        Else
    'If previously checked then:
            mnuSergeant.Checked = False
            RemoveValueFromGroup
            mnuEquipmentSergeant.Visible = False
            SquadMembers = SquadMembers - 1
        
                'Clear Equipment and items
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 0
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 0
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuTransport.Visible = True
                mnuTransport.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
                mnuTransport.Visible = True
            End If
        'Enable Land Raider if there are less than  terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
                mnuTransport.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ
End Sub

Private Sub mnuServoArmTechMarine_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuServoArmTechMarine.Checked = False Then
        mnuServoArmTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuServoArmTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuSignumTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSignumTechMarine.Checked = False Then
        mnuSignumTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuSignumTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard1_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1
'If previously unchecked then check
    If mnuSMBodyGuard1.Checked = False Then
        mnuSMBodyGuard1.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than  terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
    ActiveValue = 18
        
    Else
    'If previously checked then uncheck
        mnuSMBodyGuard1.Checked = False
    'remove value
        RemoveValueFromGroup
    'remove member from squad
        SquadMembers = SquadMembers - 1
    'Enable Rhino if there are less than or 10 squad members
        If SquadMembers <= 10 Then
            mnuTransport.Visible = True
        End If
    'Enable Razorback if there are less than or 6 squad members
        If SquadMembers <= 6 Then
            mnuRazorback.Visible = True
        End If
    'Enable Land Raider if there are less than  terminators
        If TerminatorMembers <= 5 Then
            mnuLandRaider.Visible = True
        End If
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard2_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSMBodyGuard2.Checked = False Then
        mnuSMBodyGuard2.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than  terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
 
    ActiveValue = 18
    Else
    'If previously checked then uncheck
    mnuSMBodyGuard2.Checked = False
    'remove value
    RemoveValueFromGroup
    'remove member from squad
    SquadMembers = SquadMembers - 1
    'Enable Rhino if there are less than or 10 squad members
        If SquadMembers <= 10 Then
            mnuTransport.Visible = True
        End If
    'Enable Razorback if there are less than or 6 squad members
        If SquadMembers <= 6 Then
            mnuRazorback.Visible = True
        End If
    'Enable Land Raider if there are less than  terminators
        If TerminatorMembers <= 5 Then
            mnuLandRaider.Visible = True
        End If
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard3_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSMBodyGuard3.Checked = False Then
        mnuSMBodyGuard3.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than  terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
     ActiveValue = 18
    
    Else
    'If previously checked then uncheck
        mnuSMBodyGuard3.Checked = False
    'remove value
        RemoveValueFromGroup
    'remove member from squad
        SquadMembers = SquadMembers - 1
    'Enable Rhino if there are less than or 10 squad members
        If SquadMembers <= 10 Then
            mnuTransport.Visible = True
        End If
    'Enable Razorback if there are less than or 6 squad members
        If SquadMembers <= 6 Then
            mnuRazorback.Visible = True
        End If
    'Enable Land Raider if there are less than  terminators
        If TerminatorMembers <= 5 Then
            mnuLandRaider.Visible = True
        End If
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard4_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSMBodyGuard4.Checked = False Then
        mnuSMBodyGuard4.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more  terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
     ActiveValue = 18
   Else
    'If previously checked then uncheck
        mnuSMBodyGuard4.Checked = False
    'remove value
        RemoveValueFromGroup
    'remove member from squad
        SquadMembers = SquadMembers - 1
'Enable Rhino if there are less than or 10 squad members
    If SquadMembers <= 10 Then
        mnuTransport.Visible = True
    End If
'Enable Razorback if there are less than or 6 squad members
    If SquadMembers <= 6 Then
        mnuRazorback.Visible = True
    End If
'Enable Land Raider if there are less than  terminators
    If TerminatorMembers <= 5 Then
        mnuLandRaider.Visible = True
    End If
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard5_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSMBodyGuard5.Checked = False Then
        mnuSMBodyGuard5.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
     ActiveValue = 18
   Else
    'If previously checked then uncheck
        mnuSMBodyGuard5.Checked = False
    'remove value
        RemoveValueFromGroup
    'remove member from squad
        SquadMembers = SquadMembers - 1
'Enable Rhino if there are less than or 10 squad members
    If SquadMembers <= 10 Then
        mnuTransport.Visible = True
    End If
'Enable Razorback if there are less than or 6 squad members
    If SquadMembers <= 6 Then
        mnuRazorback.Visible = True
    End If
'Enable Land Raider if there are less than  terminators
    If TerminatorMembers <= 5 Then
        mnuLandRaider.Visible = True
    End If
    End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuSMBodyGuard6_Click()
'Initialize variables
    ActiveValue = 18
    ActiveGroup = 6
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSMBodyGuard6.Checked = False Then
        mnuSMBodyGuard6.Checked = True
    'add value
        AddValueToGroup
    'add member to squad
        SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
     ActiveValue = 18
    Else
    'If previously checked then uncheck
        mnuSMBodyGuard6.Checked = False
    'remove value
        RemoveValueFromGroup
    'remove member from squad
        SquadMembers = SquadMembers - 1
    'Enable Rhino if there are less than or 10 squad members
        If SquadMembers <= 10 Then
           mnuTransport.Visible = True
        End If
    'Enable Razorback if there are less than or 6 squad members
        If SquadMembers <= 6 Then
            mnuRazorback.Visible = True
        End If
    'Enable Land Raider if there are less than  terminators
        If TerminatorMembers <= 5 Then
            mnuLandRaider.Visible = True
        End If
    End If
'Display Squad
    DisplayHQ
End Sub





Private Sub mnuSmokeLaunchers_Click()
'Initialize variables
    ActiveValue = 3
    ActiveGroup = 9
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSmokeLaunchers.Checked = False Then
        mnuSmokeLaunchers.Checked = True
    'add value
        AddValueToGroup
        
    Else
    'If previously checked then uncheck
        mnuSmokeLaunchers.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuSpaceMarineBike_Click()
'Initialize variables
    ActiveValue = 35
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuSpaceMarineBike.Checked = False Then
        mnuSpaceMarineBike.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuSpaceMarineBike.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStandardBearer_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 4
    ActiveValue = 18
'Routines
    'If previously unchecked then:
        If mnuStandardBearer.Checked = False Then
            mnuStandardBearer.Checked = True
            AddValueToGroup
            mnuEquipmentStandardBearer.Visible = True
            SquadMembers = SquadMembers + 1
        'Enable Holy Relic for standard bearer if chaplain doesn't have it
            If mnuHolyRelic.Checked = True Then
              mnuHolyRelicStandardBearer.Visible = False
            End If
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
      
      Else
    'If previously checked then:
            mnuStandardBearer.Checked = False
            RemoveValueFromGroup
            mnuEquipmentStandardBearer.Visible = False
            SquadMembers = SquadMembers - 1
        
                'Clear Equipment and Items
                    If mnuBoltPistolStandardBearer.Checked = True Then
                        mnuBoltPistolStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponStandardBearer.Checked = True Then
                        mnuCloseCombatWeaponStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawStandardBearer.Checked = True Then
                        mnuLightningClawStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsStandardBearer.Checked = True Then
                        mnuLightningClawsStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolStandardBearer.Checked = True Then
                        mnuPlasmaPistolStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistStandardBearer.Checked = True Then
                        mnuPowerFistStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponStandardBearer.Checked = True Then
                        mnuPowerWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldStandardBearer.Checked = True Then
                        mnuStormShieldStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerStandardBearer.Checked = True Then
                        mnuThunderHammerStandardBearer.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerStandardBearer.Checked = True Then
                        mnuBolterFlamerStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherStandardBearer.Checked = True Then
                        mnuBolterGrenadeLauncherStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunStandardBearer.Checked = True Then
                        mnuBolterPlasmagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunStandardBearer.Checked = True Then
                        mnuBolterMeltagunStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterStandardBearer.Checked = True Then
                        mnuStormBolterStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexStandardBearer.Checked = True Then
                        mnuAuspexStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsStandardBearer.Checked = True Then
                        mnuBionicsStandardBearer.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesStandardBearer.Checked = True Then
                        mnuFragGrenadesStandardBearer.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloStandardBearer.Checked = True Then
                        mnuIronHaloStandardBearer.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesStandardBearer.Checked = True Then
                        mnuKrakGrenadesStandardBearer.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponStandardBearer.Checked = True Then
                        mnuMasterCraftedWeaponStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsStandardBearer.Checked = True Then
                        mnuMeltaBombsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsStandardBearer.Checked = True Then
                        mnuPuritySealsStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerStandardBearer.Checked = True Then
                        mnuTeleportHomerStandardBearer.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsStandardBearer.Checked = True Then
                        mnuTerminatorHonorsStandardBearer.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuHolyRelicStandardBearer.Checked = True Then
                        mnuHolyRelicStandardBearer.Checked = False
                        ActiveValue = 40
                        RemoveValueFromGroup
                    End If
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
               mnuTransport.Visible = True
               mnuTransport.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
                mnuTransport.Visible = True
            End If
        'Enable Land Raider if there are less than  terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
                mnuTransport.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ

End Sub

Private Sub mnuStormBolter_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormBolter.Checked = False Then
        mnuStormBolter.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormBolter.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormBolter.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormBolterApothecary_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormBolterApothecary.Checked = False Then
        mnuStormBolterApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormBolterApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormBolterApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormBolterSergeant_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormBolterSergeant.Checked = False Then
        mnuStormBolterSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuStormBolterSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuStormBolterStandardBearer_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormBolterStandardBearer.Checked = False Then
        mnuStormBolterStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuStormBolterStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormBolterTechMarine_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormBolterTechMarine.Checked = False Then
        mnuStormBolterTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormBolterTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormBolterTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormShield_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShield.Checked = False Then
        mnuStormShield.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShield.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuBolter.Checked = True Or mnuThunderHammer.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
            If mnuThunderHammer.Checked = False Then
                mnuThunderHammer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShield.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuBolter.Visible = True
        mnuThunderHammer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuStormShieldApothecary_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldApothecary.Checked = False Then
        mnuStormShieldApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuThunderHammerApothecary.Checked = True Then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuThunderHammerApothecary.Checked = False Then
                mnuThunderHammerApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuThunderHammerApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormShieldSergeant_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldSergeant.Checked = False Then
        mnuStormShieldSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuThunderHammerSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuThunderHammerSergeant.Checked = False Then
                mnuThunderHammerSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        
        mnuThunderHammerSergeant.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormShieldStandardBearer_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldStandardBearer.Checked = False Then
        mnuStormShieldStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuThunderHammerStandardBearer.Checked = True Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuThunderHammerStandardBearer.Checked = False Then
                mnuThunderHammerStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        
        mnuThunderHammerStandardBearer.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuStormShieldTechMarine_Click()
'Initialize variables
    ActiveValue = 10
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuStormShieldTechMarine.Checked = False Then
        mnuStormShieldTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuStormShieldTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuThunderHammerTechMarine.Checked = True Then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuThunderHammerTechMarine.Checked = False Then
                mnuThunderHammerTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuStormShieldTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuThunderHammerTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTechMarine_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 5
    ActiveValue = 18
'Routines
    'If previously unchecked then:
        If mnuTechMarine.Checked = False Then
            mnuTechMarine.Checked = True
            AddValueToGroup
            mnuEquipmentTechMarine.Visible = True
            SquadMembers = SquadMembers + 1
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 18
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 18
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
        Else
    'If previously checked then:
            mnuTechMarine.Checked = False
            RemoveValueFromGroup
            mnuEquipmentTechMarine.Visible = False
            SquadMembers = SquadMembers - 1
        
                'Clear Equipment and items
                    If mnuBoltPistolTechMarine.Checked = True Then
                        mnuBoltPistolTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponTechMarine.Checked = True Then
                        mnuCloseCombatWeaponTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawTechMarine.Checked = True Then
                        mnuLightningClawTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsTechMarine.Checked = True Then
                        mnuLightningClawsTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolTechMarine.Checked = True Then
                        mnuPlasmaPistolTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistTechMarine.Checked = True Then
                        mnuPowerFistTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponTechMarine.Checked = True Then
                        mnuPowerWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldTechMarine.Checked = True Then
                        mnuStormShieldTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerTechMarine.Checked = True Then
                        mnuThunderHammerTechMarine.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerTechMarine.Checked = True Then
                        mnuBolterFlamerTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherTechMarine.Checked = True Then
                        mnuBolterGrenadeLauncherTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunTechMarine.Checked = True Then
                        mnuBolterPlasmagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunTechMarine.Checked = True Then
                        mnuBolterMeltagunTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterTechMarine.Checked = True Then
                        mnuStormBolterTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexTechMarine.Checked = True Then
                        mnuAuspexTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsTechMarine.Checked = True Then
                        mnuBionicsTechMarine.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesTechMarine.Checked = True Then
                        mnuFragGrenadesTechMarine.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloTechMarine.Checked = True Then
                        mnuIronHaloTechMarine.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesTechMarine.Checked = True Then
                        mnuKrakGrenadesTechMarine.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponTechMarine.Checked = True Then
                        mnuMasterCraftedWeaponTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsTechMarine.Checked = True Then
                        mnuMeltaBombsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsTechMarine.Checked = True Then
                        mnuPuritySealsTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerTechMarine.Checked = True Then
                        mnuTeleportHomerTechMarine.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsTechMarine.Checked = True Then
                        mnuTerminatorHonorsTechMarine.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
        
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuTransport.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ

End Sub

Private Sub mnuTeleportHomer_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomer.Checked = False Then
        mnuTeleportHomer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuTeleportHomerApothecary_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerApothecary.Checked = False Then
        mnuTeleportHomerApothecary.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerApothecary.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTeleportHomerSergeant_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerSergeant.Checked = False Then
        mnuTeleportHomerSergeant.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerSergeant.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTeleportHomerStandardBearer_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerStandardBearer.Checked = False Then
        mnuTeleportHomerStandardBearer.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerStandardBearer.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTeleportHomerTechMarine_Click()
'Initialize variables
    ActiveValue = 5
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTeleportHomerTechMarine.Checked = False Then
        mnuTeleportHomerTechMarine.Checked = True
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTeleportHomerTechMarine.Checked = False
    
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTerminatorArmor_Click()
'Initialize variables
    ActiveValue = 25
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorArmor.Checked = False Then
        mnuTerminatorArmor.Checked = True
    'Terminator Honors is disabled
        If mnuTerminatorHonors.Checked = True Then
            mnuTerminatorHonors.Checked = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
            mnuTerminatorHonors.Enabled = False
        
    'Terminator only items become available
            mnuChainfist.Visible = True
    'Non terminator items must be unchecked and invisible
        If mnuBoltPistol.Checked = True Then
            mnuBoltPistol.Checked = False
            mnuBoltPistol.Visible = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuCloseCombatWeapon.Checked = True Then
            mnuCloseCombatWeapon.Checked = False
            mnuCloseCombatWeapon.Visible = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuPlasmaPistol.Checked = True Then
            mnuPlasmaPistol.Checked = False
            mnuPlasmaPistol.Visible = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        If mnuBolter.Checked = True Then
            mnuBolter.Checked = False
            mnuBolter.Visible = False
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuArtificerArmor.Checked = True Then
            mnuArtificerArmor.Checked = False
            mnuArtificerArmor.Visible = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuBionics.Checked = True Then
            mnuBionics.Checked = False
            mnuBionics.Visible = False
            ActiveValue = 10
            RemoveValueFromGroup
        End If
        If mnuFragGrenades.Checked = True Then
            mnuFragGrenades.Checked = False
            mnuFragGrenades.Visible = False
            ActiveValue = 1
            RemoveValueFromGroup
        End If
        If mnuIronHalo.Checked = True Then
            mnuIronHalo.Checked = False
            mnuIronHalo.Visible = False
            ActiveValue = 25
            RemoveValueFromGroup
        End If
        If mnuKrakGrenades.Checked = True Then
            mnuKrakGrenades.Checked = False
            mnuKrakGrenades.Visible = False
            ActiveValue = 2
            RemoveValueFromGroup
        End If
        If mnuJumpPack.Checked = True Then
            mnuJumpPack.Checked = False
            mnuJumpPack.Visible = False
            ActiveValue = 20
            RemoveValueFromGroup
        End If
        If mnuMeltaBombs.Checked = True Then
            mnuMeltaBombs.Checked = False
            mnuMeltaBombs.Visible = False
            ActiveValue = 5
            RemoveValueFromGroup
        End If
        If mnuSpaceMarineBike.Checked = True Then
            mnuSpaceMarineBike.Checked = False
            mnuSpaceMarineBike.Visible = False
            ActiveValue = 35
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonors.Checked = True Then
            mnuTerminatorHonors.Checked = False
            mnuTerminatorHonors.Visible = False
            ActiveValue = 15
            RemoveValueFromGroup
        End If
        ActiveValue = 25
    'add value
        AddValueToGroup
    'add terminator to group
        TerminatorMembers = TerminatorMembers + 1
    Else
    'If previously checked then uncheck
        mnuTerminatorArmor.Checked = False
    'Terminator Honors is enabled
        mnuTerminatorHonors.Enabled = True
    'Terminator only items become unavailable
        If mnuChainfist.Checked = True Then
            mnuChainfist.Checked = False
            ActiveValue = 30
            RemoveValueFromGroup
        End If
    'Becomes invisible
        mnuChainfist.Visible = False
    'Non terminator items must be visible
        mnuBoltPistol.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuBolter.Visible = True
        mnuArtificerArmor.Visible = True
        mnuBionics.Visible = True
        mnuFragGrenades.Visible = True
        mnuIronHalo.Visible = True
        mnuKrakGrenades.Visible = True
        mnuJumpPack.Visible = True
        mnuMeltaBombs.Visible = True
        mnuSpaceMarineBike.Visible = True
        mnuTerminatorHonors.Visible = True
    'remove terminator from group
        TerminatorMembers = TerminatorMembers - 1
    'remove value
        RemoveValueFromGroup
    
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTerminatorHonors_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 1
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonors.Checked = False Then
        mnuTerminatorHonors.Checked = True
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'add value
        AddValueToGroup
    'Enable Squad Terminator Honors
        If mnuVeteranSergeant.Checked = True Then
            mnuTerminatorHonorsSquad.Visible = True
        End If
    Else
    'If previously checked then uncheck
        mnuTerminatorHonors.Checked = False
    'disable Squad Terminator Honors
        mnuTerminatorHonorsSquad.Visible = False
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuTerminatorHonorsApothecary_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonorsApothecary.Checked = False Then
        mnuTerminatorHonorsApothecary.Checked = True
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTerminatorHonorsApothecary.Checked = False
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTerminatorHonorsSergeant_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonorsSergeant.Checked = False Then
        mnuTerminatorHonorsSergeant.Checked = True

    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTerminatorHonorsSergeant.Checked = False

    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTerminatorHonorsSquad_Click()
'Initialize variables
    ActiveValue = 10
    'NO ActiveGroup
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonorsSquad.Checked = False Then
        mnuTerminatorHonorsSquad.Checked = True
    
    'Run checks on other Terminator Honor items
        
    'Does not apply to hero
    'Veteran Sergeants Can't have additional terminator honors
        
        If mnuApothecary.Checked = True Then
            If mnuTerminatorHonorsApothecary.Checked = False Then
                mnuTerminatorHonorsApothecary.Checked = True
                ActiveGroup = 3
                AddValueToGroup
            Else
                ActiveValue = 5
                RemoveValueFromGroup
            End If
        End If
        If mnuStandardBearer.Checked = True Then
            If mnuTerminatorHonorsStandardBearer.Checked = False Then
                mnuTerminatorHonorsStandardBearer.Checked = True
                ActiveGroup = 4
                AddValueToGroup
            Else
                ActiveValue = 5
                RemoveValueFromGroup
            End If
        End If
        If mnuTechMarine.Checked = True Then
            If mnuTerminatorHonorsTechMarine.Checked = False Then
                mnuTerminatorHonorsTechMarine.Checked = True
                ActiveGroup = 5
                AddValueToGroup
            Else
                ActiveValue = 5
                RemoveValueFromGroup
            End If
        End If
    'add value for bodyguards
        ActiveGroup = 6
        ActiveValue = SquadMembers * 10
    'Compensate for character krak grenades
        If mnuTerminatorHonors.Checked = True Then
            ActiveValue = ActiveValue - 10
        End If
        If mnuVeteranSergeant.Checked = True Then
            ActiveValue = ActiveValue - 10
        End If
        If mnuTerminatorHonorsApothecary.Checked = True Then
            ActiveValue = ActiveValue - 10
        End If
        If mnuTerminatorHonorsStandardBearer.Checked = True Then
            ActiveValue = ActiveValue - 10
        End If
        If mnuTerminatorHonorsTechMarine.Checked = True Then
            ActiveValue = ActiveValue - 10
        End If
        
        AddValueToGroup
        
    Else
'If previsously checked then check
        mnuTerminatorHonorsSquad.Checked = False
    
    'Run checks on other Terminator Honor items
    'Does not apply to hero
    'Veteran Sergeants can't have an additional terminator honors
        If mnuTerminatorHonorsApothecary.Checked = True Then
            mnuTerminatorHonorsApothecary.Checked = False
            ActiveGroup = 3
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonorsStandardBearer.Checked = True Then
            mnuTerminatorHonorsStandardBearer.Checked = False
            ActiveGroup = 4
            RemoveValueFromGroup
        End If
        If mnuTerminatorHonorsTechMarine.Checked = True Then
            mnuTerminatorHonorsTechMarine.Checked = False
            ActiveGroup = 5
            RemoveValueFromGroup
        End If
    'remove value
        ActiveGroup = 6
    'Reset activevalue to 0
        ActiveValue = 0
    'count up pending which bodyguard were selected
        If mnuSMBodyGuard1.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        If mnuSMBodyGuard2.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        If mnuSMBodyGuard3.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        If mnuSMBodyGuard4.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        If mnuSMBodyGuard5.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        If mnuSMBodyGuard6.Checked = True Then
            ActiveValue = ActiveValue + 10
        End If
        RemoveValueFromGroup
    End If
'Display Squad
        DisplayHQ
End Sub

Private Sub mnuTerminatorHonorsStandardBearer_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonorsStandardBearer.Checked = False Then
        mnuTerminatorHonorsStandardBearer.Checked = True
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTerminatorHonorsStandardBearer.Checked = False
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuTerminatorHonorsTechMarine_Click()
'Initialize variables
    ActiveValue = 15
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuTerminatorHonorsTechMarine.Checked = False Then
        mnuTerminatorHonorsTechMarine.Checked = True
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'add value
        AddValueToGroup
    Else
    'If previously checked then uncheck
        mnuTerminatorHonorsTechMarine.Checked = False
    'specified for group terminator honors
        If mnuTerminatorHonorsSquad.Checked = True Then
            ActiveValue = 10
        End If
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuThunderHammer_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuThunderHammer.Checked = False Then
        mnuThunderHammer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuThunderHammer.Checked = True And mnuBolterFlamer.Checked = True Or mnuBolterGrenadeLauncher.Checked = True Or mnuBolterPlasmagun.Checked = True Or mnuBolterMeltagun.Checked = True Or mnuStormBolter.Checked = True Or mnuBoltPistol.Checked = True Or mnuChainfist.Checked = True Or mnuCloseCombatWeapon.Checked = True Or mnuForceWeapon.Checked = True Or mnuLightningClaw.Checked = True Or mnuLightningClaws.Checked = True Or mnuPowerFist.Checked = True Or mnuPlasmaPistol.Checked = True Or mnuPowerWeapon.Checked = True Or mnuStormShield.Checked = True Or mnuBolter.Checked = True Then
            If mnuBolterFlamer.Checked = False Then
                mnuBolterFlamer.Visible = False
            End If
            If mnuBolterGrenadeLauncher.Checked = False Then
                mnuBolterGrenadeLauncher.Visible = False
            End If
            If mnuBolterMeltagun.Checked = False Then
                mnuBolterMeltagun.Visible = False
            End If
            If mnuBolterPlasmagun.Checked = False Then
                mnuBolterPlasmagun.Visible = False
            End If
            If mnuStormBolter.Checked = False Then
                mnuStormBolter.Visible = False
            End If
            If mnuBoltPistol.Checked = False Then
                mnuBoltPistol.Visible = False
            End If
            If mnuChainfist.Checked = False Then
                mnuChainfist.Visible = False
            End If
            If mnuCloseCombatWeapon.Checked = False Then
                mnuCloseCombatWeapon.Visible = False
            End If
            If mnuForceWeapon.Checked = False Then
                mnuForceWeapon.Visible = False
            End If
            If mnuLightningClaw.Checked = False Then
                mnuLightningClaw.Visible = False
            End If
            If mnuLightningClaws.Checked = False Then
                mnuLightningClaws.Visible = False
            End If
            If mnuPlasmaPistol.Checked = False Then
                mnuPlasmaPistol.Visible = False
            End If
            If mnuPowerFist.Checked = False Then
                mnuPowerFist.Visible = False
            End If
            If mnuPowerWeapon.Checked = False Then
                mnuPowerWeapon.Visible = False
            End If
            If mnuStormShield.Checked = False Then
                mnuStormShield.Visible = False
            End If
            If mnuBolter.Checked = False Then
                mnuBolter.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuThunderHammer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamer.Visible = True
        mnuBolterGrenadeLauncher.Visible = True
        mnuBolterMeltagun.Visible = True
        mnuBolterPlasmagun.Visible = True
        mnuStormBolter.Visible = True
        mnuBoltPistol.Visible = True
        mnuChainfist.Visible = True
        mnuCloseCombatWeapon.Visible = True
        mnuForceWeapon.Visible = True
        mnuLightningClaw.Visible = True
        mnuLightningClaws.Visible = True
        mnuPlasmaPistol.Visible = True
        mnuPowerFist.Visible = True
        mnuPowerWeapon.Visible = True
        mnuStormShield.Visible = True
        mnuBolter.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuThunderHammerApothecary_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 3
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuThunderHammerApothecary.Checked = False Then
        mnuThunderHammerApothecary.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuThunderHammerApothecary.Checked = True And mnuBolterFlamerApothecary.Checked = True Or mnuBolterGrenadeLauncherApothecary.Checked = True Or mnuBolterPlasmagunApothecary.Checked = True Or mnuBolterMeltagunApothecary.Checked = True Or mnuStormBolterApothecary.Checked = True Or mnuBoltPistolApothecary.Checked = True Or mnuCloseCombatWeaponApothecary.Checked = True Or mnuLightningClawApothecary.Checked = True Or mnuLightningClawsApothecary.Checked = True Or mnuPowerFistApothecary.Checked = True Or mnuPlasmaPistolApothecary.Checked = True Or mnuPowerWeaponApothecary.Checked = True Or mnuStormShieldApothecary.Checked = True Or then
            If mnuBolterFlamerApothecary.Checked = False Then
                mnuBolterFlamerApothecary.Visible = False
            End If
            If mnuBolterGrenadeLauncherApothecary.Checked = False Then
                mnuBolterGrenadeLauncherApothecary.Visible = False
            End If
            If mnuBolterMeltagunApothecary.Checked = False Then
                mnuBolterMeltagunApothecary.Visible = False
            End If
            If mnuBolterPlasmagunApothecary.Checked = False Then
                mnuBolterPlasmagunApothecary.Visible = False
            End If
            If mnuStormBolterApothecary.Checked = False Then
                mnuStormBolterApothecary.Visible = False
            End If
            If mnuBoltPistolApothecary.Checked = False Then
                mnuBoltPistolApothecary.Visible = False
            End If
            If mnuCloseCombatWeaponApothecary.Checked = False Then
                mnuCloseCombatWeaponApothecary.Visible = False
            End If
            If mnuLightningClawApothecary.Checked = False Then
                mnuLightningClawApothecary.Visible = False
            End If
            If mnuLightningClawsApothecary.Checked = False Then
                mnuLightningClawsApothecary.Visible = False
            End If
            If mnuPlasmaPistolApothecary.Checked = False Then
                mnuPlasmaPistolApothecary.Visible = False
            End If
            If mnuPowerFistApothecary.Checked = False Then
                mnuPowerFistApothecary.Visible = False
            End If
            If mnuPowerWeaponApothecary.Checked = False Then
                mnuPowerWeaponApothecary.Visible = False
            End If
            If mnuStormShieldApothecary.Checked = False Then
                mnuStormShieldApothecary.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuThunderHammerApothecary.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerApothecary.Visible = True
        mnuBolterGrenadeLauncherApothecary.Visible = True
        mnuBolterMeltagunApothecary.Visible = True
        mnuBolterPlasmagunApothecary.Visible = True
        mnuStormBolterApothecary.Visible = True
        mnuBoltPistolApothecary.Visible = True
        mnuCloseCombatWeaponApothecary.Visible = True
        mnuLightningClawApothecary.Visible = True
        mnuLightningClawsApothecary.Visible = True
        mnuPlasmaPistolApothecary.Visible = True
        mnuPowerFistApothecary.Visible = True
        mnuPowerWeaponApothecary.Visible = True
        mnuStormShieldApothecary.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub


Private Sub mnuThunderHammerSergeant_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 2
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuThunderHammerSergeant.Checked = False Then
        mnuThunderHammerSergeant.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuThunderHammerSergeant.Checked = True And mnuBolterFlamerSergeant.Checked = True Or mnuBolterGrenadeLauncherSergeant.Checked = True Or mnuBolterPlasmagunSergeant.Checked = True Or mnuBolterMeltagunSergeant.Checked = True Or mnuStormBolterSergeant.Checked = True Or mnuBoltPistolSergeant.Checked = True Or mnuCloseCombatWeaponSergeant.Checked = True Or mnuLightningClawSergeant.Checked = True Or mnuLightningClawsSergeant.Checked = True Or mnuPowerFistSergeant.Checked = True Or mnuPlasmaPistolSergeant.Checked = True Or mnuPowerWeaponSergeant.Checked = True Or mnuStormShieldSergeant.Checked = True Then
            If mnuBolterFlamerSergeant.Checked = False Then
                mnuBolterFlamerSergeant.Visible = False
            End If
            If mnuBolterGrenadeLauncherSergeant.Checked = False Then
                mnuBolterGrenadeLauncherSergeant.Visible = False
            End If
            If mnuBolterMeltagunSergeant.Checked = False Then
                mnuBolterMeltagunSergeant.Visible = False
            End If
            If mnuBolterPlasmagunSergeant.Checked = False Then
                mnuBolterPlasmagunSergeant.Visible = False
            End If
            If mnuStormBolterSergeant.Checked = False Then
                mnuStormBolterSergeant.Visible = False
            End If
            If mnuBoltPistolSergeant.Checked = False Then
                mnuBoltPistolSergeant.Visible = False
            End If
            If mnuCloseCombatWeaponSergeant.Checked = False Then
                mnuCloseCombatWeaponSergeant.Visible = False
            End If
            If mnuLightningClawSergeant.Checked = False Then
                mnuLightningClawSergeant.Visible = False
            End If
            If mnuLightningClawsSergeant.Checked = False Then
                mnuLightningClawsSergeant.Visible = False
            End If
            If mnuPlasmaPistolSergeant.Checked = False Then
                mnuPlasmaPistolSergeant.Visible = False
            End If
            If mnuPowerFistSergeant.Checked = False Then
                mnuPowerFistSergeant.Visible = False
            End If
            If mnuPowerWeaponSergeant.Checked = False Then
                mnuPowerWeaponSergeant.Visible = False
            End If
            If mnuStormShieldSergeant.Checked = False Then
                mnuStormShieldSergeant.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuThunderHammerSergeant.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerSergeant.Visible = True
        mnuBolterGrenadeLauncherSergeant.Visible = True
        mnuBolterMeltagunSergeant.Visible = True
        mnuBolterPlasmagunSergeant.Visible = True
        mnuStormBolterSergeant.Visible = True
        mnuBoltPistolSergeant.Visible = True
        mnuCloseCombatWeaponSergeant.Visible = True
        mnuLightningClawSergeant.Visible = True
        mnuLightningClawsSergeant.Visible = True
        mnuPlasmaPistolSergeant.Visible = True
        mnuPowerFistSergeant.Visible = True
        mnuPowerWeaponSergeant.Visible = True
        mnuStormShieldSergeant.Visible = True
        
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuThunderHammerStandardBearer_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 4
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuThunderHammerStandardBearer.Checked = False Then
        mnuThunderHammerStandardBearer.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuThunderHammerStandardBearer.Checked = True And mnuBolterFlamerStandardBearer.Checked = True Or mnuBolterGrenadeLauncherStandardBearer.Checked = True Or mnuBolterPlasmagunStandardBearer.Checked = True Or mnuBolterMeltagunStandardBearer.Checked = True Or mnuStormBolterStandardBearer.Checked = True Or mnuBoltPistolStandardBearer.Checked = True Or mnuCloseCombatWeaponStandardBearer.Checked = True Or mnuLightningClawStandardBearer.Checked = True Or mnuLightningClawsStandardBearer.Checked = True Or mnuPowerFistStandardBearer.Checked = True Or mnuPlasmaPistolStandardBearer.Checked = True Or mnuPowerWeaponStandardBearer.Checked = True Or mnuStormShieldStandardBearer.Checked = True Or Then
            If mnuBolterFlamerStandardBearer.Checked = False Then
                mnuBolterFlamerStandardBearer.Visible = False
            End If
            If mnuBolterGrenadeLauncherStandardBearer.Checked = False Then
                mnuBolterGrenadeLauncherStandardBearer.Visible = False
            End If
            If mnuBolterMeltagunStandardBearer.Checked = False Then
                mnuBolterMeltagunStandardBearer.Visible = False
            End If
            If mnuBolterPlasmagunStandardBearer.Checked = False Then
                mnuBolterPlasmagunStandardBearer.Visible = False
            End If
            If mnuStormBolterStandardBearer.Checked = False Then
                mnuStormBolterStandardBearer.Visible = False
            End If
            If mnuBoltPistolStandardBearer.Checked = False Then
                mnuBoltPistolStandardBearer.Visible = False
            End If
            If mnuCloseCombatWeaponStandardBearer.Checked = False Then
                mnuCloseCombatWeaponStandardBearer.Visible = False
            End If
            If mnuLightningClawStandardBearer.Checked = False Then
                mnuLightningClawStandardBearer.Visible = False
            End If
            If mnuLightningClawsStandardBearer.Checked = False Then
                mnuLightningClawsStandardBearer.Visible = False
            End If
            If mnuPlasmaPistolStandardBearer.Checked = False Then
                mnuPlasmaPistolStandardBearer.Visible = False
            End If
            If mnuPowerFistStandardBearer.Checked = False Then
                mnuPowerFistStandardBearer.Visible = False
            End If
            If mnuPowerWeaponStandardBearer.Checked = False Then
                mnuPowerWeaponStandardBearer.Visible = False
            End If
            If mnuStormShieldStandardBearer.Checked = False Then
                mnuStormShieldStandardBearer.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuThunderHammerStandardBearer.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerStandardBearer.Visible = True
        mnuBolterGrenadeLauncherStandardBearer.Visible = True
        mnuBolterMeltagunStandardBearer.Visible = True
        mnuBolterPlasmagunStandardBearer.Visible = True
        mnuStormBolterStandardBearer.Visible = True
        mnuBoltPistolStandardBearer.Visible = True
        mnuCloseCombatWeaponStandardBearer.Visible = True
        mnuLightningClawStandardBearer.Visible = True
        mnuLightningClawsStandardBearer.Visible = True
        mnuPlasmaPistolStandardBearer.Visible = True
        mnuPowerFistStandardBearer.Visible = True
        mnuPowerWeaponStandardBearer.Visible = True
        mnuStormShieldStandardBearer.Visible = True
        
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuThunderHammerTechMarine_Click()
'Initialize variables
    ActiveValue = 30
    ActiveGroup = 5
    ActiveSquad = 2
    ActiveArmy = 1

'If previously unchecked then check
    If mnuThunderHammerTechMarine.Checked = False Then
        mnuThunderHammerTechMarine.Checked = True
    'add value
        AddValueToGroup
    'Handedness check, character is only allowed two weapons
        If mnuThunderHammerTechMarine.Checked = True And mnuBolterFlamerTechMarine.Checked = True Or mnuBolterGrenadeLauncherTechMarine.Checked = True Or mnuBolterPlasmagunTechMarine.Checked = True Or mnuBolterMeltagunTechMarine.Checked = True Or mnuStormBolterTechMarine.Checked = True Or mnuBoltPistolTechMarine.Checked = True Or mnuCloseCombatWeaponTechMarine.Checked = True Or mnuLightningClawTechMarine.Checked = True Or mnuLightningClawsTechMarine.Checked = True Or mnuPowerFistTechMarine.Checked = True Or mnuPlasmaPistolTechMarine.Checked = True Or mnuPowerWeaponTechMarine.Checked = True Or mnuStormShieldTechMarine.Checked = True Or then
            If mnuBolterFlamerTechMarine.Checked = False Then
                mnuBolterFlamerTechMarine.Visible = False
            End If
            If mnuBolterGrenadeLauncherTechMarine.Checked = False Then
                mnuBolterGrenadeLauncherTechMarine.Visible = False
            End If
            If mnuBolterMeltagunTechMarine.Checked = False Then
                mnuBolterMeltagunTechMarine.Visible = False
            End If
            If mnuBolterPlasmagunTechMarine.Checked = False Then
                mnuBolterPlasmagunTechMarine.Visible = False
            End If
            If mnuStormBolterTechMarine.Checked = False Then
                mnuStormBolterTechMarine.Visible = False
            End If
            If mnuBoltPistolTechMarine.Checked = False Then
                mnuBoltPistolTechMarine.Visible = False
            End If
            If mnuCloseCombatWeaponTechMarine.Checked = False Then
                mnuCloseCombatWeaponTechMarine.Visible = False
            End If
            If mnuLightningClawTechMarine.Checked = False Then
                mnuLightningClawTechMarine.Visible = False
            End If
            If mnuLightningClawsTechMarine.Checked = False Then
                mnuLightningClawsTechMarine.Visible = False
            End If
            If mnuPlasmaPistolTechMarine.Checked = False Then
                mnuPlasmaPistolTechMarine.Visible = False
            End If
            If mnuPowerFistTechMarine.Checked = False Then
                mnuPowerFistTechMarine.Visible = False
            End If
            If mnuPowerWeaponTechMarine.Checked = False Then
                mnuPowerWeaponTechMarine.Visible = False
            End If
            If mnuStormShieldTechMarine.Checked = False Then
                mnuStormShieldTechMarine.Visible = False
            End If
        End If
            
    Else
    'If previously checked then uncheck
        mnuThunderHammerTechMarine.Checked = False
        
    'Make other weapons available
        mnuBolterFlamerTechMarine.Visible = True
        mnuBolterGrenadeLauncherTechMarine.Visible = True
        mnuBolterMeltagunTechMarine.Visible = True
        mnuBolterPlasmagunTechMarine.Visible = True
        mnuStormBolterTechMarine.Visible = True
        mnuBoltPistolTechMarine.Visible = True
        mnuCloseCombatWeaponTechMarine.Visible = True
        mnuLightningClawTechMarine.Visible = True
        mnuLightningClawsTechMarine.Visible = True
        mnuPlasmaPistolTechMarine.Visible = True
        mnuPowerFistTechMarine.Visible = True
        mnuPowerWeaponTechMarine.Visible = True
        mnuStormShieldTechMarine.Visible = True
    'remove value
        RemoveValueFromGroup
End If
'Display Squad
    DisplayHQ
End Sub

Private Sub mnuVeteranSergeant_Click()
'Initialize Variables
    ActiveArmy = 1
    ActiveSquad = 2
    ActiveGroup = 2
    ActiveValue = 30
'Routines
    'If previously unchecked then:
        If mnuVeteranSergeant.Checked = False Then
            mnuVeteranSergeant.Checked = True
            AddValueToGroup
            'uncheck selected Hero
                If mnuSergeant.Checked = True Then
                    mnuSergeant.Checked = False
                    ActiveValue = 18
                    RemoveValueFromGroup

                End If
                ActiveValue = 30
                mnuEquipmentSergeant.Visible = True
                SquadMembers = SquadMembers + 1
        'enable Squad Terminator Honors
            If mnuTerminatorHonors.Checked = True Then
                mnuTerminatorHonorsSquad.Visible = True
            End If
        'Disable Sergeant Terminator Honors (is included with Vet SGT)
            If mnuTerminatorHonors.Checked = True Then
                mnuTerminatorHonors.Checked = False
                ActiveValue = 15
                RemoveValueFromGroup
            End If
            mnuTerminatorHonorsSergeant.Enabled = False
        'Disable Rhino and LandRaider (Razorback already disabled) if there are more than 10 squad members
            If SquadMembers > 10 Then
                If mnuRhino.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                If mnuLandRaider.Checked = True Then
                    mnuRhino.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuTransport.Visible = False
                mnuVehicleUpgrades.Visible = False
            End If
            ActiveValue = 30
        'Disable Razorback if there are more than 6 squad members
            If SquadMembers > 6 Then
                If mnuRazorback.Checked = True Then
                    mnuRazorback.Checked = False
                    ActiveValue = 50
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuRazorback.Visible = False
            End If
            ActiveValue = 30
        'Disable Land Raider if there are more than 5 terminators
            If TerminatorMembers > 5 Then
                If mnuLandRaider.Checked = True Then
                    mnuLandRaider.Checked = False
                    ActiveValue = 250
                    ActiveGroup = 9
                    RemoveValueFromGroup
                End If
                mnuLandRaider.Visible = False
            End If
         Else
        'If previously checked then:
            mnuVeteranSergeant.Checked = False
            RemoveValueFromGroup
            mnuEquipmentSergeant.Visible = False
            SquadMembers = SquadMembers - 1
            
            'Clear Equipment and items
                    If mnuBoltPistolSergeant.Checked = True Then
                        mnuBoltPistolSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuCloseCombatWeaponSergeant.Checked = True Then
                        mnuCloseCombatWeaponSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawSergeant.Checked = True Then
                        mnuLightningClawSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuLightningClawsSergeant.Checked = True Then
                        mnuLightningClawsSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuPlasmaPistolSergeant.Checked = True Then
                        mnuPlasmaPistolSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuPowerFistSergeant.Checked = True Then
                        mnuPowerFistSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuPowerWeaponSergeant.Checked = True Then
                        mnuPowerWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormShieldSergeant.Checked = True Then
                        mnuStormShieldSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuThunderHammerSergeant.Checked = True Then
                        mnuThunderHammerSergeant.Checked = False
                        ActiveValue = 30
                        RemoveValueFromGroup
                    End If
                    If mnuBolterFlamerSergeant.Checked = True Then
                        mnuBolterFlamerSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterGrenadeLauncherSergeant.Checked = True Then
                        mnuBolterGrenadeLauncherSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuBolterPlasmagunSergeant.Checked = True Then
                        mnuBolterPlasmagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuBolterMeltagunSergeant.Checked = True Then
                        mnuBolterMeltagunSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuStormBolterSergeant.Checked = True Then
                        mnuStormBolterSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuAuspexSergeant.Checked = True Then
                        mnuAuspexSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuBionicsSergeant.Checked = True Then
                        mnuBionicsSergeant.Checked = False
                        ActiveValue = 10
                        RemoveValueFromGroup
                    End If
                    If mnuFragGrenadesSergeant.Checked = True Then
                        mnuFragGrenadesSergeant.Checked = False
                        ActiveValue = 1
                        RemoveValueFromGroup
                    End If
                    If mnuIronHaloSergeant.Checked = True Then
                        mnuIronHaloSergeant.Checked = False
                        ActiveValue = 25
                        RemoveValueFromGroup
                    End If
                    If mnuKrakGrenadesSergeant.Checked = True Then
                        mnuKrakGrenadesSergeant.Checked = False
                        ActiveValue = 2
                        RemoveValueFromGroup
                    End If
                    If mnuMasterCraftedWeaponSergeant.Checked = True Then
                        mnuMasterCraftedWeaponSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
                    If mnuMeltaBombsSergeant.Checked = True Then
                        mnuMeltaBombsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuPuritySealsSergeant.Checked = True Then
                        mnuPuritySealsSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTeleportHomerSergeant.Checked = True Then
                        mnuTeleportHomerSergeant.Checked = False
                        ActiveValue = 5
                        RemoveValueFromGroup
                    End If
                    If mnuTerminatorHonorsSergeant.Checked = True Then
                        mnuTerminatorHonorsSergeant.Checked = False
                        ActiveValue = 15
                        RemoveValueFromGroup
                    End If
        'Disable Squad Terminator Honors
            mnuTerminatorHonorsSquad.Visible = False
        'Enable Sergeant Terminator Honors (is included with Vet SGT)
            mnuTerminatorHonorsSergeant.Enabled = True
        'Enable Rhino if there are less than or 10 squad members
            If SquadMembers <= 10 Then
                mnuTransport.Visible = True
            End If
        'Enable Razorback if there are less than or 6 squad members
            If SquadMembers <= 6 Then
                mnuRazorback.Visible = True
            End If
        'Enable Land Raider if there are less than 5 terminators
            If TerminatorMembers <= 5 Then
                mnuLandRaider.Visible = True
            End If
        End If
    'Display Squad
        DisplayHQ

End Sub



