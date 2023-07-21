#define SERVER_GM_TEXT "SVN"
#pragma warning disable 208, 219
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
#include <crashdetect>
#include <easyDialog>
#if defined SOCKET_ENABLED
#include <socket>
#endif

#include "./includes/core/build.pwn" // Core

#include "./includes/Server/Maps/Main.pwn"
#include "./includes/Server/Maps/Spawn.pwn"

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
