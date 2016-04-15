// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["CZ Duty Pistol", "CUP_hgun_Duty", 300],
	["Glock 17", "CUP_hgun_Glock17", 350],
	["Colt 1911", "CUP_hgun_Colt1911", 350],
	["M9", "CUP_hgun_M9", 300],
	["Taurus Tracker", "CUP_hgun_TaurusTracker455", 400]
];

smgArray = compileFinal str
[
	["", "CUP_smg_MP5A5", 1500],
	["", "CUP_smg_bizon", 1800],
	["", "CUP_smg_MP5SD6", 2000]
];

rifleArray = compileFinal str
[

	// Assault Rifles
	["M16A2", "CUP_arifle_M16A4_Basic", 2500],
	["M4A1", "CUP_arifle_M4A1", 2500],
	["AK74", "CUP_arifle_AK74", 1800],
	["FN FAL", "CUP_arifle_FNFAL_railed", 2700],

	// Markman Rifles
	["", "CUP_srifle_M14_DMR", 4000],
	["", "CUP_srifle_Mk12SPR", 3500],
	["", "CUP_srifle_VSSVintorez", 3000],


	// Sniper Rifles
	["", "CUP_srifle_SVD", 5000],
	["", "CUP_srifle_M40A3", 6000],

	//Shoties
	["", "CUP_sgun_Saiga12K", 1500],
	["", "CUP_sgun_M1014", 1000]
];

lmgArray = compileFinal str
[
	["", "CUP_lmg_minimi_railed", 8000],
	["", "CUP_lmg_M240", 9000],
	["", "CUP_lmg_PKM", 5000],
	["", "CUP_arifle_RPK74_45", 3000],
	["", "CUP_lmg_Mk48_wdl", 12000],
	["", "CUP_lmg_m249_pip2", 10000]

];

launcherArray = compileFinal str
[
	["", "CUP_launch_Javelin", 15000],
	["", "CUP_launch_FIM92Stinger", 10000],
	["", "CUP_launch_Igla", 8000],
	["", "CUP_launch_MAAWS", 9000],
	["", "CUP_launch_RPG7V", 5000],
	["", "CUP_launch_9K32Strela", 7000]
	
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Mk6 Mortar (AAF)", "I_Mortar_01_F", 20000]
];

