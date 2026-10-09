#loader contenttweaker
#priority 0

//template written with assistance from teksturepako and modified with help from ACgaming, ChaosStrikez and WaitingIdly

import mods.contenttweaker.VanillaFactory;
import mods.zenutils.cotx.Block;
import crafttweaker.data.IData;
import mods.contenttweaker.Commands;

//this creates the tile entity for the air block that actually emits the light. It needs to be a tile entity because this block needs to
//delete itself to prevent creating a trail of light. date.time.asInt controls delay before deletion. default 3 ticks
//world.setBlockstate controls what block this lit air block is replaced by. default: minecraft:air
val orangelightblock = VanillaFactory.createActualTileEntity(1);
orangelightblock.onTick = function(tileEntity, world, pos) {
    if (world.remote) return;
    val data as IData = tileEntity.data;
    if (!isNull(data) && data has "time") {
        tileEntity.updateCustomData({time: data.time.asInt() + 1});
        if (data.time.asInt() % 3 == 0) {
            val player = world.getClosestPlayer(pos.x, pos.y, pos.z, 64, false);
            if (isNull(player)) return;
            world.setBlockState(<blockstate:minecraft:air>, pos);
        }
    } else {
        tileEntity.updateCustomData({time: 1});
    }
};
orangelightblock.register();

//this is the lit air block itself. it uses the above tile entity to delete itself after a delay. setlightValye does what it says.
//in order to make this emit colored light, use coloredlux to assign a light color to this block. in this example, we are using orange.
val orangeairlight = VanillaFactory.createExpandBlock("orangeairlight", <blockmaterial:air>);
orangeairlight.tileEntity = orangelightblock;
orangeairlight.setBlockHardness(0.0);
orangeairlight.setBlockResistance(0.0);
orangeairlight.setLightValue(15);
orangeairlight.setLightOpacity(0);
orangeairlight.setFullBlock(false);
orangeairlight.setBlockMaterial(<blockmaterial:air>);
orangeairlight.setBlockLayer("TRANSLUCENT");
orangeairlight.setToolLevel(0);
orangeairlight.setTranslucent(true);
orangeairlight.setReplaceable(true);
orangeairlight.setPassable(true);
orangeairlight.register();
