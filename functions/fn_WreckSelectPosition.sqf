/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckSelectPosition.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Select Possition       :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

// check if there are possitions to spawn the Wreck
if (count(YEIIJ_WreckPossitions) < 1) exitWith {
    YEIIJ_WreckRun = false;
};
// select a random position from positions array in config file
private _YEIIJ_WreckRndmPos = selectRandom YEIIJ_WreckPossitions;
// find a safe position to avoid bugs at spawn (keep dreaming)
private _WreckSafePos = [_YEIIJ_WreckRndmPos, 5, 10, 5, 0, 0.1, 0, [], [_YEIIJ_WreckRndmPos,_YEIIJ_WreckRndmPos]] call BIS_fnc_findSafePos;
YEIIJ_WreckSpwnPos = _WreckSafePos;
// delete the used position this will avoid repeating possitions
YEIIJ_WreckPossitions deleteAt (YEIIJ_WreckPossitions find _YEIIJ_WreckRndmPos);

// create marker area
YEIIJ_WreckMkr = "YEIIJ_WreckPosMkr";
createMarker [YEIIJ_WreckMkr, [0,0]];
YEIIJ_WreckMkr setMarkerPos YEIIJ_WreckSpwnPos;
YEIIJ_WreckMkr setMarkerBrush "DIAGGRID";
YEIIJ_WreckMkr setMarkerColor "ColorGUER";
YEIIJ_WreckMkr setMarkerDir 0;
YEIIJ_WreckMkr setMarkerShape "ELLIPSE";
YEIIJ_WreckMkr setMarkerSize [1000, 1000];
YEIIJ_WreckMkr setMarkerAlpha 0.99;

// create marker in case of debug active
if (YEIIJ_WreckDbgMkrs) then {
    YEIIJ_WreckWreckMkr2 = "YEIIJ_WreckWreckMkr2";
    createMarker [YEIIJ_WreckWreckMkr2, [0,0]];
    YEIIJ_WreckWreckMkr2 setMarkerPos YEIIJ_WreckSpwnPos;
    YEIIJ_WreckWreckMkr2 setMarkerShape "ICON";
    YEIIJ_WreckWreckMkr2 setMarkerType "mil_objective";
    YEIIJ_WreckWreckMkr2 setMarkerColor "colorCivilian";
    YEIIJ_WreckWreckMkr2 setMarkerDir 0;
    YEIIJ_WreckWreckMkr2 setMarkerSize [1,1];
    YEIIJ_WreckWreckMkr2 setMarkerAlpha 1;
};
