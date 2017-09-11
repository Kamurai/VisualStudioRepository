VERSION 5.00
Begin VB.Form frmSMHQ2 
   Caption         =   "Space Marines HQ2"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdSMHQ2Done 
      Caption         =   "Done"
      Height          =   255
      Left            =   3960
      TabIndex        =   0
      Top             =   2880
      Width           =   615
   End
   Begin VB.Menu mnuSMHQ2S 
      Caption         =   "HQ 2"
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
         Begin VB.Menu mnuEquipmentSMHQ2 
            Caption         =   "Equipment"
            Begin VB.Menu mnuBoltPistoSMlHQ2 
               Caption         =   "Bolt Pistol 01"
            End
            Begin VB.Menu mnuChainfistSMHQ2 
               Caption         =   "Chainfist (Terminators only)* 30"
            End
            Begin VB.Menu mnuCloseCombatWeaponSMHQ2 
               Caption         =   "Close Combat Weapon 01"
            End
            Begin VB.Menu mnuForceWeaponSMHQ2 
               Caption         =   "Force Weapon ('Librarians Only)* 40"
            End
            Begin VB.Menu mnuLightningClawSMHQ2 
               Caption         =   "Lightning Claw (Single)* 25"
            End
            Begin VB.Menu mnuLightningClawsSMHQ2 
               Caption         =   "Lightning Claw (pair, two choices)* 30"
            End
            Begin VB.Menu mnuPlasmaPistolSMHQ2 
               Caption         =   "Plasma Pistol 15"
            End
            Begin VB.Menu mnuPowerFistSMHQ2 
               Caption         =   "Power Fist* 25"
            End
            Begin VB.Menu mnuPowerWeaponSMHQ2 
               Caption         =   "Power Weapon* 15"
            End
            Begin VB.Menu mnuStormShieldSMHQ2 
               Caption         =   "Storm Shield* 10"
            End
            Begin VB.Menu mnuThunderHammerSMHQ2 
               Caption         =   "Thunder Hammer* 30"
            End
            Begin VB.Menu mnuBolterSMHQ2 
               Caption         =   "Bolter 02"
            End
            Begin VB.Menu mnuBolterFlamerSMHQ2 
               Caption         =   "Bolter-Flamer* 10"
            End
            Begin VB.Menu mnuBolterGrenadeLauncherSMHQ2 
               Caption         =   "Bolter-Grenade Launcher* 10"
            End
            Begin VB.Menu mnuBolterPlasmagunSMHQ2 
               Caption         =   "Bolter-Plasmagun* 15"
            End
            Begin VB.Menu mnuBolterMeltagunSMHQ2 
               Caption         =   "Bolter-Meltagun* 15"
            End
            Begin VB.Menu mnuStormBolterSMHQ2 
               Caption         =   "Storm Bolter* 05"
            End
            Begin VB.Menu mnuArtificerArmorSMHQ2 
               Caption         =   "Artificer Armor 20"
            End
            Begin VB.Menu mnuAuspexSMHQ2 
               Caption         =   "Auspex* 02"
            End
            Begin VB.Menu mnuBionicsSMHQ2 
               Caption         =   "Bionics 10"
            End
            Begin VB.Menu mnuFragGrenadesSMHQ2 
               Caption         =   "Frag Grenades 01"
            End
            Begin VB.Menu mnuHolyRelicSMHQ2 
               Caption         =   "Holy Relic (Chaplain only) (1)* 40"
            End
            Begin VB.Menu mnuIronHaloSMHQ2 
               Caption         =   "Iron Halo (1) 25"
            End
            Begin VB.Menu mnuJumpPackSMHQ2 
               Caption         =   "Jump Pack 20"
            End
            Begin VB.Menu mnuKrakGrenadesSMHQ2 
               Caption         =   "Krak Grenades 02"
            End
            Begin VB.Menu mnuMasterCraftedWeaponSMHQ2 
               Caption         =   "Master-Crafted Weapon* 15"
            End
            Begin VB.Menu mnuMeltaBombsSMHQ2 
               Caption         =   "Melta Bombs 05"
            End
            Begin VB.Menu mnuPyschicHoodSMHQ2 
               Caption         =   "Psychic Hood*L 25"
            End
            Begin VB.Menu mnuPuritySealsSMHQ2 
               Caption         =   "Purity Seals* 05"
            End
            Begin VB.Menu mnuSpaceMarineBikeSMHQ2 
               Caption         =   "Space Marine Bike 35"
            End
            Begin VB.Menu mnuTeleportHomerSMHQ2 
               Caption         =   "Teleport Homer* 05"
            End
            Begin VB.Menu mnuTerminatorArmorSMHQ2 
               Caption         =   "Terminator Armor 25"
            End
            Begin VB.Menu mnuTerminatorHonorsSMHQ2 
               Caption         =   "Terminator Honors 15"
            End
         End
         Begin VB.Menu mnuCommandSquadSMHQ2 
            Caption         =   "Command Squad"
            Begin VB.Menu mnuComSGTSMHQ2 
               Caption         =   "Sergeant 18"
            End
            Begin VB.Menu mnuEquipmentComSGTSMHQ2 
               Caption         =   "Sergeant Equipment"
               Begin VB.Menu mnuBoltPistoComSGTSMHQ2 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponComSGT2 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawComSGTSMHQ2 
                  Caption         =   "Lightning Claw (Single) 25"
               End
               Begin VB.Menu mnuLightningClawsComSGTSMHQ2 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolComSGTSMHQ2 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerFistComSGTSMHQ2 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuPowerWeaponComSGTSMHQ2 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuStormShieldComSGTSMHQ2 
                  Caption         =   "Storm Shield 10"
               End
               Begin VB.Menu mnuThunderHammerComSGTSMHQ2 
                  Caption         =   "Thunder Hammer 30"
               End
               Begin VB.Menu mnuBolterComSGTSMHQ2 
                  Caption         =   "Bolter 02"
               End
               Begin VB.Menu mnuBolterFlamerComSGTSMHQ2 
                  Caption         =   "Bolter-Flamer 10"
               End
               Begin VB.Menu mnuBolterGrenadeLauncherComSGTSMHQ2 
                  Caption         =   "Bolter-Grenade Launcher 10"
               End
               Begin VB.Menu mnuBolterPlasmagunComSGTSMHQ2 
                  Caption         =   "Bolter-Plasmagun 15"
               End
               Begin VB.Menu mnuBolterMeltagunComSGTSMHQ2 
                  Caption         =   "Bolter-Meltagun 15"
               End
               Begin VB.Menu mnuStormBolterComSGTSMHQ2 
                  Caption         =   "Storm Bolter 05"
               End
               Begin VB.Menu mnuAuspexComSGTSMHQ2 
                  Caption         =   "Auspex 02"
               End
               Begin VB.Menu mnuBionicsComSGTSMHQ2 
                  Caption         =   "Bionics 10"
               End
               Begin VB.Menu mnuFragGrenadesComSGTSMHQ2 
                  Caption         =   "Frag Grenades 01"
               End
               Begin VB.Menu mnuIronHaloComSGTSMHQ2 
                  Caption         =   "Iron Halo (1) 25"
               End
               Begin VB.Menu mnuKrakGrenadesComSGTSMHQ2 
                  Caption         =   "Krak Grenades 02"
               End
               Begin VB.Menu mnuMasterCraftedWeaponComSGTSMHQ2 
                  Caption         =   "Master-Crafted Weapon 15"
               End
               Begin VB.Menu mnuMeltaBombsComSGTSMHQ2 
                  Caption         =   "Melta Bombs 05"
               End
               Begin VB.Menu mnuPuritySealsComSGTSMHQ2 
                  Caption         =   "Purity Seals 05"
               End
               Begin VB.Menu mnuTeleportHomerComSGTSMHQ2 
                  Caption         =   "Teleport Homer05"
               End
               Begin VB.Menu mnuTerminatorHonorsComSGTSMHQ2 
                  Caption         =   "Terminator Honors 15"
               End
            End
            Begin VB.Menu mnuComVetSGTSMHQ2 
               Caption         =   "Veteran Sergeant 30"
            End
            Begin VB.Menu mnuEquipmentComVetSGTSMHQ2 
               Caption         =   "Veteran Sergeant Equipment"
               Begin VB.Menu mnuBoltPistolComVetSGTSMHQ2 
                  Caption         =   "Bolt Pistol 01"
               End
               Begin VB.Menu mnuCloseCombatWeaponComVetSGTSMHQ2 
                  Caption         =   "Close Combat Weapon 01"
               End
               Begin VB.Menu mnuLightningClawComVetSGTSMHQ2 
                  Caption         =   "Lightning Claw (Single) 25"
               End
               Begin VB.Menu mnuLightningClawsComVetSGTSMHQ2 
                  Caption         =   "Lightning Claws (pair, two choices) 30"
               End
               Begin VB.Menu mnuPlasmaPistolComVetSGTSMHQ2 
                  Caption         =   "Plasma Pistol 15"
               End
               Begin VB.Menu mnuPowerFistComVetSGTSMHQ2 
                  Caption         =   "Power Fist 25"
               End
               Begin VB.Menu mnuPowerWeaponComVetSGTSMHQ2 
                  Caption         =   "Power Weapon 15"
               End
               Begin VB.Menu mnuStormShieldComVetSGTSMHQ2 
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
            Begin VB.Menu mnuApothecarySMHQ1 
               Caption         =   "Apothecary 18"
               WindowList      =   -1  'True
            End
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
            Begin VB.Menu mnuTechMarineSMHQ1 
               Caption         =   "Tech-Marine 18"
            End
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
            Begin VB.Menu mnuStandardBearerSMHQ1 
               Caption         =   "Standard Bearer 18"
            End
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
   End
End
Attribute VB_Name = "frmSMHQ2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
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

Private Sub cmdSMHQ2Done_Click()
frmSMHQ2.Hide
End Sub
