#loader crafttweaker
#modloaded fluidintetweaker
#priority 5

import mods.fluidintetweaker.FITweaker;
import mods.fluidintetweaker.FBTweaker;
import mods.fluidintetweaker.event.CustomFluidInteractionEvent;
import mods.fluidintetweaker.interaction.Condition; 

FITweaker.addRecipe(<liquid:water>, <liquid:lava>, FITweaker.outputBuilder()
    .addEvent(FITweaker.eventBuilder()
        .createSetBlockEvent(<blockstate:minecraft:end_stone>)
        .addCondition(Condition.biome, ["minecraft:sky"]))
    .addEvent(FITweaker.eventBuilder()
        .createSetBlockEvent(<blockstate:contenttweaker:fayalite>)
        .addCondition(Condition.byChance, [0.4f])
        .addCondition(Condition.biome, ["minecraft:sky"]))
);

FITweaker.addRecipe(<liquid:lava>, <liquid:water>, FITweaker.outputBuilder()
    .addEvent(FITweaker.eventBuilder()
        .createSetBlockEvent(<blockstate:minecraft:end_stone>)
        .addCondition(Condition.biome, ["minecraft:sky"]))
    .addEvent(FITweaker.eventBuilder()
        .createSetBlockEvent(<blockstate:additions:blocks-amethystore>)
        .addCondition(Condition.byChance, [0.002f])
        .addCondition(Condition.biome, ["minecraft:sky"]))
    .addEvent(FITweaker.eventBuilder()
        .createSetBlockEvent(<blockstate:additions:blocks-citrineore>)
        .addCondition(Condition.byChance, [0.002f])
        .addCondition(Condition.biome, ["minecraft:sky"]))
);
