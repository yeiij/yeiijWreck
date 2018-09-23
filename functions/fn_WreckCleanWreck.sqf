/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckCleanWreck.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Clean Wreck            :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

deleteVehicle YEIIJ_WreckBox;
deleteVehicle YEIIJ_WreckBubbles;
deleteVehicle YEIIJ_WreckWreck;
// clean marker in case of debug active
if (YEIIJ_WreckDbgMkrs) then {
    deleteMarker YEIIJ_WreckMkr;
};
