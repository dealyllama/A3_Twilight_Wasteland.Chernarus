// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	Lootspawner junction lists for classes to spawn-/lootable items
//	Author: Na_Palm (BIS forums)
//-------------------------------------------------------------------------------------
//here place Weapons an usable items (ex.: Binocular, ...)
//used with addWeaponCargoGlobal
//"lootWeapon_list" array of [class, [weaponlist]]
//                              class       : 0-civil, 1-military, ... (add more as you wish)
//                              weaponlist  : list of weapon class names
lootWeapon_list =
[
	[ // CIVIL
		0,
		[
			"CUP_hgun_Duty",
			"CUP_hgun_Colt1911",
			"CUP_hgun_TaurusTracker455",
			"CUP_srifle_LeeEnfield"
	                    
		]
	],
	[ // MILITARY
		1,
		[

			"CUP_smg_MP5A5",
			"CUP_smg_MP5SD6",
			"CUP_smg_bizon",
			"CUP_arifle_AK47",
			"CUP_arifle_AKM",
			"CUP_arifle_FNFAL_railed",
			"CUP_arifle_M16A2",
			"CUP_lmg_minimi_railed",
			"CUP_lmg_M240",
			"CUP_srifle_M14_DMR",
			"CUP_srifle_M40A3",
			"CUP_srifle_Mk12SPR",
			"CUP_srifle_SVD",
			"CUP_srifle_VSSVintorez"
		]

	],
	[ // INDUSTRIAL
		2,
		[
			"CUP_hgun_Duty",
			"CUP_hgun_Glock17",
			"CUP_hgun_TaurusTracker455",
			"CUP_srifle_LeeEnfield"                      
		]
	],
	[ // RESEARCH
		3,
		[
			"CUP_hgun_M9"
			
		] 
	]
];

//here place magazines, weaponattachments and bodyitems(ex.: ItemGPS, ItemMap, Medikit, FirstAidKit, Binoculars, ...)
//used with addMagazineCargoGlobal
//"lootMagazine_list" array of [class, [magazinelist]]
//                              class       : 0-civil, 1-military, ... (add more as you wish)
//                              magazinelist: list of magazine class names
lootMagazine_list =
[
	[ // CIVIL
		0,
		[
			"16Rnd_9x21_Mag",
			"CUP_7Rnd_45ACP_1911",
			"CUP_6Rnd_45ACP_M"
		]
	],
	[ // MILITARY
		1,
		[
			"CUP_30Rnd_9x19_MP5",
			"CUP_64Rnd_9x19_Bizon_M",
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_30Rnd_556x45_Stanag",
			"CUP_20Rnd_556x45_Stanag",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_5x_22_LR_17_HMR_M",
			"CUP_10Rnd_762x51_CZ750",
			"CUP_10x_303_M",
			"CUP_20Rnd_762x51_DMR",
			"CUP_5Rnd_762x51_M24",
			"CUP_10Rnd_762x54_SVD_M",
			"CUP_20Rnd_9x39_SP5_VSS_M"

		]
	],
	[ // INDUSTRIAL
		2,
		[
			"16Rnd_9x21_Mag",
			"CUP_17Rnd_9x19_glock17",
			"CUP_7Rnd_45ACP_1911",
			"CUP_15Rnd_9x19_M9",
			"CUP_6Rnd_45ACP_M",
			"CUP_8Rnd_B_Beneli_74Slug",
			"CUP_8Rnd_B_Beneli_74Pellets"
		]
	],
	[ // RESEARCH
		3,
		[
			"16Rnd_9x21_Mag"
		
		]
	]
];

