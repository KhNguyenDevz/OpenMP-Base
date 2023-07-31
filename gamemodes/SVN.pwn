#define SERVER_GM_TEXT "SVN"
#pragma warning disable 208, 219, 209
#pragma disablerecursion
#define SSCANF_NO_NICE_FEATURES

#include <a_samp>
#include <a_mysql>	
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_hooks>
#include <progress2>
#include <crashdetect>
#include <DialogCenter>

/*NEW INCLUDE*/
#include <GM\NoticeMsg>
#include <GM\HudCustom>
#include <GM\Progressbar>

#if defined SOCKET_ENABLED
#include <socket>
#endif

#include "./includes/Server/_textdraw.pwn" // MAIN TEXTDRAW

#include "./includes/Server/Auth/Main/_var.pwn" // AUTH
#include "./includes/Server/Auth/Main/_function.pwn" // AUTH

#include "./includes/core/build.pwn" // Core
#include "./includes/Server/Vehicles/Speedo/_function.pwn"
#include "./includes/Server/Vehicles/Speedo/_textdraw.pwn"

// #### AUTH ####
#include "./includes/Server/Auth/Main/_textdraw.pwn"
#include "./includes/Server/Auth/Main/_callback.pwn"

// #### MAPS ####
#include "./includes/Server/Maps/Main.pwn"
#include "./includes/Server/Maps/Spawn.pwn"
// #### INVENTORY ####

#include "./includes/Client/Inventory/build.pwn"

// #### JOB ####
#include "./includes/Server/Jobs/_var.pwn"
#include "./includes/Server/Jobs/_function.pwn"
#include "./includes/Server/Jobs/_callback.pwn"

#include "./includes/Server/Jobs/Pizza/_var.pwn"
#include "./includes/Server/Jobs/Pizza/_function.pwn"
#include "./includes/Server/Jobs/Pizza/_callback.pwn"


main() {}

public OnGameModeInit()
{
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
