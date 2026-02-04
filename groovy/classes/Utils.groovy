import net.minecraftforge.fml.common.FMLCommonHandler
import net.minecraft.client.resources.I18n

class Utils {
    static def isClient() {
        return FMLCommonHandler.instance().getEffectiveSide().isClient()
    }

    static def isDedicatedClient() {
        return FMLCommonHandler.instance().getSide().isClient()
    }

    static def isServer() {
        return FMLCommonHandler.instance().getEffectiveSide().isServer()
    }

    static def isDedicatedServer() {
        return FMLCommonHandler.instance().getSide().isServer()
    }

    static def translate(String key, String... args) {
        if (isClient()) {
            return I18n.format(key, args)
        }
        return net.minecraft.util.text.translation.I18n.translateToLocalFormatted(key, args)
    }
}