//here place hats, glasses, clothes, uniforms, vests
//used with addItemCargoGlobal
//"lootItem_list" array of [class, [itemlist]]
//                              class       : 0-civil, 1-military, ... (add more as you wish)
//                              itemlist    : list of item class names
lootItem_list =
[
	[ // CIVIL
		0,
		[
		//Generic Gear
			"Binocular",
			"ItemCompass",
			"FirstAidKit",
			"ItemGPS",
			"ItemRadio",

			//Uniforms
			"U_BG_Guerilla2_2",
			"U_BG_Guerilla2_1",
			"U_BG_Guerilla2_3",
			"U_BG_Guerilla3_1",
			"U_BG_leader",
			"U_C_Journalist",
			"CUP_O_TKI_Khet_Jeans_04",
			"CUP_O_TKI_Khet_Jeans_02",
			"CUP_O_TKI_Khet_Jeans_01",
			"CUP_O_TKI_Khet_Jeans_03",
			"CUP_U_O_Partisan_TTsKO",
			"CUP_U_O_Partisan_TTsKO_Mixed",
			"CUP_U_O_Partisan_VSR_Mixed1",
			"CUP_U_O_Partisan_VSR_Mixed2",
			"CUP_V_C_Police_Holster",
			"CUP_U_C_Policeman_01",
			"CUP_U_C_Priest_01",
			"CUP_U_C_Profiteer_02",
			"CUP_U_C_Profiteer_03",
			"CUP_U_C_Profiteer_04",
			"CUP_U_C_Rocker_01",
			"CUP_U_C_Rocker_03",
			"CUP_U_C_Rocker_02",
			"CUP_U_C_Rocker_04",
			"CUP_U_C_Suit_01",
			"CUP_U_C_Villager_01",
			"CUP_U_C_Villager_04",
			"CUP_U_C_Villager_02",
			"CUP_U_C_Villager_03",
			"CUP_U_C_Woodlander_01",
			"CUP_U_C_Woodlander_02",
			"CUP_U_C_Woodlander_03",
			"CUP_U_C_Woodlander_04",
			"CUP_U_C_Worker_01",
			"U_C_WorkerCoveralls",
			//Chest Rigs
			"V_Press_F",

			//Hats - because people need to wear more hats.
			"H_Bandanna_gry",
			"H_Bandanna_blu",
			"H_Bandanna_cbr",
			"CUP_H_FR_BandanaGreen",
			"H_Watchcap_blk",
			"H_StrawHat",
			"CUP_H_C_Ushanka_03",
			"H_Cap_grn_BI",
			"H_Cap_blk_CMMG",
			"H_Cap_grn",
			"H_Cap_police",
			"H_Cap_press"

		]
	],
	[ // MILITARY
		1,
		[
		//Gear
			"FirstAidKit",
			"ItemGPS",
			"Medikit",
			"Binocular",
			"ItemCompass",
			"ItemRadio",
		
		//Uniforms
		"CUP_U_B_CZ_WDL_TShirt",
		"CUP_U_B_GER_Flecktarn_2",
		"CUP_U_B_GER_Tropentarn_2",
		"CUP_U_B_GER_Flecktarn_1",
		"CUP_U_B_GER_Tropentarn_1",
		"CUP_O_TKI_Khet_Jeans_04",
		"CUP_O_TKI_Khet_Jeans_02",
		"CUP_O_TKI_Khet_Jeans_01",
		"CUP_O_TKI_Khet_Jeans_03",
		"CUP_U_B_USMC_Officer",
		"CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad",
		"CUP_U_B_USMC_MARPAT_WDL_RolledUp",
		"CUP_U_B_USMC_MARPAT_WDL_Kneepad",
		"CUP_U_B_USMC_MARPAT_WDL_TwoKneepads",
		"CUP_U_B_USMC_MARPAT_WDL_Sleeves",
		"CUP_U_I_GUE_Flecktarn2",
		"CUP_U_I_GUE_Flecktarn3",
		"CUP_U_I_GUE_Flecktarn",
		"CUP_U_I_GUE_Woodland1",
		"CUP_B_USMC_Navy_Blue",
		"CUP_B_USMC_Navy_Brown",
		"CUP_B_USMC_Navy_Green",
		"CUP_U_I_RACS_Desert_2",
		"CUP_U_I_RACS_Urban_2",
		"CUP_U_I_RACS_Desert_1",
		"CUP_U_I_RACS_Urban_1",
		"CUP_U_B_FR_DirAction2",
		"CUP_U_B_FR_Corpsman",
		"CUP_U_B_FR_Light",
		"CUP_U_B_FR_Scout1",
		"CUP_U_B_FR_Scout2",
		"CUP_U_B_FR_Scout3",
		"CUP_U_B_FR_Scout",

		//Ghillies
		"CUP_U_B_GER_Ghillie",
		"CUP_U_B_GER_Fleck_Ghillie",
		"CUP_U_B_USMC_Ghillie_WDL",
		"CUP_U_I_Ghillie_Top",



		//Fashionable Headwear
		"H_Bandanna_gry",
		"H_Bandanna_blu",
		"H_Bandanna_cbr",
		"CUP_H_FR_BandanaGreen",
		"H_Watchcap_blk",
		"CUP_H_C_Beanie_01",
		"H_Beret_blk",
		"CUP_H_C_Beret_04",
		"CUP_H_C_Beret_02",
		"H_Beret_02",
		"CUP_H_Ger_Boonie_Flecktarn",
		"CUP_H_FR_BoonieMARPAT",
		"CUP_H_Ger_Boonie_desert",
		"CUP_H_FR_BoonieWDL",
		"H_Cap_grn_BI",
		"H_Cap_blk_CMMG",
		"H_Cap_grn",
		"H_Cap_khaki_specops_UK",
		"H_Cap_usblack",
		"H_HelmetB",
		"CUP_H_PMC_EP_Headset",
		"CUP_H_SLA_Beret",
		"CUP_H_NAPA_Fedora",
		"CUP_H_RACS_Helmet_DPAT",
		"CUP_H_RACS_Helmet_Goggles_DPAT",
		"CUP_H_RACS_Helmet_Headset_DPAT",
		"CUP_H_RACS_Helmet_Goggles_DES",
		"H_Shemag_olive",
		"CUP_H_TK_Helmet",
		"CUP_H_C_Ushanka_03",
		"CUP_H_USMC_Crew_Helmet",
		"CUP_H_USMC_HelmetWDL",
		"CUP_H_USMC_Goggles_HelmetWDL",

		//Chest Rigs
		"CUP_V_O_SLA_Flak_Vest03",
		"CUP_V_O_SLA_Flak_Vest01",
		"CUP_V_O_SLA_Flak_Vest02",
		"CUP_V_I_Carrier_Belt",
		"V_Chestrig_blk",
		"V_Chestrig_rgr",
		"V_Chestrig_khk",
		"CUP_V_B_GER_Carrier_Vest",
		"CUP_V_B_GER_Carrier_Vest_3",
		"CUP_V_B_GER_Carrier_Vest_2",
		"CUP_V_B_GER_Carrier_Rig_2",
		"CUP_V_B_GER_Carrier_Rig_2_Brown",
		"CUP_V_B_GER_Carrier_Rig",
		"CUP_V_B_GER_Carrier_Rig_3_Brown",
		"CUP_V_B_GER_Vest_1",
		"CUP_V_B_GER_Vest_2",
		"CUP_V_B_RRV_DA2",
		"CUP_V_B_RRV_DA1",
		"CUP_V_B_MTV_Pouches",
		"CUP_V_B_MTV_PistolBlack",
		"CUP_V_B_MTV",
		"CUP_V_B_MTV_Mine",
		"CUP_V_B_MTV_LegPouch",
		"CUP_V_B_MTV_Marksman",
		"CUP_V_B_MTV_MG",
		"CUP_V_B_MTV_Patrol",
		"CUP_V_B_MTV_noCB",
		"CUP_V_B_MTV_TL",
		"CUP_V_B_PilotVest",
		"CUP_V_I_RACS_Carrier_Vest",
		"CUP_V_I_RACS_Carrier_Vest_3",
		"CUP_V_I_RACS_Carrier_Vest_2",
		"CUP_V_I_RACS_Carrier_Rig_2",
		"CUP_V_I_RACS_Carrier_Rig_3",
		"CUP_V_B_RRV_MG",
		"CUP_V_B_RRV_Medic",
		"CUP_V_B_RRV_Officer",
		"CUP_V_B_RRV_Scout",
		"CUP_V_B_RRV_Scout2",
		"CUP_V_B_RRV_Scout3",
		"CUP_V_B_RRV_TL",
		"CUP_V_O_TK_Vest_1",
		"CUP_V_O_TK_Vest_2",

		//Scopes
		"CUP_optic_CWS",
		"CUP_optic_ACOG",


		//Attachments
		"CUP_acc_CZ_M3X",
		"acc_flashlight",
		"CUP_acc_Flashlight",
		"CUP_acc_Flashlight_desert",
		"CUP_acc_Flashlight_wdl",
		"CUP_acc_Glock17_Flashlight",
		"acc_pointer_IR",
		"CUP_bipod_VLTOR_Modpod",
		"CUP_bipod_Harris_1A2_L",

		//Supressors
		"CUP_muzzle_snds_M16_camo",
		"CUP_muzzle_snds_M14"


		]
	],
	[ // INDUSTRIAL
		2,
		[
//Generic Gear
			"Binocular",
			"ItemCompass",
			"FirstAidKit",
			"ItemGPS",
			"ItemRadio",

			//Uniforms
			"U_BG_Guerilla2_2",
			"U_BG_Guerilla2_1",
			"U_BG_Guerilla2_3",
			"U_BG_Guerilla3_1",
			"U_BG_leader",
			"U_C_Journalist",
			"CUP_O_TKI_Khet_Jeans_04",
			"CUP_O_TKI_Khet_Jeans_02",
			"CUP_O_TKI_Khet_Jeans_01",
			"CUP_O_TKI_Khet_Jeans_03",
			"CUP_U_O_Partisan_TTsKO",
			"CUP_U_O_Partisan_TTsKO_Mixed",
			"CUP_U_O_Partisan_VSR_Mixed1",
			"CUP_U_O_Partisan_VSR_Mixed2",
			"CUP_V_C_Police_Holster",
			"CUP_U_C_Policeman_01",
			"CUP_U_C_Priest_01",
			"CUP_U_C_Profiteer_02",
			"CUP_U_C_Profiteer_03",
			"CUP_U_C_Profiteer_04",
			"CUP_U_C_Rocker_01",
			"CUP_U_C_Rocker_03",
			"CUP_U_C_Rocker_02",
			"CUP_U_C_Rocker_04",
			"CUP_U_C_Suit_01",
			"CUP_U_C_Villager_01",
			"CUP_U_C_Villager_04",
			"CUP_U_C_Villager_02",
			"CUP_U_C_Villager_03",
			"CUP_U_C_Woodlander_01",
			"CUP_U_C_Woodlander_02",
			"CUP_U_C_Woodlander_03",
			"CUP_U_C_Woodlander_04",
			"CUP_U_C_Worker_01",
			"U_C_WorkerCoveralls",
			//Chest Rigs
			"V_Press_F",

			//Hats - because people need to wear more hats.
			"H_Bandanna_gry",
			"H_Bandanna_blu",
			"H_Bandanna_cbr",
			"CUP_H_FR_BandanaGreen",
			"H_Watchcap_blk",
			"H_StrawHat",
			"CUP_H_C_Ushanka_03",
			"H_Cap_grn_BI",
			"H_Cap_blk_CMMG",
			"H_Cap_grn",
			"H_Cap_police",
			"H_Cap_press"
		]
	],
	[ // RESEARCH
		3,
		[
//Gear
			"FirstAidKit",
			"ItemGPS",
			"Medikit",
			"Binocular",
			"ItemCompass",
			"ItemRadio",
		
		//Uniforms
		"CUP_U_B_CZ_WDL_TShirt"

		]
	]
];

