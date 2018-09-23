/**
 *
 * Addon: yeiijWreck
 * Author: Jason REDUX (@Yeiij)
 * Date: 23/09/2018
 * File: config.cpp
 *
 */

class CfgPatches
{
	class YeiijWreck
	{
		name = "Yeiij Wreck Addon";
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {};
		author = "Yeiij";
		authors[] = {"Yeiij"};
		url = "https://github.com/yeiij";
		version = "1.0";
		versionStr = "1.0";
		versionAr[] = {1,0};
	};
};

class CfgFunctions
{
	class YeiijWreck
	{
		tag = "YEIIJ";
		class initWreck
		{
			file = "yeiijWreck";
			class WreckPreInit  { preInit  = 1; };
			class WreckPostInit { postInit = 1; };
			class WreckStartAddon {};
		};
		class compilesWreck
		{
			file = "yeiijWreck\functions";
			class WreckCleanWreck {};
			class WreckFillBoxes {};
			class WreckSelectPosition {};
			class WreckSpawnWreck {};
		};
	};
};
