// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refilltruck.sqf
//	@file Author: AgentRev
//	@file Created: 30/06/2013 15:28

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_truck", "_truckItems", "_item", "_qty", "_mag"];
_truck = _this;

// Clear prexisting cargo first
clearMagazineCargoGlobal _truck;
clearWeaponCargoGlobal _truck;
clearItemCargoGlobal _truck;

// Item type, Item, # of items, # of magazines per weapon
_truckItems =
[
	["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(0,2)],
	["itm", "FirstAidKit", RANDOM_BETWEEN(3,6)],
	["itm", "Medikit", RANDOM_BETWEEN(1,3)],
	["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
	["itm", ["CUP_muzzle_snds_L85", "CUP_muzzle_snds_M16_camo", "CUP_muzzle_snds_M14", "CUP_muzzle_snds_M9"], RANDOM_BETWEEN(0,3)],
	["itm", [			"CUP_optic_ACOG",
						"CUP_optic_TrijiconRx01_black"
						"CUP_optic_ElcanM145",
						"CUP_optic_Elcan_reflex",
						"CUP_optic_HoloBlack",
						"CUP_optic_HoloWdl",
						"CUP_optic_Eotech533Grey",
						"CUP_optic_Kobra",
						"CUP_optic_PSO_1",
						"CUP_optic_PSO_3",
						"CUP_optic_PGO7V3",
						"CUP_optic_LeupoldMk4"
			], RANDOM_BETWEEN(2,4)],
	["wep", ["CUP_smg_MP5A5", "CUP_smg_MP5SD6", "CUP_smg_bizon"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(3,5)],
	["wep", ["CUP_1Rnd_HE_M203", "CUP_arifle_M4A1_BUIS_GL"], RANDOM_BETWEEN(2,5), RANDOM_BETWEEN(4,5)],
	["mag", "CUP_1Rnd_HE_M203", RANDOM_BETWEEN(5,10)],
	["wep", ["CUP_srifle_M24_wdl_LeupoldMk4LRT", "CUP_srifle_M14_DMR_LeupoldMk4"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(4,6)],
	["wep", ["CUP_launch_MAAWS", "CUP_launch_RPG7V"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(1,2)],
	["mag", "HandGrenade", RANDOM_BETWEEN(0,5)],
	["mag", ["APERSTripMine_Wire_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag"], RANDOM_BETWEEN(2,6)]
];

[_truck, _truckItems] call processItems;