//here place backpacks, parachutes and packed drones/stationary
//used with addBackpackCargoGlobal
//"lootBackpack_list" array of [class, [backpacklist]]
//                              class       : 0-civil, 1-military, ... (add more as you wish)
//                              backpacklist: list of backpack class names
lootBackpack_list =
[
	[ // CIVIL
		0,
		[
			"B_FieldPack_blk",
			"B_FieldPack_cbr",
			"B_FieldPack_khk",
			"B_FieldPack_oucamo"
		]
	],
	[ // MILITARY
		1,
		[
			"B_FieldPack_blk",
			"B_FieldPack_cbr",
			"B_FieldPack_khk",
			"B_FieldPack_oucamo",
			"B_Kitbag_cbr",
			"B_Kitbag_rgr",
			"B_Kitbag_mcamo",
			"B_Kitbag_sgg",
			"B_Bergen_blk",
			"B_Bergen_rgr",
			"B_Bergen_mcamo",
			"B_Bergen_sgg",
			"B_Carryall_khk",
			"B_Carryall_mcamo",
			"B_Carryall_oli",
			"B_Carryall_oucamo"
		]
	],
	[ // INDUSTRIAL
		2,
		[
			"B_FieldPack_blk",
			"B_FieldPack_cbr",
			"B_FieldPack_khk",
			"B_FieldPack_oucamo",
			"B_Kitbag_cbr",
			"B_Kitbag_rgr",
			"B_Kitbag_mcamo",
			"B_Kitbag_sgg"
		]
	],
	[ // RESEARCH
		3,
		[
			"B_FieldPack_blk",
			"B_FieldPack_cbr",
			"B_FieldPack_khk",
			"B_FieldPack_oucamo",
			"B_Kitbag_cbr",
			"B_Kitbag_rgr",
			"B_Kitbag_mcamo",
			"B_Kitbag_sgg",
			"B_Bergen_blk",
			"B_Bergen_rgr",
			"B_Bergen_mcamo",
			"B_Bergen_sgg",
			"B_Carryall_khk",
			"B_Carryall_mcamo",
			"B_Carryall_oli",
			"B_Carryall_oucamo"
		]
	]
];

