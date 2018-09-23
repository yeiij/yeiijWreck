/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckStartAddon.sqf
 *
 */

diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Starting Addon          :: ";
diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

[] spawn {
    while {YEIIJ_WreckRun} do {

        sleep YEIIJ_WreckWait;

        [] call YEIIJ_fnc_WreckSelectPosition;

        if (!YEIIJ_WreckRun) exitWith {
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
            diag_log " :: yeiijWreck (Server): FINISHED                :: ";
            diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
        };

        [] call YEIIJ_fnc_WreckSpawnWreck;

        sleep 2.5;

        [] call YEIIJ_fnc_WreckFillBoxes;

        diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";
        diag_log format[" :: yeiijWreck (Server): GRID: %1                 :: ",  mapGridPosition YEIIJ_WreckWreck];
        diag_log " :::::::::::::::::::::::::::::::::::::::::::::::::: ";

        //sleep 55;
        sleep YEIIJ_WreckSpawnDelay;

        [] call YEIIJ_fnc_WreckCleanWreck;

        sleep 5;
    };
};
