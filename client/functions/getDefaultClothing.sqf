// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);

//No vest for you
//_defaultVest = "V_Rangemaster_Belt";

_result = "";

switch (_side) do
{
	case BLUFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "CUP_U_O_Partisan_TTsKO_Mixed" };
				//if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "CUP_U_O_Partisan_VSR_Mixed1" };
				//if (_item == "vest") then { _result = "V_RebreatherB" };
				//if (_item == "goggles") then { _result = "G_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "CUP_U_O_Partisan_VSR_Mixed2"};
				//if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_Cap_usblack" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "CUP_O_TKI_Khet_Jeans_01" };
				//if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "CUP_O_TKI_Khet_Jeans_02"};
				//if (_item == "vest") then { _result = "V_RebreatherIR" };
				//if (_item == "goggles") then { _result = "G_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "CUP_O_TKI_Khet_Jeans_03"};
				//if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_Beret_blk" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_OG_Guerilla1_1" };
				//if (_item == "vest") then { _result = _defaultVest };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_OG_Guerilla2_1" };
				//if (_item == "vest") then { _result = "V_RebreatherIA" };
				//if (_item == "goggles") then { _result = "G_Diving" };
			};
			default
			{
				if (_item == "uniform") then { _result = "U_OG_Guerilla2_2" };
				//if (_item == "vest") then { _result = _defaultVest };
			};
		};

		if (_item == "headgear") then { _result = "H_Shemag_olive" };
	};
};

_result
