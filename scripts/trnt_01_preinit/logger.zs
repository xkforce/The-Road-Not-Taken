#loader preinit
#modloaded roidtweaker zenutils
#priority 2147483645

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

import mods.ctintegration.date.IDate;
import mods.ctintegration.util.DateUtil;
import mods.ctintegration.util.RawLogger;
import mods.zenutils.StaticString;
import mods.zenutils.ZenUtils;

import native.net.minecraftforge.fml.common.LoaderException;

zenClass Logger {
    static exception as LoaderException = LoaderException();

    /**
     * The loader names and their corresponding emotes.
     */
    static loader as string[string]$orderly = {
        "preinit": "⠁",
        "setup": "⠃",
        "contentcreator": "⠇",
        "contenttweaker": "⠧",
        "treetweaker": "⠷",
        "crafttweaker": "⠿",
    };

    zenConstructor() {
        RawLogger.logRaw(`[🤖 Beep boop!] We initialized the logger for the modpack after ${TIMER.timePassed()} minutes!`);
        RawLogger.logRaw(`[🤖 Beep boop!] We are now switching to the new logger. Bye!`);
    }

    /**
     * Gets the current time.
     * @return The current time formatted as YYYY-MM-DD HH:mm:ss.
     */
    function time() as string {
        var current as IDate = DateUtil.now();
        return current.toString();
    }

    /**
     * Formats the given message and logs it to the raw logger
     * @param level The emote representing the level of the message.
     * @param message The message to log.
     * @return The message to be logged to the crafttweaker.log file.
     */
    function msg(level as string, message as string) as string {
        val l as string = `[${loader[ZenUtils.currentLoader()]}]` ?? "";
        val m as string[] = [`[${time()}]`, `[${MODPACK.id.toUpperCase()}]`, `${l}`, `[${level}]`, ` ${message.replace("*", "'")}`];
        RawLogger.logRaw(StaticString.join(m, "").replace("] [", "]["));
        return `${m[1]}${m[4]}`.replace("] [", "][");
    }

    /**
     * Logs a debug message to the crafttweaker.log file, if debug mode is enabled.
     * @param message The message to log.
     */
    function debug(message as string) as void {
        if (!MODPACK.debug_enabled) return;
        logger.logInfo(msg("🐜", message));
    }

    /**
     * Logs an info message to the crafttweaker.log file.
     * @param message The message to log.
     */
    function info(message as string) as void {
        logger.logInfo(msg("📫", message));
    }

    /**
     * Logs a warning message to the crafttweaker.log file.
     * @param message The message to log.
     */
    function warn(message as string) as void {
        logger.logWarning(msg("⚠️", message));
    }

    /**
     * Logs an error message to the crafttweaker.log file.
     * If the modpack has crash_on_error enabled, the game will be closed.
     * @param message The message to log.
     */
    function error(message as string) as void {
        logger.logError(msg("❌", message));
        if (MODPACK.crash_on_error) MODPACK.close();
    }

    /**
     * Logs an exception message to the crafttweaker.log file.
     * If the modpack has crash_on_error enabled, the game will be closed.
     * @param message The message to log.
     */
    function exception(message as string) as void {
        logger.logError(msg("🚨", message), exception);
        if (MODPACK.crash_on_error) MODPACK.close();
    }

    function shoutout(tag as string, message as string[], seperate as bool = true) as void {
        var max_len as int = 0;
        for msg in message {
            if (msg.length > max_len) {
                max_len = msg.length;
            }
        }
        if (max_len == 0) return;
        info(`${tag} ${StaticString.rightPad("╔", max_len + 3, "═")}╗`);
        for line in message {
            if (!StaticString.isBlank(line)) {
                info(`${tag} ║ ${StaticString.rightPad(line, max_len)} ║`);
            }
            if (message.length > 1 && (StaticString.isBlank(line) || (seperate && message.indexOf(line) == 0))) {
                info(`${tag} ╠${StaticString.rightPad("═", max_len + 2, "═")}╣`);
            }
        }
        info(`${tag} ${StaticString.rightPad("╚", max_len + 3, "═")}╝`);
    }
}

global LOG as Logger = Logger();
