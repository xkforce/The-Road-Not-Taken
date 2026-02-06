import classes.main.Logger

class ItemString {
    private String itemString
    private String mod
    private String item
    private int meta

    ItemString(String input) {
        itemString = input
        def parts = input.split(":")
        if (parts.length < 2 || parts.length > 3) {
            Logger.error("Invalid item string: ${input}")
        }
        mod = parts[0]
        item = parts[1]
        meta = parts.length == 3 ? parts[2].equals("*") ? 32767 : Integer.parseInt(parts[2]) : 0
    }

    def isModLoaded() {
        return isLoaded(mod) || mod == "ore"
    }

    def isItemLoaded() {
        return Item.getByNameOrId("${mod}:${item}") != null
    }

    def getItem() {
        if (!isModLoaded()) {
            Logger.error("Mod *${mod}* is not loaded.")
            return null
        }
        if (!isItemLoaded()) {
            Logger.error("Item *${item}* is not loaded.")
            return null
        }
        return Item.getByNameOrId("${mod}:${item}")
    }

    def getItemStack() {
        return item("${mod}:${item}", meta)
    }

    def getItemStack(int size) {
        return item("${mod}:${item}", meta).withAmount(size)
    }

    def getIngredient() {
        return (mod == "ore") ? ore(item) : getItemStack()
    }

    def getIngredient(int size) {
        return (mod == "ore") ? ore(item).withAmount(size) : getItemStack(size)
    }
}
