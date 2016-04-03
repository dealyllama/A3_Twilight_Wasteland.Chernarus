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
			"CUP_arifle_AK47",
			"CUP_arifle_AK74",
			"CUP_arifle_AKM",
			"CUP_arifle_FNFAL",
			"CUP_lmg_minimi_railed",
			"CUP_lmg_minimipara",
			"CUP_arifle_M16A2",
			"CUP_arifle_M4A1_Aim"                        
		]
	],
	[ // MILITARY
		1,
		[
			"CUP_arifle_AK47",
			"CUP_arifle_AK74",
			"CUP_arifle_AKM",
			"CUP_arifle_FNFAL",
			"CUP_lmg_minimi_railed",
			"CUP_lmg_minimipara",
			"CUP_arifle_M16A2",
			"CUP_arifle_M4A1_Aim"  
		]
	],
	[ // INDUSTRIAL
		2,
		[
			"CUP_arifle_AK47",
			"CUP_arifle_AK74",
			"CUP_arifle_AKM",
			"CUP_arifle_FNFAL",
			"CUP_lmg_minimi_railed",
			"CUP_lmg_minimipara",
			"CUP_arifle_M16A2",
			"CUP_arifle_M4A1_Aim"                         
		]
	],
	[ // RESEARCH
		3,
		[
			"CUP_arifle_AK47",
			"CUP_arifle_AK74",
			"CUP_arifle_AKM",
			"CUP_arifle_FNFAL",
			"CUP_lmg_minimi_railed",
			"CUP_lmg_minimipara",
			"CUP_arifle_M16A2",
			"CUP_arifle_M4A1_Aim"  
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

			"CUP_30Rnd_762x39_AK47_M",
			"CUP_30Rnd_545x39_AK_M",
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_30Rnd_556x45_Stanag"
		]
	],
	[ // MILITARY
		1,
		[
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_30Rnd_545x39_AK_M",
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_30Rnd_556x45_Stanag"
		]
	],
	[ // INDUSTRIAL
		2,
		[
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_30Rnd_545x39_AK_M",
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_30Rnd_556x45_Stanag"
		]
	],
	[ // RESEARCH
		3,
		[
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_30Rnd_545x39_AK_M",
			"CUP_30Rnd_762x39_AK47_M",
			"CUP_20Rnd_762x51_FNFAL_M",
			"CUP_200Rnd_TE4_Green_Tracer_556x45_M249",
			"CUP_30Rnd_556x45_Stanag"
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
			"acc_flashlight",
			"FirstAidKit",
			"FirstAidKit",
			"FirstAidKit"
		]
	],
	[ // MILITARY
		1,
		[
			"FirstAidKit",
			"ItemGPS",
			"Medikit",
			"NVGoggles",
			//"NVGoggles_INDEP",
			//"NVGoggles_OPFOR",
			"ToolKit",
			"H_HelmetB",
			"H_HelmetIA",
			"H_HelmetO_ocamo",
			"V_PlateCarrier1_rgr",
			"V_PlateCarrierIA1_dgtl",
			"V_HarnessO_brn"
		]
	],
	[ // INDUSTRIAL
		2,
		[
			"FirstAidKit",
			"FirstAidKit",
			"Medikit",
			"ToolKit",
			"ToolKit"
		]
	],
	[ // RESEARCH
		3,
		[
			"FirstAidKit",
			"FirstAidKit",
			"FirstAidKit",
			"ItemGPS",
			"Medikit"
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
