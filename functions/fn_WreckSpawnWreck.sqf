/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckSpawnWreck.sqf
 *
 */

diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";
diag_log " :: yeiijWreck (Server): Spawn Wreck            :: ";
diag_log " ::::::::::::::::::::::::::::::::::::::::::::::::: ";

YEIIJ_WreckWreck = YEIIJ_WreckWreckCls createVehicle YEIIJ_WreckDefPos;
YEIIJ_WreckWreck setVehiclePosition [YEIIJ_WreckSpwnPos, [], 5, "CAN_COLLIDE"];

YEIIJ_WreckBox = YEIIJ_WreckBoxCls createVehicle YEIIJ_WreckDefPos;
YEIIJ_WreckBox setVehiclePosition [YEIIJ_WreckWreck, [], 15, "NONE"];
clearItemCargoGlobal YEIIJ_WreckBox;
clearMagazineCargoGlobal YEIIJ_WreckBox;
clearWeaponCargoGlobal YEIIJ_WreckBox;
clearBackpackCargoGlobal YEIIJ_WreckBox;

/*[] spawn {
	YEIIJ_WreckBubbles = YEIIJ_WreckBubblesCls createVehicle [0,0,0];
	YEIIJ_WreckBubbles attachTo [YEIIJ_WreckWreck, [0,0,0]];
};*/

