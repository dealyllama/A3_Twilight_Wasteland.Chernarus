// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box setVariable [call vChecksum, true];

_box allowDamage false; // No more fucking busted crates
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["CUP_launch_Javelin", "CUP_launch_RPG7V", "CUP_launch_MAAWS"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", "CUP_launch_FIM92Stinger", RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(3,8)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["itm", ["CUP_optic_Eotech533Grey", "CUP_optic_ACOG", "CUP_optic_RCO", "CUP_optic_PSO_1", "CUP_optic_CompM4", "CUP_optic_ELCAN_SpecterDR", "CUP_optic_Elcan_reflex"], RANDOM_BETWEEN(2,4)],
			["itm", ["CUP_muzzle_snds_L85", "CUP_muzzle_snds_M16_camo", "CUP_muzzle_snds_M14", "CUP_muzzle_snds_M9"], RANDOM_BETWEEN(0,3)],
			["wep", ["CUP_hgun_M9", "CUP_hgun_TaurusTracker455", "CUP_hgun_Glock17", "CUP_hgun_Duty"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(3,5)],
			["wep", ["CUP_srifle_M14_DMR", "CUP_srifle_Mk12SPR", "CUP_srifle_VSSVintorez"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["CUP_lmg_minimi_railed", "CUP_lmg_minimipara", "CUP_lmg_M240", "CUP_arifle_RPK74_45", "CUP_lmg_Mk48_wdl_Aim_Laser"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", "30Rnd_556x45_Stanag", RANDOM_BETWEEN(4,8)]
		];
	};
	case "mission_Main_A3snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["CUP_srifle_M14_DMR_LeupoldMk4_snds", "CUP_srifle_M24_wdl_LeupoldMk4LRT", "CUP_srifle_Mk12SPR_LeupoldM3LR_bipod", "CUP_srifle_SVD_des_ghillie_pso"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["CUP_srifle_VSSVintorez_pso"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,3)],
			["itm", "optic_DMS", RANDOM_BETWEEN(1,2)]
		];
	};
};

[_box, _boxItems] call processItems;
