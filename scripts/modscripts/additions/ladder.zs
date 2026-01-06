#loader crafttweaker
#modloaded additions
#priority 1

import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

import scripts.variables.misc.sticks;

for rail in sticks {
    for rung in sticks {
        val ladder as string = `additions:ladders-${rail}rail${rung}rung`;
        if (itemLoaded(ladder)) {
            val ladderItem as IItemStack = item(ladder);
            val stickRail as IItemStack = item(`contenttweaker:${rail}stick`);
            val stickRung as IItemStack = item(`contenttweaker:${rung}stick`);
            val nameRecipe as string = `craft_ladder_${rail}_${rung}`;
            recipes.addShaped(nameRecipe, ladderItem * 3, [
                [stickRail, null, stickRail],
                [stickRail, stickRung, stickRail],
                [stickRail, null, stickRail]
            ]);

            val railKey as string = I18n.format(`${modpackID}.wood.${rail}, name`);
            val rungKey as string = I18n.format(`${modpackID}.wood.${rung}, name`);
            ladderItem.displayName = I18n.format(`${modpackID}.block.ladder.name`, railKey, rungKey);
        }
    }
}
