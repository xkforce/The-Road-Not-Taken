import classes.ItemString

class ItemUtils {
    def static itemLoaded(String item) {
        return (new ItemString(item)).isItemLoaded()
    }

    def static modLoaded(String item) {
        return (new ItemString(item)).isModLoaded()
    }

    def static item(String item) {
        return (new ItemString(item)).getItem()
    }

    def static itemStack(String item) {
        return (new ItemString(item)).getItemStack()
    }

    def static itemStack(String item, int size) {
        return (new ItemString(item)).getItemStack(size)
    }

    def static ingredient(String item) {
        return (new ItemString(item)).getIngredient()
    }

    def static ingredient(String item, int size) {
        return (new ItemString(item)).getIngredient(size)
    }
}
