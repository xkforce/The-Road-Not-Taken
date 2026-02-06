import net.minecraft.client.resources.I18n as clientI18n
import net.minecraft.util.text.translation.I18n as serverI18n
import org.apache.commons.lang3.StringUtils

class Utils {
    static String translate(String key, String... args) {
        if (isClient()) {
            return clientI18n.format(key, args)
        }
        return serverI18n.translateToLocalFormatted(key, args)
    }

    static ArrayList<ArrayList<String>> readConfig(String cfgName) {
        return file("groovy/config", cfgName).readLines()
            .findAll { !it.startsWith("#") && !StringUtils.isBlank(it) }
            .collect { it.split(";") }
    }
}
