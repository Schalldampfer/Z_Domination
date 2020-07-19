// by Xeno
//#define __DEBUG__
#define THIS_FILE "missionssetup.sqf"
#include "..\x_setup.sqf"

// I'm using x_mXX.sqf for the mission filename where XX (index number) has to be added to d_sm_array
d_sm_fname = "x_m";

// d_sm_array contains the indices of the sidemissions (it gets shuffled later)
// to remove a specific side mission just remove the index from d_sm_array
d_sm_array =
	[
		1,3,4,5,6,7, //arrest an officer
		15,16,17,18, //artillery base
		19,20,21,22, //stop a convoy
		30,31,32,33,35, //deliver a truck/troops
		39,40,41,42,44,45, //evac crew/sops
		49,50,51,52, //destroy factory
		53,54,55,56, //capture the flag
		61,62,63,64,65,
		69,70,71, //clear naval/land mines
		77,78,79,80,81,82, //rescue prisoners
		88,89,90,91,92,93, //clear specops camp
		94,95,97,98, // 106,108, // steal the vehicle 106 and 108 removed for now
		110,111,112,113, //tank depot
		114,115,116,117, //destroy supply trucks
		// 118,119,120, //destroy cargo box -> TODO
		123,124,125, //destroy arty vec
		127,128,129,130,131,132,133, //kill the officer
		138,139,140,141,142, //kill the sniper
		//143,144,145, //find and destroy lost uav  -> TODO
		148,149,150,151,152,153,154,155//, //destroy radio tower
		//166,167,168,169, //sabotage ship
		//170,171 //rescue in sea
];

call d_fnc_create_sm_bymarkers;

__TRACE_1("","d_sm_array")

d_number_side_missions = count d_sm_array;

if (isServer) then {		
	// these vehicles get spawned in a convoy sidemission. Be aware that it is the best to use a wheeled vehicle first as leader.
	// at least wheeled AI vehicles try to stay on the road somehow
	d_sm_convoy_vehicles = switch (d_enemy_side_short) do {
		case "E": {["O_MRAP_02_hmg_F","O_APC_Wheeled_02_rcws_F", "O_MRAP_02_gmg_F", "O_Truck_03_repair_F", "O_Truck_03_fuel_F", "O_Truck_03_ammo_F", "O_APC_Wheeled_02_rcws_F"]};
		case "W": {["B_MRAP_01_hmg_F","B_APC_Wheeled_01_cannon_F", "B_MRAP_01_gmg_F", "B_Truck_01_Repair_F", "B_Truck_01_fuel_F", "B_Truck_01_ammo_F", "B_APC_Wheeled_01_cannon_F"]};
		case "G": {["I_MRAP_03_gmg_F","I_APC_tracked_03_cannon_F", "I_MBT_03_cannon_F", "I_Truck_02_box_F", "I_Truck_02_fuel_F", "I_Truck_02_ammo_F", "I_APC_tracked_03_cannon_F"]};
	};
};

d_sm_folder = "ma3m";

// Instead of a random vehicle chosen for winning a side mission you can setup it in the mission yourself now
// Add d_current_sm_bonus_vec to the beginning of a sidemission script with a vehicle class string and that vehicle gets chosen instead of a random one.
// Examples:
// d_current_sm_bonus_vec = "B_MBT_01_cannon_F";
// DON'T CHANGE IT HERE IN MISSIONSETUP.SQF!!!!!!!!!!!!!!!!!!!!!!!!!
if (isServer) then {
#ifndef __TT__
	d_current_sm_bonus_vec = "";
#else
	d_current_sm_bonus_vec = ["", ""];
#endif
};
