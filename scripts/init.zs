#loader preinit contenttweaker crafttweaker
#modloaded zenutils roidtweaker
#priority 1111
#nowarn

/* ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ */
/* ░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░ */
/* ░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░ */
/* ░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░ */
/* ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░ */

import mods.ctintegration.date.IDate;
import mods.ctintegration.util.DateUtil;
import mods.ctintegration.util.RawLogger;
import mods.roidtweaker.forge.config.IConfigFile;
import mods.roidtweaker.forge.config.Reader;
import mods.zenutils.StaticString;
import mods.zenutils.ZenUtils;

import native.net.minecraftforge.fml.common.FMLCommonHandler;
import native.net.minecraftforge.fml.common.LoaderException;

// We need to keep track of the start time of the modpack
global START_TIME as IDate = DateUtil.now();

global timePassed as function()string = function() as string {
    return DateUtil.fromTimeInMillis(DateUtil.now().timeInMillis - START_TIME.timeInMillis).format("mm:ss:SS");
};

// Setup modpack cfg file
global cfg as IConfigFile = Reader.getConfigFile("scripts/trnt.cfg");

/**
 * Get a string from the config file.
 * @param catagory The catagory to get the string from.
 * @param name The name of the string.
 * @return The string.
 */
global cfgString as function(string, string)string = function(catagory as string, name as string) as string {
    return cfg.getString(catagory, name).replace('"','');
};

// Read the modpack config and set global variables
global modpackID as string = cfgString("trnt.modpack", "id");
global modpackName as string = cfgString("trnt.modpack", "name");
global modpackVersion as string = cfgString("trnt.modpack", "version");

global debug as bool = cfg.getBoolean("trnt.debug", "enabled");
global crashError as bool = cfg.getBoolean("trnt.debug", "crash_error");

// When debug mode is enabled, disable the removal of certain messages, furthermore a LOT more messages will be printed
if (debug) {
    log.info(`[🚧 MODPACK_SETUP 🚧] 🔍 Debug mode is enabled. This disables the removal of certain messages.`, "preinit");
} else {
    // Clean up the crafttweaker.log file
    addRegexLogFilter("^.*Could not find creative tab with name.*$");
}

// Init the logger
zenClass Log {
    static exception as LoaderException = LoaderException();
    var name as string = "";
    var debug as bool = false;
    var crash as bool = false;

    zenConstructor(_modpack as string, _debug as bool, _crash as bool) {
        name = _modpack;
        debug = _debug;
        crash = _crash;
    }

    /**
    * Checks if the current loader is the given loader.
    * @param stage The loader to check.
    * @return True if the current loader is the given loader.
    */
    function isStage(loader as string) as bool {
        val stage as string = ZenUtils.currentLoader();
        return stage == loader;
    }

    /** Gets the current time.
     * @return The current time formatted as YYYY-MM-DD HH:mm:ss.
     */
    function time() as string {
        var current as IDate = DateUtil.now();
        return current.toString();
    }

    /**
    * Formats a message for the log.
    * @param message The message to format.
    * @return The formatted message.
    */
    function msg(message as string) as string {
        return `[${name.replace(" ", "").toUpperCase()}] ${message.replace("*", "'")}`.replace("] [", "][");
    }

    /**
    * Formats a message for the raw log.
    * @param icon The icon to use.
    * @param message The message to format.
    * @return The formatted message.
    */
    function rawLog(icon as string, message as string) as string {
        return `[${time()}][${ZenUtils.currentLoader().toUpperCase()}][${icon}]${msg(message)}`;
    }

    /**
    * Prints a message to the log as trace.
    * @param message The message to print.
    * @param loader The loader to print the message for.
    * @return True if the message was printed, false otherwise.
    */
    function trace(message as string, loader as string = " ") as bool {
        if (debug && (StaticString.isBlank(loader) || isStage(loader))) {
            RawLogger.logRaw(rawLog("🐜", message));
            logger.logInfo(msg(message));
            return true;
        }
        return false;
    }

    /**
    * Prints a message to the log as info.
    * @param message The message to print.
    * @param loader The loader to print the message for.
    * @return True if the message was printed, false otherwise.
    */
    function info(message as string, loader as string = " ") as bool {
        if (StaticString.isBlank(loader) || isStage(loader)) {
            RawLogger.logRaw(rawLog("📫", message));
            logger.logInfo(msg(message));
            return true;
        }
        return false;
    }

    /**
    * Prints a message to the log as warning.
    * @param message The message to print.
    * @param loader The loader to print the message for.
    * @return True if the message was printed, false otherwise.
    */
    function warn(message as string, loader as string = " ") as bool {
        if (StaticString.isBlank(loader) || isStage(loader)) {
            RawLogger.logRaw(rawLog("⚠️", message));
            logger.logWarning(msg(message));
            return true;
        }
        return false;
    }

    /**
    * Prints a message to the log as error.
    * @param message The message to print.
    * @param loader The loader to print the message for.
    * @return True if the message was printed, false otherwise.
    */
    function error(message as string, loader as string = " ") as bool {
        if (StaticString.isBlank(loader) || isStage(loader)) {
            RawLogger.logRaw(rawLog("❌", message));
            logger.logError(msg(message));
            if (crash) {
                FMLCommonHandler.instance().handleExit(1);
            }
            return true;
        }
        return false;
    }

    /**
    * Prints a message to the log as exception.
    * @param message The message to print.
    * @param loader The loader to print the message for.
    * @return True if the message was printed, false otherwise.
    */
    function exception(message as string, loader as string = " ") as bool {
        if (StaticString.isBlank(loader) || isStage(loader)) {
            RawLogger.logRaw(rawLog("🚨", message));
            logger.logError(msg(message), exception);
            if (crash) {
                FMLCommonHandler.instance().handleExit(1);
            }
            return true;
        }
        return false;
    }
}

