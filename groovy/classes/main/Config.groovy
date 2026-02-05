import net.minecraftforge.common.config.Configuration
import roidrole.roidtweaker.mods.forge.config.Reader
import roidrole.roidtweaker.mods.forge.config.IConfigFile

class Config {
    public static final Config MODPACK = new Config("groovy/config/trnt.cfg");

    private Configuration config;

    Config(String path) {
        try {
            config = Reader.getConfigFile(path).config
        } catch (Exception e) {
            log.exception(e)
        }
    }

    public boolean getBoolean(String category, String name) {
        return config.getCategory(category).get(name).getBoolean();
    }

    public boolean getBooleanOrDefault(String category, String name, boolean defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getBoolean();
    }

    public int getInt(String category, String name) {
        return config.getCategory(category).get(name).getInt();
    }

    public int getIntOrDefault(String category, String name, int defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getInt();
    }

    public String getString(String category, String name) {
        return config.getCategory(category).get(name).getString();
    }

    public String getStringOrDefault(String category, String name, String defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getString();
    }

    public double getDouble(String category, String name) {
        return config.getCategory(category).get(name).getDouble();
    }

    public double getDoubleOrDefault(String category, String name, double defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getDouble();
    }

    public long getLong(String category, String name) {
        return config.getCategory(category).get(name).getLong();
    }

    public long getLongOrDefault(String category, String name, long defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getLong();
    }

    public boolean[] getBooleanArray(String category, String name) {
        return config.getCategory(category).get(name).getBooleanList();
    }

    public boolean[] getBooleanArrayOrDefault(String category, String name, boolean[] defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getBooleanList();
    }

    public int[] getIntArray(String category, String name) {
        return config.getCategory(category).get(name).getIntList();
    }

    public int[] getIntArrayOrDefault(String category, String name, int[] defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getIntList();
    }

    public String[] getStringArray(String category, String name) {
        return config.getCategory(category).get(name).getStringList();
    }

    public String[] getStringArrayOrDefault(String category, String name, String[] defaultValue, String comment) {
        return config.get(category, name, defaultValue, comment).getStringList();
    }
}