//here place any other objects(ex.: Land_Basket_F, Box_East_Wps_F, Land_Can_V3_F, ...)
//used with createVehicle directly
//"lootworldObject_list" array of [class, [objectlist]]
//                              class       : 0-civil, 1-military, ... (add more as you wish)
//                              objectlist  : list of worldobject class names
lootworldObject_list =
[
	[ // CIVIL
		0,
		[
			"Land_BakedBeans_F",                // food
			"Land_BakedBeans_F",                // food
			"Land_BottlePlastic_V2_F",          // water
			"Land_BottlePlastic_V2_F",          // water
			"Land_Can_V3_F",                    // energydrink
			"Land_Suitcase_F",                  // repairkit
			"Land_CanisterOil_F",               // syphon hose
			"Land_CanisterFuel_F"               // jerrycan
		]
	],
	[ // MILITARY
		1,
		[
			"Land_BakedBeans_F",                // food
			"Land_BottlePlastic_V2_F",          // water
			"Land_Can_V3_F",                    // energydrink
			"Land_Suitcase_F",                  // repairkit
			"Land_CanisterOil_F",               // syphon hose
			"Land_CanisterFuel_F"               // jerrycan
		]
	],
	[ // INDUSTRIAL
		2,
		[
			"Land_BakedBeans_F",                // food
			"Land_BottlePlastic_V2_F",          // water
			"Land_Can_V3_F",                    // energydrink
			"Land_Suitcase_F",                  // repairkit
			"Land_Suitcase_F",                  // repairkit
			"Land_CanisterOil_F",               // syphon hose
			"Land_CanisterOil_F",               // syphon hose
			"Land_CanisterFuel_F",              // jerrycan
			"Land_CanisterFuel_F"               // jerrycan
		]
	],
	[ // RESEARCH
		3,
		[
			"Land_BakedBeans_F",                // food
			"Land_BottlePlastic_V2_F",          // water
			"Land_Can_V3_F",                    // energydrink
			"Land_Suitcase_F",                  // repairkit
			"Land_CanisterOil_F",               // syphon hose
			"Land_CanisterFuel_F"               // jerrycan
		]
	]
];
