VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   1305
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display Count"
      Height          =   495
      Left            =   2640
      TabIndex        =   1
      Top             =   3960
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   3735
      Left            =   720
      ScaleHeight     =   3675
      ScaleWidth      =   4995
      TabIndex        =   0
      Top             =   240
      Width           =   5055
   End
   Begin VB.Menu mnuSpaceMarines 
      Caption         =   "Space Marines"
      Begin VB.Menu mnuBlankSM 
         Caption         =   ""
      End
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
               Caption         =   "Frag Grenades 01"
            End
            Begin VB.Menu mnuHolyRelicSMHQ1 
               Caption         =   "Holy Relic (Chaplain only) (1)* 40"
            End
            Begin VB.Menu mnuIronHaloSMHQ1 
               Caption         =   "Iron Halo (1) 25"
            End
            Begin VB.Menu mnuJumpPackSMHQ1 
               Caption         =   "Jump Pack 20"
            End
            Begin VB.Menu mnuKrakGrenadesSMHQ1 
               Caption         =   "Krak Grenades 02"
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
            Begin VB.Menu mnuComSGTSMHQ1 
               Caption         =   "Sergeant 18"
               Begin VB.Menu mnuEquipmentComSGTSMHQ1 
                  Caption         =   "Sergeant Equipment"
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
                     Caption         =   "Frag Grenades 01"
                  End
                  Begin VB.Menu mnuIronHaloComSGTSMHQ1 
                     Caption         =   "Iron Halo (1) 25"
                  End
                  Begin VB.Menu mnuKrakGrenadesComSGTSMHQ1 
                     Caption         =   "Krak Grenades 02"
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
            End
            Begin VB.Menu mnuComVetSGTSMHQ1 
               Caption         =   "Veteran Sergeant 30"
               Begin VB.Menu mnuEquipmentComVetSGTSMHQ1 
                  Caption         =   "Veteran Sergeant Equipment"
                  Begin VB.Menu mnuBoltPistolComVetSGTSMHQ1 
                     Caption         =   "Bolt Pistol 01"
                  End
                  Begin VB.Menu mnuCloseCombatWeaponComVetSGTSMHQ1 
                     Caption         =   "Close Combat Weapon 01"
                  End
                  Begin VB.Menu mnuLightningClawComVetSGTSMHQ1 
                     Caption         =   "Lightning Claw (Single) 25"
                  End
                  Begin VB.Menu mnuLightningClawsComVetSGTSMHQ1 
                     Caption         =   "Lightning Claws (pair, two choices) 30"
                  End
                  Begin VB.Menu mnuPlasmaPistolComVetSGTSMHQ1 
                     Caption         =   "Plasma Pistol 15"
                  End
                  Begin VB.Menu mnuPowerFistComVetSGTSMHQ1 
                     Caption         =   "Power Fist 25"
                  End
                  Begin VB.Menu mnuPowerWeaponComVetSGTSMHQ1 
                     Caption         =   "Power Weapon 15"
                  End
                  Begin VB.Menu mnuStormShieldComVetSGTSMHQ1 
                     Caption         =   "Storm Shield 10"
                  End
                  Begin VB.Menu mnuThunderHammerComVetSGTSMHQ1 
                     Caption         =   "Thunder Hammer 30"
                  End
                  Begin VB.Menu mnuBolterComVetSGTSMHQ1 
                     Caption         =   "Bolter 02"
                  End
                  Begin VB.Menu mnuBolterFlamerComVetSGTSMHQ1 
                     Caption         =   "Bolter-Flamer 10"
                  End
                  Begin VB.Menu mnuBolterGrenadLauncherComVetSGTSMHQ1 
                     Caption         =   "Bolter-Grenade Launcher 10"
                  End
                  Begin VB.Menu mnuBolterPlasmagunComVetSGTSMHQ1 
                     Caption         =   "Bolter-Plasmagun 15"
                  End
                  Begin VB.Menu mnuBolterMeltagunComVetSGTSMHQ1 
                     Caption         =   "Bolter-Meltagun 15"
                  End
                  Begin VB.Menu mnuStormBolterComVetSGTSMHQ1 
                     Caption         =   "Storm Bolter 05"
                  End
                  Begin VB.Menu mnuAuspexComVetSGTSMHQ1 
                     Caption         =   "Auspex 02"
                  End
                  Begin VB.Menu mnuBionicsComVetSGTSMHQ1 
                     Caption         =   "Bionics 10"
                  End
                  Begin VB.Menu mnuFragGrenadesComVetSGTSMHQ1 
                     Caption         =   "Frag Grenades 01"
                  End
                  Begin VB.Menu mnuIronHaloComVetSGTSMHQ1 
                     Caption         =   "Iron Halo (1) 25"
                  End
                  Begin VB.Menu mnuKrakGrenadesComVetSGTSMHQ1 
                     Caption         =   "Krak Grenades 02"
                  End
                  Begin VB.Menu mnuMasterCraftedWeaponComVetSGTSMHQ1 
                     Caption         =   "Master-Crafted Weapon 15"
                  End
                  Begin VB.Menu mnuMeltaBombsComVetSGTSMHQ1 
                     Caption         =   "Melta Bombs 05"
                  End
                  Begin VB.Menu mnuPuritySealsComVetSGTSMHQ1 
                     Caption         =   "Purity Seals 05"
                  End
                  Begin VB.Menu mnuTeleportHomerComVetSGTSMHQ1 
                     Caption         =   "Teleport Homer 05"
                  End
                  Begin VB.Menu mnuTerminatorHonorsComVetSGTSMHQ1 
                     Caption         =   "Terminator Honors 15"
                  End
               End
            End
            Begin VB.Menu mnuApothecarySMHQ1 
               Caption         =   "Apothecary 18"
               WindowList      =   -1  'True
               Begin VB.Menu mnuEquipmentAPOSMHQ1 
                  Caption         =   "Apothecary Equipment"
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
            End
            Begin VB.Menu mnuTechMarineSMHQ1 
               Caption         =   "Tech-Marine 18"
               Begin VB.Menu mnuEquipmentTEMSMHQ1 
                  Caption         =   "Tech-Marine Equipment"
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
            End
            Begin VB.Menu mnuStandardBearerSMHQ1 
               Caption         =   "Standard Bearer 18"
               Begin VB.Menu mnuEquipmentStandardBearerSMHQ1 
                  Caption         =   "Standard Bearer Equipment"
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
                  Begin VB.Menu mnuPowerFistSTBSMHQ1 
                     Caption         =   "Power Fist 25"
                  End
                  Begin VB.Menu mnuPowerWeaponSTBSMHQ1 
                     Caption         =   "Power Weapon 15"
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
            End
            Begin VB.Menu mnuSMBodyguardSMHQ11 
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
                  Checked         =   -1  'True
               End
               Begin VB.Menu mnuRazorbackSMHQ1 
                  Caption         =   "Razorback 70"
                  Checked         =   -1  'True
               End
               Begin VB.Menu mnuLandRaiderSMHQ1 
                  Caption         =   "Land Raider 250"
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
      Begin VB.Menu mnuSMHQ2 
         Caption         =   "HQ 2"
         Begin VB.Menu mnuLeaderSMHQ2 
            Caption         =   "Leader 30"
         End
         Begin VB.Menu mnuCommanderSMHQ2 
            Caption         =   "Commander 45"
         End
         Begin VB.Menu mnuFCSMHQ2 
            Caption         =   "Force Commander 60"
         End
         Begin VB.Menu mnuLibrarianSMHQ2 
            Caption         =   "Librarian 60"
         End
         Begin VB.Menu mnuChaplainSMHQ2 
            Caption         =   "Chaplain 70"
         End
         Begin VB.Menu mnuEquipmenSMHQt2 
            Caption         =   "Equipment"
         End
      End
      Begin VB.Menu mnuSMTroops1 
         Caption         =   "Troops 1"
      End
      Begin VB.Menu mnuSMTroops2 
         Caption         =   "Troops 2"
      End
      Begin VB.Menu mnuSMTroops3 
         Caption         =   "Troops 3"
      End
      Begin VB.Menu mnuSMTroops4 
         Caption         =   "Troops 4"
      End
      Begin VB.Menu mnuSMTroops5 
         Caption         =   "Troops 5"
      End
      Begin VB.Menu mnuSMTroops6 
         Caption         =   "Troops 6"
      End
      Begin VB.Menu mnuSMElites1 
         Caption         =   "Elites 1"
      End
      Begin VB.Menu mnuSMElites2 
         Caption         =   "Elites 2"
      End
      Begin VB.Menu mnuSMElites3 
         Caption         =   "Elites 3"
      End
      Begin VB.Menu mnuSMFA1 
         Caption         =   "Fast Attack 1"
      End
      Begin VB.Menu mnuSMFA2 
         Caption         =   "Fast Attack 2"
      End
      Begin VB.Menu mnuSMFA3 
         Caption         =   "Fast Attack 3"
      End
      Begin VB.Menu mnuSMHS1 
         Caption         =   "Heavy Support 1"
      End
      Begin VB.Menu mnuSMHS2 
         Caption         =   "Heavy Support 2"
      End
      Begin VB.Menu mnuSMHS3 
         Caption         =   "Heavy Support 3"
      End
   End
   Begin VB.Menu mnuOrks 
      Caption         =   "Orks"
      Begin VB.Menu mnuOHQ1 
         Caption         =   "HQ1"
      End
      Begin VB.Menu mnuOHQ2 
         Caption         =   "HQ2"
      End
   End
   Begin VB.Menu mnuChaosMarines 
      Caption         =   "ChaosMarines"
      Begin VB.Menu mnuCMHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuCMHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuEldar 
      Caption         =   "Eldar"
      Begin VB.Menu mnuEHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuEHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuDarkEldar 
      Caption         =   "Dark Eldar"
      Begin VB.Menu mnuDEHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuDEHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuTyranids 
      Caption         =   "Tyranids"
      Begin VB.Menu mnuTHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuTHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuImperialGuard 
      Caption         =   "Imperial Guard"
      Begin VB.Menu mnuIGHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuIGHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuNecrons 
      Caption         =   "Necrons"
      Begin VB.Menu mnuNHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuNHQ2 
         Caption         =   "HQ 2"
      End
   End
   Begin VB.Menu mnuSistersofBattle 
      Caption         =   "Sisters of Battle"
      Begin VB.Menu mnuSBHQ1 
         Caption         =   "HQ 1"
      End
      Begin VB.Menu mnuSBHQ2 
         Caption         =   "HQ 2"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Declare ALL Variables
