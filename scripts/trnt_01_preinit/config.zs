#loader preinit
#modloaded roidtweaker zenutils
#priority 2147483646

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

import mods.roidtweaker.forge.config.IConfigFile;
import mods.roidtweaker.forge.config.Reader;

import native.net.minecraftforge.fml.common.FMLCommonHandler;

zenClass Config {
    static CONFIG as IConfigFile = Reader.getConfigFile("scripts/trnt.cfg");

    val name as string;
    val id as string;
    // This needs to be named "ver" as "version" seems to be a protected keyword
    // Reference: https://docs.blamejared.com/1.12/en/Dev_Area/ZenTokens/#zentokens
    val ver as string;

    val debug_enabled as bool;
    val crash_on_error as bool;

    zenConstructor() {
        name = CONFIG.getString("trnt.modpack", "name").replace('"', '');
        ver = CONFIG.getString("trnt.modpack", "version").replace('"', '');
        id = CONFIG.getString("trnt.modpack", "id").replace('"', '');

        debug_enabled = CONFIG.getBoolean("trnt.debug", "enabled");
        crash_on_error = CONFIG.getBoolean("trnt.debug", "crash_error");

        mods.ctintegration.util.RawLogger.logRaw(`[🤖 Beep boop!] We initialized the config file for the modpack after ${TIMER.timePassed()} minutes!`);
    }

    /**
     * Closes the game.
     */
    function close() as void {
        FMLCommonHandler.instance().handleExit(1);
    }
}

global MODPACK as Config = Config();
