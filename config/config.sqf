/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: config.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Config Loaded          :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
// define when the mission runs or not
YEIIJ_WreckRun = true; // def true
// define the usage of debugging markers
YEIIJ_WreckDbgMkrs = true; // def false
// define the time before start the first Wreck
YEIIJ_WreckWait = 450; // def 450, 7,5 minutes
// delay between spawns
YEIIJ_WreckSpawnDelay = 3600; // def 3600 secs, every 1 hours
// wreck class name
YEIIJ_WreckWreckCls = "Land_UWreck_MV22_F"; // def blackfish wreck
// wreck bubbles class
YEIIJ_WreckBubblesCls = "test_EmptyObjectForBubbles"; // def bubbles particles
// wreck box ammo class name
YEIIJ_WreckBoxCls = "B_CargoNet_01_ammo_F"; // def Cargo net NATO
// default pos
YEIIJ_WreckDefPos = [0,0,0]; // def [0,0,0]
// first wreck Pos
YEIIJ_WreckSpwnPos = [0,0,0]; // def [0,0,0]
// Positions Array
YEIIJ_WreckPossitions = [
    [15329.8,14008],
    [14954.7,8017.1],
    [10030.9,10728.9],
    [8791.1,9378.22],
    [7075.98,10363.7],
    [5200.65,9674.31],
    [4271.48,9765.94],
    [3822.62,9817.11],
    [2610.6,9385.42],
    [3230.49,11236.4],
    [3863.91,16637.9],
    [3529.34,17226.2],
    [9768.05,22722.8],
    [18289.6,18705.9],
    [21343.9,20540.3],
    [25299.8,23940.5],
    [28427.2,24385.1],
    [23071.4,14836.5],
    [21882.3,12514.6]
];
// maximum weapon types per box
YEIIJ_WreckMaxWepTyps = 4; // def 4
// maximum weapon ammount per box (each weapon)
YEIIJ_WreckMaxWepAmnt = 4; // def 4
// weapons array
YEIIJ_WreckWeapons = [
    "hgun_ACPC2_F", // ACP-C2 .45 ACP
    "hgun_P07_F", // P07 9 mm
    "hgun_Pistol_heavy_01_F", // 4-five .45 ACP
    "hgun_Pistol_heavy_02_F", // Zubr .45 ACP
    "hgun_Rook40_F" // Rook-40 9 mm
];
// maximum ammo ammount per box
YEIIJ_WreckMaxAmoAmnt = 12; // def 12
// ammo array
YEIIJ_WreckAmmo = [
    "9Rnd_45ACP_Mag", // .45 ACP 9Rnd Mag
    "16Rnd_9x21_Mag", // 9 mm 16Rnd Mag
    "11Rnd_45ACP_Mag", // .45 ACP 11Rnd Mag
    "6Rnd_45ACP_Cylinder" // .45 ACP 6Rnd Cylinder
];
