import net.minecraftforge.fml.common.Loader
import net.minecraft.item.Item
import net.minecraft.item.ItemStack

class ItemString {
    private String itemString
    private String mod
    private String item
    private int meta

    ItemString(String input) {
        itemString = input
        def parts = input.toLowerCase().split(":")
        if (parts.length < 2 || parts.length > 3) {
            throw new IllegalArgumentException("Invalid item string *${input}*.")
        }
        mod = parts[0]
        item = parts[1]
        meta = parts.length == 3 ? parts[2].equals("*") ? 32767 : Integer.parseInt(parts[2]) : 0
    }

    def isModLoaded() {
        return Loader.isModLoaded(mod) || mod == "ore"
    }

    def isItemLoaded() {
        return Item.getByNameOrId("${mod}:${item}") != null
    }

    def getItem() {
        if (!isModLoaded()) throw new IllegalArgumentException("Mod *${mod}* is not loaded.")
        if (!isItemLoaded()) throw new IllegalArgumentException("Item *${item}* is not loaded.")
        return Item.getByNameOrId("${mod}:${item}")
    }

    def getItemStack() {
        return new ItemStack(getItem(), 1, meta)
    }

    def getItemStack(int size) {
        return new ItemStack(getItem(), size, meta)
    }
}