Dim SMCount As Integer, OCount As Integer, CMCount As Integer, ECount As Integer, DECount As Integer, TCount As Integer, IGCount As Integer, NCount As Integer, SBCount As Integer, GMCount As Integer, MCount As Integer, VCount As Integer, ACount As Integer, AICount As Integer, DLCount As Integer
Dim SMHQ1 As Integer, OHQ1 As Integer, CMHQ1 As Integer, EHQ1 As Integer, DEHQ1 As Integer, THQ1 As Integer, IGHQ1 As Integer, NHQ1 As Integer, SBHQ1 As Integer, GMHQ1 As Integer, MHQ1 As Integer, VHQ1 As Integer, AHQ1 As Integer, AIHQ1 As Integer, DLHQ1 As Integer
Dim SMHQ2 As Integer, OHQ2 As Integer, CMHQ2 As Integer, EHQ2 As Integer, DEHQ2 As Integer, THQ2 As Integer, IGHQ2 As Integer, NHQ2 As Integer, SBHQ2 As Integer, GMHQ2 As Integer, MHQ2 As Integer, VHQ2 As Integer, AHQ2 As Integer, AIHQ2 As Integer, DLHQ2 As Integer
Dim SMT1 As Integer, OT1 As Integer, CMT1 As Integer, ET1 As Integer, DET1 As Integer, TT1 As Integer, IGT1 As Integer, NT1 As Integer, SBT1 As Integer, GMT1 As Integer, MT1 As Integer, VT1 As Integer, AT1 As Integer, AIT1 As Integer, DLT1 As Integer
Dim SMT2 As Integer, OT2 As Integer, CMT2 As Integer, ET2 As Integer, DET2 As Integer, TT2 As Integer, IGT2 As Integer, NT2 As Integer, SBT2 As Integer, GMT2 As Integer, MT2 As Integer, VT2 As Integer, AT2 As Integer, AIT2 As Integer, DLT2 As Integer
Dim SMT3 As Integer, OT3 As Integer, CMT3 As Integer, ET3 As Integer, DET3 As Integer, TT3 As Integer, IGT3 As Integer, NT3 As Integer, SBT3 As Integer, GMT3 As Integer, MT3 As Integer, VT3 As Integer, AT3 As Integer, AIT3 As Integer, DLT3 As Integer
Dim SMT4 As Integer, OT4 As Integer, CMT4 As Integer, ET4 As Integer, DET4 As Integer, TT4 As Integer, IGT4 As Integer, NT4 As Integer, SBT4 As Integer, GMT4 As Integer, MT4 As Integer, VT4 As Integer, AT4 As Integer, AIT4 As Integer, DLT4 As Integer
Dim SMT5 As Integer, OT5 As Integer, CMT5 As Integer, ET5 As Integer, DET5 As Integer, TT5 As Integer, IGT5 As Integer, NT5 As Integer, SBT5 As Integer, GMT5 As Integer, MT5 As Integer, VT5 As Integer, AT5 As Integer, AIT5 As Integer, DLT5 As Integer
Dim SMT6 As Integer, OT6 As Integer, CMT6 As Integer, ET6 As Integer, DET6 As Integer, TT6 As Integer, IGT6 As Integer, NT6 As Integer, SBT6 As Integer, GMT6 As Integer, MT6 As Integer, VT6 As Integer, AT6 As Integer, AIT6 As Integer, DLT6 As Integer
Dim SME1 As Integer, OE1 As Integer, CME1 As Integer, EE1 As Integer, DEE1 As Integer, TE1 As Integer, IGE1 As Integer, NE1 As Integer, SBE1 As Integer, GME1 As Integer, ME1 As Integer, VE1 As Integer, AE1 As Integer, AIE1 As Integer, DLE1 As Integer
Dim SME2 As Integer, OE2 As Integer, CME2 As Integer, EE2 As Integer, DEE2 As Integer, TE2 As Integer, IGE2 As Integer, NE2 As Integer, SBE2 As Integer, GME2 As Integer, ME2 As Integer, VE2 As Integer, AE2 As Integer, AIE2 As Integer, DLE2 As Integer
Dim SME3 As Integer, OE3 As Integer, CME3 As Integer, EE3 As Integer, DEE3 As Integer, TE3 As Integer, IGE3 As Integer, NE3 As Integer, SBE3 As Integer, GME3 As Integer, ME3 As Integer, VE3 As Integer, AE3 As Integer, AIE3 As Integer, DLE3 As Integer
Dim SMFA1 As Integer, OFA1 As Integer, CMFA1 As Integer, EFA1 As Integer, DEFA1 As Integer, TFA1 As Integer, IGFA1 As Integer, NFA1 As Integer, SBFA1 As Integer, GMFA1 As Integer, MFA1 As Integer, VFA1 As Integer, AFA1 As Integer, AIFA1 As Integer, DLFA1 As Integer
Dim SMFA2 As Integer, OFA2 As Integer, CMFA2 As Integer, EFA2 As Integer, DEFA2 As Integer, TFA2 As Integer, IGFA2 As Integer, NFA2 As Integer, SBFA2 As Integer, GMFA2 As Integer, MFA2 As Integer, VFA2 As Integer, AFA2 As Integer, AIFA2 As Integer, DLFA2 As Integer
Dim SMFA3 As Integer, OFA3 As Integer, CMFA3 As Integer, EFA3 As Integer, DEFA3 As Integer, TFA3 As Integer, IGFA3 As Integer, NFA3 As Integer, SBFA3 As Integer, GMFA3 As Integer, MFA3 As Integer, VFA3 As Integer, AFA3 As Integer, AIFA3 As Integer, DLFA3 As Integer
Dim SMHS1 As Integer, OHS1 As Integer, CMHS1 As Integer, EHS1 As Integer, DEHS1 As Integer, THS1 As Integer, IGHS1 As Integer, NHS1 As Integer, SBHS1 As Integer, GMHS1 As Integer, MHS1 As Integer, VHS1 As Integer, AHS1 As Integer, AIHS1 As Integer, DLHS1 As Integer
Dim SMHS2 As Integer, OHS2 As Integer, CMHS2 As Integer, EHS2 As Integer, DEHS2 As Integer, THS2 As Integer, IGHS2 As Integer, NHS2 As Integer, SBHS2 As Integer, GMHS2 As Integer, MHS2 As Integer, VHS2 As Integer, AHS2 As Integer, AIHS2 As Integer, DLHS2 As Integer
Dim SMHS3 As Integer, OHS3 As Integer, CMHS3 As Integer, EHS3 As Integer, DEHS3 As Integer, THS3 As Integer, IGHS3 As Integer, NHS3 As Integer, SBHS3 As Integer, GMHS3 As Integer, MHS3 As Integer, VHS3 As Integer, AHS3 As Integer, AIHS3 As Integer, DLHS3 As Integer

