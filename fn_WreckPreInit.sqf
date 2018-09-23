/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: fn_WreckPreInit.sqf
 *
 */

diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";
diag_log " || yeiijWreck (Server): PRE-INIT                                || ";
diag_log " |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||| ";

if (hasInterface) exitWith {};

call compile preprocessFileLineNumbers "yeiijWreck\config\config.sqf";
