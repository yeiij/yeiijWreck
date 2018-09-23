/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckPostInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijWreck (Server): POST-INIT                               || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

[] call YEIIJ_fnc_WreckStartAddon;
