#include "..\warlords_constants.inc"

["Preload"] call BIS_fnc_arsenal;

_minesBlacklist = ["APERSMineDispenser_Mag", "ATMine_Range_Mag", "APERSBoundingMine_Range_Mag", "APERSMine_Range_Mag", "APERSTripMine_Wire_Mag", "ClaymoreDirectionalMine_Remote_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag", "IEDUrbanBig_Remote_Mag", "IEDLandBig_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "IEDUrbanSmall_Remote_Mag", "IEDLandSmall_Remote_Mag", "TrainingMine_Mag"];

if (BIS_WL_playerSide == west) then {
	//NATO
	NATOuniformsWhitelist = ["U_B_HeliPilotCoveralls", "U_B_GhillieSuit", "U_B_CombatUniform_mcam", "U_B_CombatUniform_mcam_tshirt", "U_B_CombatUniform_mcam_vest", "U_B_Wetsuit", "U_B_PilotCoveralls", "U_B_SpecopsUniform_sgg", "U_B_CTRG_1", "U_B_CTRG_2", "U_B_CTRG_3", "U_B_survival_uniform", "U_B_FullGhillie_lsh", "U_B_FullGhillie_sard", "U_B_FullGhillie_ard", "U_B_T_Soldier_F", "U_B_T_Soldier_AR_F", "U_B_T_Soldier_SL_F", "U_B_T_Sniper_F", "U_B_T_FullGhillie_tna_F", "U_B_CTRG_Soldier_F", "U_B_CTRG_Soldier_2_F", "U_B_CTRG_Soldier_3_F", "U_B_CTRG_Soldier_Arid_F", "U_B_CTRG_Soldier_2_Arid_F", "U_B_CTRG_Soldier_3_Arid_F"];
	NATOhelmetsWhitelist = ["H_Booniehat_khk_hs","H_Booniehat_oli","H_Boniehat_tna_F","H_Cap_usblack","H_MilCap_mcamo","H_MilCap_tna_F","H_MilCap_wdl","H_HelmetB_light_black","H_HelmetB_light_desert","H_HelmetB_light_grass","H_HelmetB_light_sand","H_HelmetB_light_snakeskin","H_Cap_khaki_specops_UK","H_HelmetB_camo", "H_HelmetB", "H_HelmetB_paint", "H_Booniehat_mcamo", "H_Booniehat_grn", "H_Booniehat_tan", "H_HelmetB_plain_blk", "H_HelmetSpecB", "H_HelmetSpecB_paint1", "H_HelmetSpecB_paint2", "H_HelmetSpecB_blk", "H_HelmetSpecB_snakeskin", "H_HelmetSpecB_sand", "H_Cap_tan_specops_US", "H_HelmetCrew_B", "H_PilotHelmetFighter_B", "H_PilotHelmetHeli_B", "H_CrewHelmetHeli_B", "H_Beret_02", "H_HelmetB_TI_tna_F", "H_HelmetB_TI_arid_F", "H_HelmetB_Enh_tna_F", "H_HelmetB_Light_tna_F", "H_HelmetHBK_chops_F", "H_HelmetHBK_ear_F", "H_HelmetHBK_headset_F", "H_HelmetHBK_F", "H_Booniehat_wdl", "H_HelmetB_plain_wdl", "H_HelmetB_light_wdl", "H_HelmetSpecB_wdl", "H_HelmetB", "H_HelmetB_plain_blk", "H_HelmetB_plain_wdl", "H_HelmetB_camo", "H_HelmetB_paint", "H_HelmetB_snakeskin", "H_HelmetB_tna_F", "H_HelmetB_grass", "H_HelmetB_desert"];
	NATOvestWhitelist = ["V_Chestrig_khk", "V_Chestrig_rgr", "V_Chestrig_blk", "V_Chestrig_oli", "V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_TacVest_blk", "V_TacChestrig_grn_F", "V_TacChestrig_oli_F", "V_TacChestrig_cbr_F", "V_PlateCarrier1_rgr_noflag_F", "V_PlateCarrier2_rgr_noflag_F", "V_LegStrapBag_black_F", "V_LegStrapBag_coyote_F", "V_LegStrapBag_olive_F", "V_CarrierRigKBT_01_EAF_F", "V_CarrierRigKBT_01_light_EAF_F", "V_BandollierB_oli", "V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_cbr", "V_BandollierB_khk", "V_TacVest_camo", "V_TacVestIR_blk", "V_I_G_resistanceLeader_F", "V_Rangemaster_belt", "V_PlateCarrierGL_rgr", "V_PlateCarrierGL_mtp", "V_PlateCarrierSpec_rgr", "V_PlateCarrierSpec_blk", "V_PlateCarrierSpec_mtp", "V_RebreatherB", "V_PlateCarrierL_CTRG", "V_PlateCarrierH_CTRG", "V_PlateCarrier_Kerry", "V_PlateCarrierSpec_tna_F", "V_PlateCarrierGL_tna_F", "V_PlateCarrier1_wdl", "V_PlateCarrier2_wdl", "V_PlateCarrierGL_wdl", "V_PlateCarrierSpec_wdl", "V_PlateCarrier1_blk", "V_PlateCarrier2_blk"];
	NATObackpackWhitelist = ["B_Messenger_Gray_F","B_Bergen_tna_F","B_Carryall_oli","B_Carryall_blk","B_FieldPack_green_F","B_FieldPack_oli","B_Bergen_mcamo_F","B_AssaultPack_rgr", "B_AssaultPack_sgg", "B_AssaultPack_blk", "B_AssaultPack_khk", "B_AssaultPack_cbr", "B_AssaultPack_mcamo", "B_Kitbag_rgr", "B_Kitbag_mcamo", "B_Kitbag_sgg", "B_Kitbag_cbr", "B_Kitbag_tan", "B_TacticalPack_rgr", "B_TacticalPack_mcamo", "B_TacticalPack_blk", "B_TacticalPack_oli", "B_FieldPack_khk", "B_FieldPack_cbr", "B_FieldPack_blk", "B_Carryall_mcamo", "B_Carryall_khk", "B_Carryall_cbr", "B_Bergen_mcamo", "B_AssaultPack_tna_F", "B_ViperHarness_blk_F", "B_ViperLightHarness_blk_F", "B_ViperLightHarness_oli_F", "B_ViperHarness_oli_F", "B_ViperHarness_khk_F", "B_ViperLightHarness_khk_F", "B_Messenger_Coyote_F", "B_Messenger_Olive_F", "B_Messenger_Black_F", "B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F", "B_LegStrapBag_olive_F", "B_RadioBag_01_wdl_F", "B_RadioBag_01_mtp_F", "B_RadioBag_01_tropic_F", "B_RadioBag_01_black_F", "B_Carryall_green_F", "B_Carryall_wdl_F", "B_Carryall_eaf_F", "B_AssaultPack_wdl_F", "B_AssaultPack_eaf_F", "B_Static_Designator_01_weapon_F"];

	BIS_fnc_arsenal_data set [3, NATOuniformsWhitelist];
	BIS_fnc_arsenal_data set [4, NATOvestWhitelist];
	BIS_fnc_arsenal_data set [5, NATObackpackWhitelist];
	BIS_fnc_arsenal_data set [6, NATOhelmetsWhitelist];
	BIS_fnc_arsenal_data set [23, (BIS_fnc_arsenal_data # 23) - _minesBlacklist];
};

if (BIS_WL_playerSide == east) then {
	//CSAT
	CSATuniformsWhitelist = ["U_O_SpecopsUniform_ocamo", "U_O_SpecopsUniform_blk", "U_O_OfficerUniform_ocamo", "U_O_Wetsuit", "U_O_GhillieSuit", "U_O_FullGhillie_lsh", "U_O_FullGhillie_sard", "U_O_FullGhillie_ard", "U_O_officer_noInsignia_hex_F", "U_O_V_Soldier_Viper_hex_F", "U_O_V_Soldier_Viper_F", "U_O_T_FullGhillie_tna_F", "U_O_T_Soldier_F", "U_O_T_Officer_F", "U_O_T_Sniper_F", "U_O_CombatUniform_oucamo", "U_O_PilotCoveralls", "U_O_R_Gorka_01_F", "U_O_R_Gorka_01_brown_F", "U_O_R_Gorka_01_camo_F"];
	CSAThelmetsWhitelist = ["H_Cap_brn_SPECOPS", "H_HelmetCrew_O", "H_PilotHelmetFighter_O", "H_PilotHelmetHeli_O", "H_CrewHelmetHeli_O", "H_HelmetO_ocamo", "H_HelmetLeaderO_ocamo", "H_MilCap_ocamo", "H_HelmetO_oucamo", "H_HelmetLeaderO_oucamo", "H_HelmetSpecO_ocamo", "H_HelmetSpecO_blk", "H_Beret_ocamo", "H_HelmetO_ViperSP_hex_F", "H_HelmetO_ViperSP_ghex_F", "H_HelmetSpecO_ghex_F", "H_HelmetLeaderO_ghex_F", "H_HelmetO_ghex_F", "H_HelmetCrew_O_ghex_F", "H_MilCap_ghex_F", "H_Tank_black_F", "H_Beret_CSAT_01_F", "H_HelmetAggressor_F", "H_HelmetAggressor_cover_F", "H_HelmetAggressor_cover_taiga_F"];
	CSATvestWhitelist = ["V_CarrierRigKBT_01_Olive_F", "V_CarrierRigKBT_01_light_Olive_F", "V_CarrierRigKBT_01_heavy_Olive_F", "V_Chestrig_khk", "V_Chestrig_rgr", "V_Chestrig_blk", "V_Chestrig_oli", "V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_TacVest_blk", "V_HarnessO_brn", "V_HarnessOGL_brn", "V_HarnessO_gry", "V_HarnessOGL_gry", "V_HarnessOSpec_brn", "V_HarnessOSpec_gry", "V_RebreatherIR", "V_TacChestrig_grn_F", "V_TacChestrig_oli_F", "V_TacChestrig_cbr_F", "V_HarnessO_ghex_F", "V_HarnessOGL_ghex_F", "V_BandollierB_ghex_F", "V_PlateCarrier1_rgr_noflag_F", "V_PlateCarrier2_rgr_noflag_F", "V_LegStrapBag_black_F", "V_LegStrapBag_coyote_F", "V_LegStrapBag_olive_F", "V_CarrierRigKBT_01_EAF_F", "V_CarrierRigKBT_01_light_EAF_F", "V_SmershVest_01_F", "V_SmershVest_01_radio_F", "V_BandollierB_oli", "V_BandollierB_blk", "V_BandollierB_rgr", "V_BandollierB_cbr", "V_BandollierB_khk", "V_TacVest_camo", "V_TacVestIR_blk", "V_I_G_resistanceLeader_F", "V_Rangemaster_belt"];
	CSATbackpackWhitelist = ["B_Bergen_hex_F","B_AssaultPack_wdl_F", "B_AssaultPack_ocamo", "B_Kitbag_cbr", "B_TacticalPack_ocamo", "B_TacticalPack_blk", "B_FieldPack_ocamo", "B_FieldPack_oucamo", "B_Carryall_ocamo", "B_Carryall_oucamo", "B_AssaultPack_blk", "B_AssaultPack_cbr", "B_AssaultPack_sgg", "B_AssaultPack_rgr", "B_AssaultPack_khk", "B_Kitbag_tan", "B_Bergen_rgr", "B_ViperHarness_blk_F", "B_ViperHarness_ghex_F", "B_ViperHarness_hex_F", "B_ViperHarness_khk_F", "B_ViperHarness_oli_F", "B_ViperLightHarness_blk_F", "B_ViperLightHarness_ghex_F", "B_ViperLightHarness_hex_F", "B_ViperLightHarness_khk_F", "B_ViperLightHarness_oli_F", "B_LegStrapBag_black_F", "B_LegStrapBag_coyote_F", "B_LegStrapBag_olive_F", "B_Messenger_Coyote_F", "B_Messenger_Olive_F", "B_Messenger_Black_F", "B_Messenger_Gray_F", "B_RadioBag_01_black_F", "B_RadioBag_01_ghex_F", "B_RadioBag_01_hex_F", "B_RadioBag_01_oucamo_F", "O_Static_Designator_02_weapon_F"];

	BIS_fnc_arsenal_data set [3, CSATuniformsWhitelist];
	BIS_fnc_arsenal_data set [4, CSATvestWhitelist];
	BIS_fnc_arsenal_data set [5, CSATbackpackWhitelist];
	BIS_fnc_arsenal_data set [6, CSAThelmetsWhitelist];
	BIS_fnc_arsenal_data set [23, (BIS_fnc_arsenal_data # 23) - _minesBlacklist];
};