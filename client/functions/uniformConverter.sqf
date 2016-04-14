// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: uniformConverter.sqf
//	@file Author: AgentRev
//	@file Created: 23/12/2013 01:10

// The purpose of this script is to convert a uniform class to a side-equivalent one that is compatible with the player
// Example: "U_O_GhillieSuit" becomes "U_I_GhillieSuit" if the player is on Independent side

private ["_uniform", "_side", "_uniforms", "_uniArray"];

_unit = _this select 0;
_uniform = _this select 1;

if !(_unit isUniformAllowed _uniform) then
{
	_uniforms =
	[
		["CUP_U_B_BAF_MTP_S1_RolledUp", "CUP_U_O_Partisan_VSR_Mixed2", "CUP_U_I_GUE_Anorak_02"],
		["CUP_U_B_BAF_DPM_Ghillie", "CUP_U_O_RUS_Ghillie", "CUP_U_I_Ghillie_Top" ]
	];

	{
		_uniArray = _x;

		if ({_uniform == _x} count _uniArray > 0) exitWith
		{
			{
				if (_unit isUniformAllowed _x) exitWith
				{
					_uniform = _x;
				};
			} forEach _uniArray;
		};
	} forEach _uniforms;
};

_uniform
