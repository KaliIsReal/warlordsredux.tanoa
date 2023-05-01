#include "..\warlords_constants.inc"

serverNamespace setVariable ["killRewards", 
	createHashMapFromArray [
		//NATO
		["B_Quadbike_01_F", 20], ["B_LSV_01_unarmed_F", 50], ["B_MRAP_01_F", 100],
		["B_Truck_01_transport_F", 100], ["B_Truck_01_fuel_F", 100],
		["B_LSV_01_armed_F", 250], ["B_G_Offroad_01_armed_F", 200], ["B_LSV_01_AT_F", 400], ["B_G_Offroad_01_AT_F", 300],
		["B_Truck_01_flatbed_F", 100],
		["B_MRAP_01_hmg_F", 300], ["B_MRAP_01_gmg_F", 300],
		["B_Truck_01_Repair_F", 150], ["O_T_Truck_03_device_ghex_F", 500], ["B_Truck_01_ammo_F", 150],
		["B_APC_Wheeled_03_cannon_F", 500], ["B_APC_Wheeled_01_cannon_F", 500], ["B_APC_Tracked_01_rcws_F", 500],
		["B_APC_Tracked_01_AA_F", 750],
		["B_MBT_01_cannon_F", 800], ["B_MBT_01_TUSK_F", 900],
		["B_AFV_Wheeled_01_cannon_F", 800], ["B_AFV_Wheeled_01_up_cannon_F", 900],
		["B_MBT_01_arty_F", 1000], ["B_MBT_01_mlrs_F", 1000],
		["B_Heli_Light_01_F", 150], ["B_Heli_Light_01_dynamicLoadout_F", 400],
		["B_Heli_Transport_01_F", 300], ["B_Heli_Transport_03_F", 300],
		["B_UAV_02_dynamicLoadout_F", 750], ["B_T_UAV_03_dynamicLoadout_F", 750], ["B_UAV_05_F", 750],
		["B_Heli_Attack_01_dynamicLoadout_F", 750],
		["B_T_VTOL_01_infantry_F", 400], ["B_T_VTOL_01_vehicle_F", 400], ["B_T_VTOL_01_armed_F", 1000],
		["B_Plane_CAS_01_dynamicLoadout_F", 1200], ["B_Plane_Fighter_01_F", 1500],
		["C_Scooter_Transport_01_F", 20], ["B_Boat_Transport_01_F", 50], ["B_Boat_Armed_01_minigun_F", 150], ["B_SDV_01_F", 100],
		//Boxes
		["Box_NATO_Ammo_F", 100], ["Box_NATO_Grenades_F", 100], ["Box_NATO_Wps_F", 100], ["Box_NATO_AmmoOrd_F", 100], ["Box_NATO_WpsLaunch_F", 100], ["Box_NATO_WpsSpecial_F", 100], ["B_supplyCrate_F", 100], ["Box_NATO_AmmoVeh_F", 100], // Boxes 
		["B_UGV_02_Demining_F", 150], ["B_UGV_01_F", 50], ["B_UGV_01_rcws_F", 250],
		["Land_BagFence_Round_F", 50], ["Land_Razorwire_F", 50], ["Land_DragonsTeeth_01_1x1_new_F", 50],
		["B_HMG_01_F", 200], ["B_HMG_01_high_F", 200], ["B_GMG_01_F", 200], ["B_GMG_01_high_F", 200],
		["B_static_AT_F", 200], ["B_static_AA_F", 200], ["B_Mortar_01_F", 200],
		["B_Radar_System_01_F", 500],
		["B_AAA_System_01_F", 750], ["B_SAM_System_01_F", 1000], ["B_SAM_System_03_F", 1000],
		["B_SAM_System_02_F", 1200], ["B_Ship_MRLS_01_F", 2000],
		//CSAT
		["O_Quadbike_01_F", 20], ["O_LSV_02_unarmed_F", 50], ["O_MRAP_02_F", 100],
		["O_Truck_03_transport_F", 100], ["O_Truck_03_Fuel_F", 100],
		["O_LSV_02_armed_F", 250], ["O_G_Offroad_01_armed_F", 200], ["O_LSV_02_AT_F", 400], ["O_G_Offroad_01_AT_F", 300],
		["B_Truck_01_flatbed_F", 100],
		["O_MRAP_02_hmg_F", 300], ["O_MRAP_02_gmg_F", 300],
		["O_Truck_03_Repair_F", 150], ["O_Truck_03_device_F", 500], ["O_Truck_03_ammo_F", 150],
		["O_APC_Wheeled_02_rcws_v2_F", 500], ["O_APC_Tracked_02_cannon_F", 600],
		["O_APC_Tracked_02_AA_F", 750],
		["O_MBT_02_cannon_F", 900], ["O_MBT_04_cannon_F", 1000], ["O_MBT_04_command_F", 1000],
		["O_MBT_02_arty_F", 1000], ["I_Truck_02_MRL_F", 1000],
		["O_Heli_Light_02_unarmed_F", 200], ["O_Heli_Light_02_dynamicLoadout_F", 600],
		["O_Heli_Transport_04_F", 150], ["O_Heli_Transport_04_covered_F", 150], ["O_Heli_Transport_04_medevac_F", 150],
		["O_UAV_02_dynamicLoadout_F", 750], ["O_T_UAV_04_CAS_F", 750],
		["O_Heli_Attack_02_dynamicLoadout_F", 750],
		["O_T_VTOL_02_infantry_dynamicLoadout_F", 1100],
		["O_Plane_CAS_02_dynamicLoadout_F", 1200], ["O_Plane_Fighter_02_F", 1500],
		["C_Scooter_Transport_01_F", 20], ["O_Boat_Transport_01_F", 50], ["O_Boat_Armed_01_hmg_F", 150], ["O_SDV_01_F", 100],
		//Boxes
		["Box_East_Ammo_F", 100], ["Box_East_Grenades_F", 100], ["Box_East_Wps_F", 100], ["Box_East_AmmoOrd_F", 100], ["Box_East_WpsLaunch_F", 100], ["Box_East_WpsSpecial_F", 100], ["O_supplyCrate_F", 100], ["Box_East_AmmoVeh_F", 100], // Boxes 
		["O_UGV_02_Demining_F", 150], ["O_UGV_01_F", 50], ["O_UGV_01_rcws_F", 250],
		["Land_BagFence_Round_F", 50], ["Land_Razorwire_F", 50], ["Land_DragonsTeeth_01_1x1_new_F", 50],
		["O_HMG_01_F", 200], ["O_HMG_01_high_F", 200], ["O_GMG_01_F", 200], ["O_GMG_01_high_F", 200],
		["O_static_AT_F", 200], ["O_static_AA_F", 200], ["O_Mortar_01_F", 200],
		["O_Radar_System_02_F", 500], // Radar
		["B_AAA_System_01_F", 750], ["B_SAM_System_01_F", 1000], ["O_SAM_System_04_F", 1000],
		["B_SAM_System_02_F", 1200], ["B_Ship_MRLS_01_F", 2000],
		//AAF
		["I_MRAP_03_hmg_F", 250], ["I_MRAP_03_gmg_F", 250],
		["I_LT_01_scout_F", 350], ["I_LT_01_AA_F", 350], ["I_LT_01_AT_F", 350],
		["I_MBT_03_cannon_F", 800], ["I_APC_Wheeled_03_cannon_F", 500], ["I_APC_tracked_03_cannon_F", 600],
		["I_Heli_light_03_dynamicLoadout_F", 500], ["I_Heli_light_03_F", 500], ["I_Plane_Fighter_03_dynamicLoadout_F", 900], ["I_Plane_Fighter_03_CAS_F", 900], ["I_Plane_Fighter_04_F", 1100]
	]
];