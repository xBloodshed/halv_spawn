/*
	spawn dialog misc settings
	By Halv
	
	General Note:
	I attempted to lock DLC items for players that does not have marksman cannot choose DLC items,
	but ...
	it is still best NOT to add any DLC items to this script
	as i cannot garentee that it will not pick those items
	when the player chooses a random gearset
*/

//UID's for lvl 1 gear
_level1UIDs = [];
//UID's for lvl 2 gear
_level2UIDs = [];
//this is to allow lvl 2 to use any lvl 1 gear, comment out to seperate the two
_level1UIDs = _level1UIDs + _level2UIDs;

_geararr = [
	[
//this is the array of secondary weapons the player can choose from, this has to be "weapon" type items
		[
			"ruger_pistol_epoch","1911_pistol_epoch",
			"hgun_Pistol_Signal_F","hgun_mas_glocksf_F_sd","Hatchet"//,"ChainSaw"
		],
//this is how many magazines is added for secondary weapon
		2
	], 
	[
//this is the array of primary weapons the player can choose from, this has to be "weapon" type items
		[
			"arifle_mas_lee","arifle_mas_lee_1","hgun_PDW2000_F","Rollins_F","arifle_mas_m4_m203_d_sd","m16Red_EPOCH","srifle_mas_ksvk_c_h","arifle_mas_akms_gl_c_a",
			"l85a2_epoch","l85a2_pink_epoch","l85a2_ugl_epoch","srifle_mas_m107_d_sd"
		],
//this is how many magazines is added for primary weapon
		3
	],
	[
//this is the array for "tool" items the player can choose from, this has to be "item" type items
		[
			"FAK","FAK","Heal_EPOCH","Defib_EPOCH","Repair_EPOCH","MeleeSledge","Plunger"
		],
//this is how many "tool" items the player is allowed to choose
		2
	],
//this is the array of "weapon" items the player can choose from, this has to be "weapon" type items
	[
		[
			"EpochRadio0","EpochRadio1","EpochRadio2","EpochRadio3","EpochRadio4","EpochRadio5","EpochRadio6","EpochRadio7","EpochRadio8","EpochRadio9",
			"ItemCompass","ItemWatch","Binocular","ItemMap","NVG_EPOCH","ItemGPS"
		],
//this is how many "weapon" items the player is allowed to choose
		3
	],
	[
		[
//this is the array of "magazines" items the player can choose from, this has to be "magazine" type items
			"Chemlight_green","Chemlight_red","Chemlight_yellow","Chemlight_blue","EnergyPack","lighter_epoch","meatballs_epoch",
			"scam_epoch","ItemSodaPurple","ItemSodaMocha",
			"emptyjar_epoch","FoodBioMeat","Towelette"
		],
//this is how many "magazines" items the player is allowed to choose
		3
	],
	[
//this is the array of headgear the player can choose from
		"H_39_EPOCH","H_40_EPOCH","H_41_EPOCH","H_42_EPOCH","H_43_EPOCH","H_44_EPOCH","H_45_EPOCH","H_46_EPOCH","H_47_EPOCH","H_48_EPOCH",
		"H_49_EPOCH","H_78_EPOCH","H_79_EPOCH","H_80_EPOCH","H_81_EPOCH","H_82_EPOCH","H_83_EPOCH","H_84_EPOCH","H_85_EPOCH",
		"H_11_EPOCH","H_28_EPOCH","H_34_EPOCH","H_71_EPOCH","H_72_EPOCH","H_73_EPOCH","H_104_EPOCH",
		"wolf_mask_epoch","pkin_mask_epoch"
	],
	[
//this is the array of vests the player can choose from
 		"V_1_EPOCH","V_2_EPOCH","V_3_EPOCH","V_4_EPOCH","V_5_EPOCH"
	],
	[
//these are the arrays for Uniforms the player can choose from
		[
//only male Uniforms here
			"U_O_CombatUniform_ocamo","U_B_Survival_Uniform",
			"U_C_Poor_1","U_C_WorkerCoveralls","U_C_Journalist","U_C_Scientist",
			"U_OrestesBody","U_C_Poloshirt_stripped","U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon",
			"U_C_Poloshirt_redwhite","U_C_Driver_1","U_C_Driver_2","U_C_Driver_3","U_C_Driver_4",
			"U_C_Driver_1_black","U_C_Driver_1_blue","U_C_Driver_1_green","U_C_Driver_1_red","U_C_Driver_1_white","U_C_Driver_1_yellow","U_C_Driver_1_orange",
			"U_C_Driver_1_red"
		],
		[
//only female Uniforms here
			"U_CamoRed_uniform","U_CamoBrn_uniform","U_CamoBlue_uniform","U_Camo_uniform",
			"U_Wetsuit_uniform","U_Wetsuit_White","U_Wetsuit_Blue","U_Wetsuit_Purp","U_Wetsuit_Camo"
		]
	],
	[
//this is the array of Goggles the player can choose from
		"G_Tactical_Clear","G_Shades_Black","G_Shades_Blue","G_Sport_Blackred","G_Spectacles","G_Spectacles_Tinted","G_Lowprofile","G_Shades_Green","G_Shades_Red",
		"G_Squares","G_Squares_Tinted","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Greenblack","G_Sport_Checkered","G_Sport_Red","G_Tactical_Black"
	],
	[
//this is the array of Backpacks the player can choose from
		"smallbackpack_red_epoch","smallbackpack_green_epoch","smallbackpack_teal_epoch","smallbackpack_pink_epoch","B_Parachute"
	]
];

//Donor locked items

//if you want an item locked for lvl 1 donor, add it to this array
_lvl1items = [
	"U_O_CombatUniform_ocamo","B_Parachute","wolf_mask_epoch","pkin_mask_epoch","U_B_Survival_Uniform","EnergyPack","l85a2_epoch","hgun_mas_glocksf_F_sd","ItemSodaPurple",
	"ItemSodaMocha","EpochRadio8","l85a2_ugl_epoch","Heal_EPOCH","Repair_EPOCH"
];

//if you want an item locked for lvl 2 donor, add it to this array
_lvl2items = [
	"NVG_EPOCH","l85a2_pink_epoch","m16Red_EPOCH","EpochRadio9","arifle_mas_m4_m203_d_sd","arifle_mas_akms_gl_c_a","srifle_mas_ksvk_c_h","Defib_EPOCH","srifle_mas_m107_d_sd"
];