throwputArray = compileFinal str
[
	["Mini Grenade", "MiniGrenade", 200],
	["Frag Grenade", "HandGrenade", 300],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 500],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 500],
	["APERS Mine", "APERSMine_Range_Mag", 400],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 300],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 600],
	["AT Mine", "ATMine_Range_Mag", 700],
	["Explosive Charge", "DemoCharge_Remote_Mag", 750],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 800],
	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["Glock 17 Mag", "CUP_17Rnd_9x19_glock17", 10],
	["M1911 Mag", "CUP_7Rnd_45ACP_1911", 10],
	["M9 Mag", "CUP_15Rnd_9x19_M9", 10],
	["Taurus Tracker Speedloader", "CUP_6Rnd_45ACP_M", 10],
	["AK74 Mag", "CUP_30Rnd_545x39_AK_M", 10],
	["30Rnd STANAG", "CUP_30Rnd_556x45_Stanag", 10],
	["20Rnd STANAG", "CUP_20Rnd_556x45_Stanag", 10],
	["", "CUP_30Rnd_9x19_MP5", 10],
	["", "CUP_8Rnd_B_Beneli_74Slug", 10],
	["", "CUP_8Rnd_B_Beneli_74Pellets", 10],
	["", "CUP_8Rnd_B_Saiga12_74Slug_M", 10],
	["", "CUP_8Rnd_B_Saiga12_74Pellets_M", 10],
	["", "CUP_200Rnd_TE4_Green_Tracer_556x45_M249", 10],
	["", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 10],
	["", "CUP_100Rnd_556x45_BetaCMag", 10],
	["", "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", 10],
	["", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 10],
	["", "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 10],
	["", "CUP_100Rnd_556x45_BetaCMag", 10],
	["", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 10],
	["", "CUP_20Rnd_762x51_FNFAL_M", 10],
	["", "CUP_5x_22_LR_17_HMR_M", 10],
	["", "CUP_10x_303_M", 10],
	["", "CUP_20Rnd_762x51_DMR", 10],
	["", "CUP_5Rnd_762x51_M24", 10],
	["", "CUP_10Rnd_762x54_SVD_M", 10],
	["", "CUP_20Rnd_9x39_SP5_VSS_M", 10],
	["", "CUP_Javelin_M", 10],
	["", "CUP_Stinger_M", 10],
	["", "CUP_Igla_M", 10],
	["", "CUP_MAAWS_HEAT_M", 10],
	["", "CUP_MAAWS_HEDP_M", 10],
	["", "CUP_PG7V_M", 10],
	["", "CUP_PG7VM_M", 10],
	["", "CUP_Strela_2_M", 10]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[

	["", "CUP_muzzle_snds_L85", 50, "item"],
	["", "CUP_muzzle_snds_M16_camo", 50, "item"],
	["", "CUP_muzzle_snds_M14", 50, "item"],
	["", "CUP_muzzle_snds_M9", 50, "item"],
	["", "CUP_optic_ACOG", 50, "item"],
	["", "CUP_optic_TrijiconRx01_black", 50, "item"],
	["", "CUP_optic_ElcanM145", 50, "item"],
	["", "CUP_optic_Elcan_reflex", 50, "item"],
	["", "CUP_optic_HoloBlack", 50, "item"],
	["", "CUP_optic_HoloWdl", 50, "item"],
	["", "CUP_optic_Eotech533Grey", 50, "item"],
	["", "CUP_optic_Kobra", 50, "item"],
	["", "CUP_optic_PSO_1", 50, "item"],
	["", "CUP_optic_PSO_3", 50, "item"],
	["", "CUP_optic_PGO7V3", 50, "item"],
	["", "CUP_optic_LeupoldMk4snds_L", 50, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[

	["", "CUP_H_Ger_Boonie_Flecktarn", 50, "hat"],
	["", "CUP_H_FR_BoonieMARPAT", 50, "hat"],
	["", "CUP_H_Ger_Boonie_desert", 50, "hat"],
	["", "H_HelmetB", 50, "hat"],
	["", "CUP_H_PMC_EP_Headset", 50, "hat"],
	["", "CUP_H_RACS_Helmet_DPAT", 50, "hat"],
	["", "CUP_H_RACS_Helmet_Headset_DPAT", 50, "hat"],
	["", "H_Shemag_olive", 50, "hat"],
	["", "CUP_H_TK_Helmet", 50, "hat"],
	["", "CUP_H_USMC_Crew_Helmet", 50, "hat"],
	["", "CUP_H_USMC_HelmetWDL", 50, "hat"],
	["", "CUP_H_USMC_Goggles_HelmetWDL", 50, "hat"]


];

uniformArray = compileFinal str
[

	["", "CUP_U_B_BAF_DPM_S2_UnRolled", 300, "uni"],
	["", "CUP_U_B_BAF_DPM_S1_RolledUp", 300, "uni"],
	["", "CUP_U_B_BAF_MTP_S2_UnRolled", 300, "uni"],
	["", "CUP_U_B_BAF_MTP_S1_RolledUp", 300, "uni"],
	["", "CUP_U_B_GER_Tropentarn_1", 300, "uni"],
	["", "CUP_U_B_GER_Flecktarn_1", 300, "uni"],
	["", "CUP_U_B_FR_DirAction2", 300, "uni"],
	["", "CUP_U_B_FR_Scout2", 300, "uni"],
	["", "CUP_U_B_BAF_DPM_Ghillie", 300, "uni"],
	["", "CUP_U_B_USMC_Ghillie_WDL", 300, "uni"],
	["", "CUP_U_O_CHDKZ_Kam_03", 300, "uni"],
	["", "CUP_U_O_CHDKZ_Kam_04", 300, "uni"],
	["", "CUP_U_O_CHDKZ_Kam_05", 300, "uni"],
	["", "CUP_U_O_Partisan_VSR_Mixed1", 300, "uni"],
	["", "CUP_U_O_Partisan_VSR_Mixed2", 300, "uni"],
	["", "CUP_U_O_RUS_Gorka_Green", 300, "uni"],
	["", "CUP_U_O_RUS_Gorka_Partizan", 300, "uni"],
	["", "CUP_U_O_RUS_Ghillie", 300, "uni"],
	["", "CUP_U_I_GUE_Flecktarn", 300, "uni"],
	["", "CUP_U_I_GUE_Flecktarn3", 300, "uni"],
	["", "CUP_U_I_GUE_Woodland1", 300, "uni"],
	["", "CUP_U_I_GUE_Flecktarn2", 300, "uni"],
	["", "CUP_U_I_RACS_Urban_2", 300, "uni"],
	["", "CUP_U_I_RACS_Urban_1", 300, "uni"],
	["", "CUP_U_I_GUE_Anorak_02", 300, "uni"],
	["", "CUP_U_I_GUE_Anorak_01", 300, "uni"],	
	["", "CUP_U_I_Ghillie_Top", 300, "uni"]

];

vestArray = compileFinal str
[

	["", "CUP_V_O_SLA_Flak_Vest01", 100, "vest"],
	["", "CUP_V_I_Carrier_Belt", 100, "vest"],
	["", "CUP_V_B_GER_Carrier_Vest_2", 100, "vest"],
	["", "CUP_V_B_GER_Vest_1", 100, "vest"],
	["", "CUP_V_B_GER_Vest_2", 100, "vest"],
	["", "CUP_V_B_MTV_Pouches", 100, "vest"],
	["", "CUP_V_B_MTV_Marksman", 100, "vest"],
	["", "CUP_V_B_PilotVest", 100, "vest"],
	["", "CUP_V_I_RACS_Carrier_Vest", 100, "vest"],
	["", "CUP_V_B_RRV_MG", 100, "vest"],
	["", "CUP_V_B_RRV_Scout", 100, "vest"]
];

backpackArray = compileFinal str
[

/*
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

*/

	["", "B_FieldPack_blk", 500, "backpack"],
	["", "B_FieldPack_cbr", 500, "backpack"],
	["", "B_FieldPack_khk", 500, "backpack"],
	["", "B_FieldPack_oucamo", 500, "backpack"],
	["", "B_Kitbag_cbr", 500, "backpack"],
	["", "B_Kitbag_rgr", 500, "backpack"],
	["", "B_Kitbag_mcamo", 500, "backpack"],
	["", "B_Kitbag_sgg", 500, "backpack"],
	["", "B_Bergen_blk", 500, "backpack"],
	["", "B_Bergen_rgr", 500, "backpack"],
	["", "B_Bergen_mcamo", 500, "backpack"],
	["", "B_Bergen_sgg", 500, "backpack"],
	["", "B_Carryall_khk", 500, "backpack"],
	["", "B_Carryall_mcamo", 500, "backpack"],
	["", "B_Carryall_oli", 500, "backpack"],
	["", "B_Carryall_oucamo", 500, "backpack"]

];

genItemArray = compileFinal str
[
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Camo Ammo Cache", "Box_FIA_Support_F", 250, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"]
	
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"]
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Black (Kajman)", [
				[0, "\A3\air_f_beta\Heli_Attack_02\Data\heli_attack_02_body1_black_co.paa"],
				[1, "\A3\air_f_beta\Heli_Attack_02\Data\heli_attack_02_body2_black_co.paa"]
			]],
			["Rusty (Kajman)", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy (Kajman)", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Ghost Hawk camo 
		"Heli_Transport_01_base_F",
		[
			["Olive (Ghost Hawk)", [
				[0, "\A3\air_f_beta\Heli_Transport_01\Data\heli_transport_01_ext01_blufor_co.paa"],
				[1, "\A3\air_f_beta\Heli_Transport_01\Data\heli_transport_01_ext02_blufor_co.paa"]
			]]
		]
	],
	[ // Strider NATO color
		"MRAP_03_base_F",
		[
			["NATO Tan (Strider)", [
				[0, "\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa"],
				[1, "\A3\data_f\vehicles\turret_co.paa"]
			]]
		]
	],
	[ // Gorgon NATO color
		"APC_Wheeled_03_base_F",
		[
			["NATO Tan (Gorgon)", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty (Hatchback)", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
