// FITweaker.addRecipe(<liquid:lava>, <liquid:water>, FITweaker.outputBuilder().addEvent(
// FITweaker.eventBuilder().createSetBlockEvent(<blockstate:minecraft:glass>)
// .addCondition(Condition.byChance, [0.7f])
// .addCondition(Condition.biome, ["minecraft:sky"])));

import mods.fluidintetweaker.FITweaker;
import mods.fluidintetweaker.FBTweaker;
import mods.fluidintetweaker.event.CustomFluidInteractionEvent;
import mods.fluidintetweaker.interaction.Condition; 

FITweaker.addRecipe(<liquid:lava>, <liquid:water>, FITweaker.outputBuilder()
.addEvent(FITweaker.eventBuilder().createSetBlockEvent(<blockstate:minecraft:end_stone>).addCondition(Condition.biome, ["minecraft:sky"]))
.addEvent(FITweaker.eventBuilder().createSetBlockEvent(<blockstate:additions:blocks-amethystore>).addCondition(Condition.byChance, [0.002f]).addCondition(Condition.biome, ["minecraft:sky"]))
.addEvent(FITweaker.eventBuilder().createSetBlockEvent(<blockstate:additions:blocks-citrineore>).addCondition(Condition.byChance, [0.002f]).addCondition(Condition.biome, ["minecraft:sky"])));



