global log as Log = Log(modpackName, debug, crashError);

// MOTD
log.info(`[💾 MODPACK_BOOT 💾] ╔══════════════════════════════════════════════════════════════════════════════╗`, "preinit");
log.info(`[💾 MODPACK_BOOT 💾] ║ Welcome to ${modpackName} v${StaticString.rightPad(modpackVersion, 40)}      ║`, "preinit");
log.info(`[💾 MODPACK_BOOT 💾] ║ ============================================================================ ║`, "preinit");
log.info(`[💾 MODPACK_BOOT 💾] ║ This is a custom header made by *MasterEnderman*.                            ║`, "preinit");
log.info(`[💾 MODPACK_BOOT 💾] ║ For more information, visit 'https://github.com/xkforce/The-Road-Not-Taken/' ║`, "preinit");
log.info(`[💾 MODPACK_BOOT 💾] ╚══════════════════════════════════════════════════════════════════════════════╝`, "preinit");

// Announce loading stage
log.info(`[🚧 MODPACK_SETUP 🚧] Entering stage *${ZenUtils.currentLoader().toUpperCase()}* after ${timePassed()}!`);

// Little check if all required CT addons are loaded
val ct_addons as string[string]$orderly = {
    "crafttweaker": "https://www.curseforge.com/minecraft/mc-mods/crafttweaker",
    "contenttweaker": "https://www.curseforge.com/minecraft/mc-mods/contenttweaker",
    "contentcreator": "https://www.curseforge.com/minecraft/mc-mods/contentcreator",
    "roidtweaker": "https://www.curseforge.com/minecraft/mc-mods/roid-tweaker",
    "zenutils": "https://www.curseforge.com/minecraft/mc-mods/zenutil",
};

if (log.isStage("preinit")) {
    log.info(`[🚧 MODPACK_SETUP 🚧] 🔍 Searching for required mods...`);
    for addon, url in ct_addons {
        if (loadedMods has addon) {
            log.info(`[🚧 MODPACK_SETUP 🚧] ✅ Found ${addon}. Continuing...`);
        } else {
            // @enderman can we implement a better way to do this?
            log.error(`[🚧 MODPACK_SETUP 🚧] ❌ Unable to find ${addon}. It can be downloaded from ${url}.`);
            log.exception(`[🚧 MODPACK_SETUP 🚧] ❌ The modpack is unable to continue and we now will exit...`);
            // Yes, this actually just closes the game, it would be better if we could make this clearer to the user
            FMLCommonHandler.instance().handleExit(1);
        }
    }
    log.info("[🚧 MODPACK_SETUP 🚧] 📣 Found all mods. Starting to load scripts!");
}
