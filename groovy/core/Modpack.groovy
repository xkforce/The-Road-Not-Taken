import net.minecraft.item.ItemBlock
import net.minecraftforge.fml.common.FMLCommonHandler
import net.minecraftforge.fml.common.Loader
import classes.main.Config
import classes.main.Counter
import classes.main.Logger
import classes.main.Timer

/* ╔═══════════════════════════════════════════════════════════════════╗ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ║░▀█▀░█░█░█▀▀░░░█▀▄░█▀█░█▀█░█▀▄░░░█▀█░█▀█░▀█▀░░░▀█▀░█▀█░█░█░█▀▀░█▀█░║ */
/* ║░░█░░█▀█░█▀▀░░░█▀▄░█░█░█▀█░█░█░░░█░█░█░█░░█░░░░░█░░█▀█░█▀▄░█▀▀░█░█░║ */
/* ║░░▀░░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░▀░▀▀░░░░▀░▀░▀▀▀░░▀░░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░║ */
/* ║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║ */
/* ╚═══════════════════════════════════════════════════════════════════╝ */

final class Modpack {
    public static final String NAME = Config.MODPACK.getStringOrDefault("trnt.modpack", "name", getPackName(), "The name of the modpack.")
    public static final String ID = Config.MODPACK.getStringOrDefault("trnt.modpack", "id", getPackId(), "The ID of the modpack.")
    public static final String VERSION = Config.MODPACK.getStringOrDefault("trnt.modpack", "version", getPackVersion(), "The version of the modpack.")

    public static final boolean DEBUG_ENABLED = Config.MODPACK.getBooleanOrDefault("trnt.debug", "enabled", false, "Enables debug mode. This enables additional logging and disables the removal of certain messages.")
    public static final boolean CRASH_ON_ERROR = Config.MODPACK.getBooleanOrDefault("trnt.debug", "crash_error", true, "When enabled, any error while loading scripts will crash the game.")

    public static final Logger LOGGER = new Logger()
    public static final Timer TIMER = new Timer()

    public static final Counter BLOCK_COUNTER = new Counter("block")
    public static final Counter ITEM_COUNTER = new Counter("item")
    public static final Counter FLUID_COUNTER = new Counter("fluid")

    public static void close() {
        FMLCommonHandler.instance().handleExit(1);
    }

    public static void registerItem(String name, Item item) {
        content.registerItem(name, item)
        ITEM_COUNTER.increment()
    }

    public static void registerBlock(String name, Block block) {
        content.registerBlock(name, block)
        BLOCK_COUNTER.increment()
    }

    public static void registerBlock(String name, Block block, ItemBlock itemBlock) {
        content.registerBlock(name, block, itemBlock)
        BLOCK_COUNTER.increment()
    }
}
