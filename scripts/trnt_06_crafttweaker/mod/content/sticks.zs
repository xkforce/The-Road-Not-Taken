#loader crafttweaker
#priority 1
#norun

import crafttweaker.item.IItemStack;
import mods.zenutils.I18n;

static planks as string[] = {
    "minecraft:planks:4",
    "pvj:planks_baobab",
    "minecraft:planks:2",
    "plants2:planks:2",
    "plants2:planks:3",
    "biomesoplenty:planks_0:1",
    "pvj:planks_cottonwood",
    "minecraft:planks:5",
    "biomesoplenty:planks_0:14",
    "biomesoplenty:planks_0:15",
    "biomesoplenty:planks_0:3",
    "plants2:planks:4",
    "biomesoplenty:planks_0:12",
    "minecraft:planks:3",
    "pvj:planks_juniper",
    "biomesoplenty:planks_0:13",
    "biomesoplenty:planks_0:6",
    "pvj:planks_maple",
    "minecraft:planks",
    "biomesoplenty:planks_0:10",
    "biomesoplenty:planks_0:8",
    "sugiforest:sugi_planks",
    "biomesoplenty:planks_0:2",
    "biomesoplenty:planks_0:9",
};

for i, wood in WOOD_TYPES {
    if (WOOD_TYPES.length != planks.length) {
        LOG.error(`Planks array length ${planks.length} does not match wood types array length ${WOOD_TYPES.length}!`);
        break;
    }
    if (itemLoaded(`contenttweaker:${wood}stick`) && itemLoaded(planks[i])) {
        recipes.addShaped(`${wood}stick`, item(`contenttweaker:${wood}stick`) * 4, [
            [planks[i]],
            [planks[i]]
        ]);
    } else {
        LOG.warn(`Mod *${mod}* not loaded or item *contenttweaker:${wood}stick* not found, skipping stick recipe.`);
    }
    // proper translation
    val woodKey as string = I18n.format(`${modpackID}.wood.${wood}.name`);
    val stickName as string = I18n.format(`${modpackID}.item.stick.name`, woodKey);
    item(`contenttweaker:${wood}stick`).displayName = stickName;

    // add all sticks to the appropiate oredict
    <ore:stickWood>.add(item(`contenttweaker:${wood}stick`));
}
