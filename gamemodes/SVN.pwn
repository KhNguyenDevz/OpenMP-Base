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
#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/core/defines.pwn"
#include "./includes/core/enums.pwn"
#include "./includes/core/variables.pwn"
#include "./includes/core/timers.pwn"
#include "./includes/core/functions.pwn"
#include "./includes/core/commands.pwn"
#include "./includes/core/mysql.pwn"
#include "./includes/core/OnPlayerLoad.pwn"
#include "./includes/core/callbacks.pwn"
#include "./includes/core/textdraws.pwn"
#include "./includes/core/streamer.pwn"
#include "./includes/core/OnDialogResponse.pwn"

main() {}

public OnGameModeInit()
{
	//("Dang chuan bi tai gamemode, xin vui long cho doi...");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
