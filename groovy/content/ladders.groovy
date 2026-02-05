import net.minecraft.block.BlockLadder
import net.minecraft.item.ItemBlock

import classes.Utils
import classes.Variables
import core.Modpack

content.createCreativeTab("trnt.ladders", item('minecraft:ladder'))
content.createCreativeTab("trnt.materials", item('minecraft:stick'))

Variables.WOOD_TYPES.each { rail ->
    Variables.WOOD_TYPES.each { rung ->
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
