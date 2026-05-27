#include <amxmodx>
#include <amxmisc>
#include <zombie_plague/add_commas>
//#include <zombie_plague_x/zp_packs_system>

#define PLUGIN  "[ZP] Give Packs"
#define VERSION "1.0"
#define AUTHOR  "DadoDz"

native zp_get_user_packs(index);
native zp_set_user_packs(index, packs);

#define LOG_FILE "zp_give_packs.log"
#define CMD_ACCESS ADMIN_IMMUNITY

new g_playername[33][32];

public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR);

	register_concmd("zp_packs", "cmd_packs", CMD_ACCESS, "<target> <amount> - Give someone Packs", 0)
}

public client_putinserver(id) get_user_name(id, g_playername[id], charsmax(g_playername[]));

public cmd_packs(id, level, cid)
{
	static arg[32], amount[16], szPacks[32], player, packs;
	read_argv(1, arg, charsmax(arg))
	read_argv(2, amount, charsmax(amount))
	
	player = cmd_target(id, arg, CMDTARGET_ALLOW_SELF)
	if (!player) return PLUGIN_HANDLED;
	
	packs = str_to_num(amount);
	if (packs < 1) return PLUGIN_HANDLED;
	
	add_commas(packs, szPacks, charsmax(szPacks));
	zp_set_user_packs(player, zp_get_user_packs(player) + packs);

	client_print_color(0, print_team_default, "^x04[^x01ZP^x04]^x01 ADMIN^x03 %s^x01 gave^x04 %s^x01 Packs to^x03 %s^x04.", g_playername[id], szPacks, g_playername[player])
	log_to_file(LOG_FILE, "ADMIN: (%s) Gave %s Packs to (%s)", g_playername[id], szPacks, g_playername[player])
	return PLUGIN_HANDLED;
}
