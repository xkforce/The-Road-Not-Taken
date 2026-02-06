import net.minecraft.block.BlockLadder
import net.minecraft.item.ItemBlock

import classes.Utils
import core.Modpack

Modpack.LOGGER.info("🪜 Creating ladders and sticks...")

def woods = Utils.readConfig("blocks/wood.cfg").collect { it[0] }

woods.each { rail ->
    woods.each { rung ->
        def name = "${rail}rail${rung}rungladder"

        def b = (new BlockLadder() {
            /**
             * getLocalizedName()
             */
            String func_149732_F() {
                def railKey = Utils.translate("trnt.wood.${rail}.name")
                def rungKey = Utils.translate("trnt.wood.${rung}.name")
                return Utils.translate("trnt.block.ladder.name", railKey, rungKey)
            }
        }).setCreativeTab(creativeTab("trnt.ladders"))

        def ib = new ItemBlock(b) {
            /**
             * getItemStackDisplayName()
             */
            String func_77653_i(ItemStack stack) {
                return this.block.getLocalizedName()
            }
        }
        Modpack.registerBlock(name, b, ib)
    }
    def stick = "${rail}stick"
    def i = (new Item() {
        @Override
        int getItemBurnTime(ItemStack stack) {
            return 100
        }

        String func_77653_i(ItemStack stack) {
            return Utils.translate("trnt.item.stick.name", Utils.translate("trnt.wood.${rail}.name"))
        }
    }).setCreativeTab(creativeTab("trnt.materials"))
    Modpack.registerItem(stick, i)
}
