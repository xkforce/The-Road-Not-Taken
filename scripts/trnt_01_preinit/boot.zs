#loader preinit
#modloaded roidtweaker
#priority 2147483647
#nowarn

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

import mods.ctintegration.date.IDate;
import mods.ctintegration.util.DateUtil;

zenClass Timer {
    val START_TIME as IDate;
    var LAST_TIME as long;

    zenConstructor() {
        START_TIME = DateUtil.now();
        LAST_TIME = START_TIME.timeInMillis;
        mods.ctintegration.util.RawLogger.logRaw(`[🤖 Beep boop!] It is ${START_TIME.format("HH:mm:ss")} now and the modpack is loading!`);
    }

    /**
     * Gets the time passed since the last time the function was called.
     * @return The time passed formatted as mm:ss:SS.
     */
    function timePassed() as string {
        val currentTime as long = DateUtil.now().timeInMillis;
        val timePassed as long = currentTime - LAST_TIME;
        LAST_TIME = currentTime;
        return DateUtil.fromTimeInMillis(timePassed).format("mm:ss:SS");
    }

    /**
     * Gets the time passed since the script loading started.
     * @return The time passed formatted as mm:ss:SS.
     */
    function timeTotal() as string {
        val diff as long = DateUtil.now().timeInMillis - START_TIME.timeInMillis;
        return DateUtil.fromTimeInMillis(diff).format("mm:ss:SS");
    }
}

global TIMER as Timer = Timer();
