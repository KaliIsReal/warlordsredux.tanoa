#include "..\warlords_constants.inc"

params ["_killer", "_event", ["_show", true]];

switch (_event) do {
	case "init": {
		{
			_varName = format ["BIS_WL_showHint_%1", _x];
			
			if (isNil _varName) then {
				missionNamespace setVariable [_varName, false]
			};
		} forEach ["assembly", "maintenance", "targetResetVoting", "report"];
		
		_hintText = "";
		_lastHint = "";
		while {!BIS_WL_missionEnd} do {
			_hintText = "";
			
			if (BIS_WL_showHint_assembly) then {
				_hintText = _hintText + format [
					"<t size = '1.2' shadow = '0'><t align = 'left'>[ %1 ]</t><t align = 'right' color = '#4bff58'>%2</t><br/><t align = 'left'>[ %3 ]</t><t align = 'right' color = '#ff4b4b'>%4</t></t>",
					localize "STR_dik_space",
					localize "STR_A3_assemble",
					localize "STR_dik_back",
					localize "STR_ca_cancel"
				];
			};
			
			if (BIS_WL_showHint_targetResetVoting) then {
				_varNameVoting = format ["BIS_WL_targetResetVotingSince_%1", BIS_WL_playerSide];
				_warlords = BIS_WL_allWarlords select {side group _x == BIS_WL_playerSide};
				_limit = ceil ((count _warlords) / 2);
				_votedYes = count (_warlords select {(_x getVariable ["BIS_WL_targetResetVote", -1]) == 1});
				_hintText = _hintText + format [
					"%10<t shadow = '0'><t align = 'center' size = '1.3'>%1</t><br/><t size = '1.2'><t align = 'left'>[ %2 + %3 ]</t><t align = 'right' color = '#4bff58'>%4</t><br/><t align = 'left'>[ %2 + %5 ]</t><t align = 'right' color = '#ff4b4b'>%6</t></t><t size = '1'><br/><br/><t align = 'left'>%7</t><t align = 'right'>%8</t><br/><t align = 'center'>- %9 -</t></t></t>",
					toUpper localize "STR_A3_WL_target_reset_info",
					localize "str_dik_lcontrol",
					localize "str_dik_y",
					toUpper localize "str_lib_info_yes",
					localize "str_dik_n",
					toUpper localize "str_lib_info_no",
					localize "STR_A3_WL_target_reset_votes_needed",
					0 max (_limit - _votedYes),
					0 max ceil (((missionNamespace getVariable [_varNameVoting, -1]) + WL_TARGET_RESET_VOTING_TIME) - WL_SYNCED_TIME),
					if (_hintText == "") then {""} else {"<br/><br/>"}
				];
			};

			if (BIS_WL_showHint_report) then {
				_hintText = format [
				"<t size = '1' shadow = '0'><t valign = 'top'> %1 </t><br/><t align = 'left' >%2: </t><t align = 'right' color = '#4bff58'>%3</t><br/><t align = 'left'>%4: </t><t align = 'right' color = '#ff4b4b'> %5 </t></t>",
				format ["You where killed by: %1. You can choose to report him or forgive him.", (name _killer)],
				localize "STR_dik_space",
				"Forgive",
				localize "STR_dik_back",
				"Report"
				];
			};

			if((_hintText != "" ) or ( _lastHint != "")) then {
				hintSilent parseText _hintText;
				_lastHint = _hintText;
			};
			sleep WL_TIMEOUT_MEDIUM;
		};
	};
	
	default {
		_varName = format ["BIS_WL_showHint_%1", _event];
		
		if (_show isEqualType true) then {
			missionNamespace setVariable [_varName, _show];
		} else {
			[_varName, _show] spawn {
				params ["_varName", "_show"];
				while {!BIS_WL_missionEnd} do {
					missionNamespace setVariable [_varName, call _show];
					if (_varName == "BIS_WL_showHint_maintenance") then {
						[false] call BIS_fnc_WL2_refreshOSD;
					};
					sleep WL_TIMEOUT_STANDARD;
				};
			};
		};
	};
};