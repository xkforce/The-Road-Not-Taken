import java.text.SimpleDateFormat
import net.minecraftforge.fml.common.FMLCommonHandler
import com.cleanroommc.groovyscript.helper.GroovyFile
import org.apache.commons.lang3.StringUtils

class Logger {
    private enum Stage {
        BOOT("□□□□"),
        PRE_INIT("■□□□"),
        INIT("■■□□"),
        POST_INIT("■■■□"),
        FINISH("■■■■");

        Stage(String emoji) {
            this.emoji = emoji
        }

        String getEmoji() {
            return emoji
        }

        private final String emoji
    }

    private enum Level {
        DEBUG("🐞"),
        INFO("📫"),
        WARN("⚠️"),
        ERROR("❌"),
        FATAL("🚨");

        Level(String emoji) {
            this.emoji = emoji
        }

        String getEmoji() {
            return emoji
        }

        private final String emoji
    }

    private static Stage stage = Stage.BOOT

    private static GroovyFile grFile

    private static void logRaw(String message) {
		if(grFile == null){
			try {
				grFile = file("logs/${getPackId()}.log")
                grFile.write("")
			} catch (FileNotFoundException e) {
                log.error(e.getStackTrace())
				return
			}
		}
        grFile.append(message)
        grFile.append("\n")
    }

    private static String logging(Level level, String message) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss")
        String time = dateFormat.format(Calendar.getInstance().getTime())
        String msg = "[${time}] [${getPackId().toUpperCase()}] [${stage.getEmoji()}] [${level.getEmoji()}] ${message}".replace("] [", "][")
        logRaw(msg)
        return msg
    }

    private static void close() {
        FMLCommonHandler.instance().handleExit(1);
    }

    public static void advanceStage() {
        stage = Stage.values()[(stage.ordinal() + 1) % Stage.values().length]
    }

    public static void debug(String message) {
        if (!Config.MODPACK.getBoolean("trnt.debug", "enabled")) return
        logging(Level.DEBUG, message)
        log.debug(message)
    }

    public static void info(String message) {
        logging(Level.INFO, message)
        log.info(message)
    }

    public static void warn(String message) {
        logging(Level.WARN, message)
        log.warn(message)
    }

    public static void error(String message) {
        logging(Level.ERROR, message)
        log.error(message)
        if (Config.MODPACK.getBoolean("trnt.debug", "crash_error")) close()
    }

    public static void fatal(String message) {
        logging(Level.FATAL, message)
        log.fatal(message)
        close()
    }

    public static void shoutout(String tag, Iterable<String> message) {
        int maxLen = 0
        for (String msg in message) {
            if (msg.length() > maxLen) {
                maxLen = msg.length()
            }
        }
        if (maxLen == 0) return
        info("${tag} ${StringUtils.rightPad("╔", maxLen + 3, "═")}╗")
        for (String line in message) {
            if (!StringUtils.isBlank(line)) {
                info("${tag} ║ ${StringUtils.rightPad(line, maxLen)} ║")
            }
            if (message.size() > 1 && StringUtils.isBlank(line)) {
                info("${tag} ╠${StringUtils.rightPad("═", maxLen + 2, "═")}╣")
            }
        }
        info("${tag} ${StringUtils.rightPad("╚", maxLen + 3, "═")}╝")
    }
}
