/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckFillBoxes.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Fill Boxes              :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// define temporal vars
private _YEIIJ_WreckWepAmnt = 0;
private _YEIIJ_WreckAmoAmnt = 0;
private _YEIIJ_WreckWeapons = [];

// select weapons to fill the box and group them in array
for "_i" from 1 to YEIIJ_WreckMaxWepTyps do {
    _YEIIJ_WreckWeapons pushBack (selectRandom YEIIJ_WreckWeapons);
};

// fill the box with the previous selected weeapons
{
    // randomize ammount of each weapons based on config file
    _YEIIJ_WreckWepAmnt = round(random YEIIJ_WreckMaxWepAmnt);
    YEIIJ_WreckBox addWeaponCargoGlobal [_x,_YEIIJ_WreckWepAmnt];
} forEach _YEIIJ_WreckWeapons;

// fill the box with magazines
{
    // randomize ammount of each magazine based on config file
    _YEIIJ_WreckAmoAmnt = round(random YEIIJ_WreckMaxAmoAmnt);
    YEIIJ_WreckBox addMagazineCargoGlobal [_x,_YEIIJ_WreckAmoAmnt];
} forEach YEIIJ_WreckAmmo;
