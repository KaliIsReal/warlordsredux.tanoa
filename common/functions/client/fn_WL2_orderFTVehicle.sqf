["RequestMenu_close"] call BIS_fnc_WL2_setupUI;

if (side player == west) then {
	[player, "orderFTVehicle", 200, 0, (side player), false] remoteExec ["BIS_fnc_WL2_handleClientRequest", 2];
};

if (side player == east) then {
	[player, "orderFTVehicle", 200, 0, (side player), false] remoteExec ["BIS_fnc_WL2_handleClientRequest", 2];
};