Private Sub cmdDisplay_Click()
'Display a Clear Screen
picDisplay.Cls
'Display All Information
picDisplay.Print Tab(8); "SM"; Tab(12); "OR"; Tab(16); "CM"; Tab(20); "EL"; Tab(24); "DE"; Tab(28); "TY"; Tab(32); "IG"; Tab(36); "NE"; Tab(40); "SB"; Tab(44); "GM"; Tab(48); "MT"; Tab(52); "VO"; Tab(56); "AV"; Tab(60); "AI"; Tab(64); "DL"
picDisplay.Print "HQ1"; Tab(8); SMHQ1; Tab(12); OHQ1; Tab(16); CMHQ1; Tab(20); EHQ1; Tab(24); DEHQ1; Tab(28); THQ1; Tab(32); IGHQ1; Tab(36); NHQ1; Tab(40); SBHQ1; Tab(44); GMHQ1; Tab(48); MHQ1; Tab(52); VHQ1; Tab(56); AHQ1; Tab(60); AIHQ1; Tab(64); DLHQ1
picDisplay.Print "HQ2"; Tab(8); SMHQ2; Tab(12); OHQ2; Tab(16); CMHQ2; Tab(20); EHQ2; Tab(24); DEHQ2; Tab(28); THQ2; Tab(32); IGHQ2; Tab(36); NHQ2; Tab(40); SBHQ2; Tab(44); GMHQ2; Tab(48); MHQ2; Tab(52); VHQ2; Tab(56); AHQ2; Tab(60); AIHQ2; Tab(64); DLHQ2
picDisplay.Print "T1"; Tab(8); SMT1; Tab(12); OT1; Tab(16); CMT1; Tab(20); ET1; Tab(24); DET1; Tab(28); TT1; Tab(32); IGT1; Tab(36); NT1; Tab(40); SBT1; Tab(44); GMT1; Tab(48); MT1; Tab(52); VT1; Tab(56); AT1; Tab(60); AIT1; Tab(64); DLT1
picDisplay.Print "T2"; Tab(8); SMT2; Tab(12); OT2; Tab(16); CMT2; Tab(20); ET2; Tab(24); DET2; Tab(28); TT2; Tab(32); IGT2; Tab(36); NT2; Tab(40); SBT2; Tab(44); GMT2; Tab(48); MT2; Tab(52); VT2; Tab(56); AT2; Tab(60); AIT2; Tab(64); DLT2
picDisplay.Print "T3"; Tab(8); SMT3; Tab(12); OT3; Tab(16); CMT3; Tab(20); ET3; Tab(24); DET3; Tab(28); TT3; Tab(32); IGT3; Tab(36); NT3; Tab(40); SBT3; Tab(44); GMT3; Tab(48); MT3; Tab(52); VT3; Tab(56); AT3; Tab(60); AIT3; Tab(64); DLT3
picDisplay.Print "T4"; Tab(8); SMT4; Tab(12); OT4; Tab(16); CMT4; Tab(20); ET4; Tab(24); DET4; Tab(28); TT4; Tab(32); IGT4; Tab(36); NT4; Tab(40); SBT4; Tab(44); GMT4; Tab(48); MT4; Tab(52); VT4; Tab(56); AT4; Tab(60); AIT4; Tab(64); DLT4
picDisplay.Print "T5"; Tab(8); SMT5; Tab(12); OT5; Tab(16); CMT5; Tab(20); ET5; Tab(24); DET5; Tab(28); TT5; Tab(32); IGT5; Tab(36); NT5; Tab(40); SBT5; Tab(44); GMT5; Tab(48); MT5; Tab(52); VT5; Tab(56); AT5; Tab(60); AIT5; Tab(64); DLT5
picDisplay.Print "T6"; Tab(8); SMT6; Tab(12); OT6; Tab(16); CMT6; Tab(20); ET6; Tab(24); DET6; Tab(28); TT6; Tab(32); IGT6; Tab(36); NT6; Tab(40); SBT6; Tab(44); GMT6; Tab(48); MT6; Tab(52); VT6; Tab(56); AT6; Tab(60); AIT6; Tab(64); DLT6
picDisplay.Print "E1"; Tab(8); SME1; Tab(12); OE1; Tab(16); CME1; Tab(20); EE1; Tab(24); DEE1; Tab(28); TE1; Tab(32); IGE1; Tab(36); NE1; Tab(40); SBE1; Tab(44); GME1; Tab(48); ME1; Tab(52); VE1; Tab(56); AE1; Tab(60); AIE1; Tab(64); DLE1
picDisplay.Print "E2"; Tab(8); SME2; Tab(12); OE2; Tab(16); CME2; Tab(20); EE2; Tab(24); DEE2; Tab(28); TE2; Tab(32); IGE2; Tab(36); NE2; Tab(40); SBE2; Tab(44); GME2; Tab(48); ME2; Tab(52); VE2; Tab(56); AE2; Tab(60); AIE2; Tab(64); DLE2
picDisplay.Print "E3"; Tab(8); SME3; Tab(12); OE3; Tab(16); CME3; Tab(20); EE3; Tab(24); DEE3; Tab(28); TE3; Tab(32); IGE3; Tab(36); NE3; Tab(40); SBE3; Tab(44); GME3; Tab(48); ME3; Tab(52); VE3; Tab(56); AE3; Tab(60); AIE3; Tab(64); DLE3
picDisplay.Print "FA1"; Tab(8); SMFA1; Tab(12); OFA1; Tab(16); CMFA1; Tab(20); EFA1; Tab(24); DEFA1; Tab(28); TFA1; Tab(32); IGFA1; Tab(36); NFA1; Tab(40); SBFA1; Tab(44); GMFA1; Tab(48); MFA1; Tab(52); VFA1; Tab(56); AFA1; Tab(60); AIFA1; Tab(64); DLFA1
picDisplay.Print "FA2"; Tab(8); SMFA2; Tab(12); OFA2; Tab(16); CMFA2; Tab(20); EFA2; Tab(24); DEFA2; Tab(28); TFA2; Tab(32); IGFA2; Tab(36); NFA2; Tab(40); SBFA2; Tab(44); GMFA2; Tab(48); MFA2; Tab(52); VFA2; Tab(56); AFA2; Tab(60); AIFA2; Tab(64); DLFA2
picDisplay.Print "FA3"; Tab(8); SMFA3; Tab(12); OFA3; Tab(16); CMFA3; Tab(20); EFA3; Tab(24); DEFA3; Tab(28); TFA3; Tab(32); IGFA3; Tab(36); NFA3; Tab(40); SBFA3; Tab(44); GMFA3; Tab(48); MFA3; Tab(52); VFA3; Tab(56); AFA3; Tab(60); AIFA3; Tab(64); DLFA3
picDisplay.Print "HS1"; Tab(8); SMHS1; Tab(12); OHS1; Tab(16); CMHS1; Tab(20); EHS1; Tab(24); DEHS1; Tab(28); THS1; Tab(32); IGHS1; Tab(36); NHS1; Tab(40); SBHS1; Tab(44); GMHS1; Tab(48); MHS1; Tab(52); VHS1; Tab(56); AHS1; Tab(60); AIHS1; Tab(64); DLHS1
picDisplay.Print "HS2"; Tab(8); SMHS2; Tab(12); OHS2; Tab(16); CMHS2; Tab(20); EHS2; Tab(24); DEHS2; Tab(28); THS2; Tab(32); IGHS2; Tab(36); NHS2; Tab(40); SBHS2; Tab(44); GMHS2; Tab(48); MHS2; Tab(52); VHS2; Tab(56); AHS2; Tab(60); AIHS2; Tab(64); DLHS2
picDisplay.Print "HS3"; Tab(8); SMHS3; Tab(12); OHS3; Tab(16); CMHS3; Tab(20); EHS3; Tab(24); DEHS3; Tab(28); THS3; Tab(32); IGHS3; Tab(36); NHS3; Tab(40); SBHS3; Tab(44); GMHS3; Tab(48); MHS3; Tab(52); VHS3; Tab(56); AHS3; Tab(60); AIHS3; Tab(64); DLHS3
'Totals
SMCount = SMHQ1 + SMHQ2 + SMT1 + SMT2 + SMT3 + SMT4 + SMT5 + SMT6 + SME1 + SME2 + SME3 + SMFA1 + SMFA2 + SMFA3 + SMHS1 + SMHS2 + SMHS3
OCount = OHQ1 + OHQ2 + OT1 + OT2 + OT3 + OT4 + OT5 + OT6 + OE1 + OE2 + OE3 + OFA1 + OFA2 + OFA3 + OHS1 + OHS2 + OHS3
CMCount = CMHQ1 + CMHQ2 + CMT1 + CMT2 + CMT3 + CMT4 + CMT5 + CMT6 + CME1 + CME2 + CME3 + CMFA1 + CMFA2 + CMFA3 + CMHS1 + CMHS2 + CMHS3
ECount = EHQ1 + EHQ2 + ET1 + ET2 + ET3 + ET4 + ET5 + ET6 + EE1 + EE2 + EE3 + EFA1 + EFA2 + EFA3 + EHS1 + EHS2 + EHS3
DECount = DEHQ1 + DEHQ2 + DET1 + DET2 + DET3 + DET4 + DET5 + DET6 + DEE1 + DEE2 + DEE3 + DEFA1 + DEFA2 + DEFA3 + DEHS1 + DEHS2 + DEHS3
TCount = THQ1 + THQ2 + TT1 + TT2 + TT3 + TT4 + TT5 + TT6 + TE1 + TE2 + TE3 + TFA1 + TFA2 + TFA3 + THS1 + THS2 + THS3
IGCount = IGHQ1 + IGHQ2 + IGT1 + IGT2 + IGT3 + IGT4 + IGT5 + IGT6 + IGE1 + IGE2 + IGE3 + IGFA1 + IGFA2 + IGFA3 + IGHS1 + IGHS2 + IGHS3
NCount = NHQ1 + NHQ2 + NT1 + NT2 + NT3 + NT4 + NT5 + NT6 + NE1 + NE2 + NE3 + NFA1 + NFA2 + NFA3 + NHS1 + NHS2 + NHS3
SBCount = SBHQ1 + SBHQ2 + SBT1 + SBT2 + SBT3 + SBT4 + SBT5 + SBT6 + SBE1 + SBE2 + SBE3 + SBFA1 + SBFA2 + SBFA3 + SBHS1 + SBHS2 + SBHS3
GMCount = GMHQ1 + GMHQ2 + GMT1 + GMT2 + GMT3 + GMT4 + GMT5 + GMT6 + GME1 + GME2 + GME3 + GMFA1 + GMFA2 + GMFA3 + GMHS1 + GMHS2 + GMHS3
MCount = MHQ1 + MHQ2 + MT1 + MT2 + MT3 + MT4 + MT5 + MT6 + ME1 + ME2 + ME3 + MFA1 + MFA2 + MFA3 + MHS1 + MHS2 + MHS3
VCount = VHQ1 + VHQ2 + VT1 + VT2 + VT3 + VT4 + VT5 + VT6 + VE1 + VE2 + VE3 + VFA1 + VFA2 + VFA3 + VHS1 + VHS2 + VHS3
ACount = AHQ1 + AHQ2 + AT1 + AT2 + AT3 + AT4 + AT5 + AT6 + AE1 + AE2 + AE3 + AFA1 + AFA2 + AFA3 + AHS1 + AHS2 + AHS3
AICount = AIHQ1 + AIHQ2 + AIT1 + AIT2 + AIT3 + AIT4 + AIT5 + AIT6 + AIE1 + AIE2 + AIE3 + AIFA1 + AIFA2 + AIFA3 + AIHS1 + AIHS2 + AIHS3
DLCount = DLHQ1 + DLHQ2 + DLT1 + DLT2 + DLT3 + DLT4 + DLT5 + DLT6 + DLE1 + DLE2 + DLE3 + DLFA1 + DLFA2 + DLFA3 + DLHS1 + DLHS2 + DLHS3
'Display Totals
picDisplay.Print "Total"; Tab(8); SMCount; Tab(12); OCount; Tab(16); CMCount; Tab(20); ECount; Tab(24); DECount; Tab(28); TCount; Tab(32); IGCount; Tab(36); NCount; Tab(40); SBCount; Tab(44); GMCount; Tab(48); MCount; Tab(52); VCount; Tab(56); ACount; Tab(60); AICount; Tab(64); DLCount
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
SMHQ1 = SMHQ1 + 30
Else: mnuLeaderSMHQ1.Checked = False
SMHQ1 = SMHQ1 - 30
End If
End Sub




