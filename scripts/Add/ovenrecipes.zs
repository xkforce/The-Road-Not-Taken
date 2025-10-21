import mods.novelties.Oven;

var breadgrain = <ore:breadgrain>;
var grain = <ore:grain>;
var milk = <ore:listAllMilk>;
var sugar = <ore:sugar>;
var egg = <ore:egg>;

recipes.addShaped(<novelties:oven>, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],[<minecraft:brick_block>, null, <minecraft:brick_block>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

//shapeless recipes
//alloys
Oven.addShapeless(<contenttweaker:bronze>, [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:electrum>, [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:steel>, [<minecraft:iron_ingot>, <contenttweaker:coke>], 200, 1.0);
Oven.addShapeless(<contenttweaker:hepatizon>, [<minecraft:gold_nugget>, <contenttweaker:tinnugget>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>], 200, 1.0);
//misc
Oven.addShapeless(<projectred-transmission:wire>, [<deeperdepths:material:0>, <ore:dustRedstone>], 200, 1.0);
Oven.addShapeless(<contenttweaker:phosphorus>, [<contenttweaker:coke>, <minecraft:quartz>, <contenttweaker:phosphorusore>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/black>, [<charset:slime_block_colored:15>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/blue>, [<charset:slime_block_colored:11>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/brown>, [<charset:slime_block_colored:12>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/cyan>, [<charset:slime_block_colored:9>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/gray>, [<charset:slime_block_colored:7>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/green>, [<minecraft:slime>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/light_blue>, [<charset:slime_block_colored:3>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/silver>, [<charset:slime_block_colored:8>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/lime>, [<charset:slime_block_colored:5>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/magenta>, [<charset:slime_block_colored:2>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/orange>, [<charset:slime_block_colored:1>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/pink>, [<charset:slime_block_colored:6>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/purple>, [<charset:slime_block_colored:10>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/red>, [<charset:slime_block_colored:14>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/white>, [<charset:slime_block_colored:0>, <contenttweaker:sulfur>], 200, 1.0);
Oven.addShapeless(<colorfulslimes:slime_block/yellow>, [<charset:slime_block_colored:4>, <contenttweaker:sulfur>], 200, 1.0);

//shaped recipes
//vanilla bread
Oven.addShaped(<minecraft:bread>, [breadgrain, grain, grain, null, null, null, null, null, null], 200, 0.35);
Oven.addShaped(<minecraft:bread>, [grain, breadgrain, grain, null, null, null, null, null, null], 200, 0.35);
Oven.addShaped(<minecraft:bread>, [grain, grain, breadgrain, null, null, null, null, null, null], 200, 0.35);
//vanilla cake
Oven.addShaped(<minecraft:cake>, [milk, milk, milk, sugar, <ore:egg>, sugar, grain, grain, grain], 200, 0.35,[<minecraft:bucket>, <minecraft:bucket>, <minecraft:bucket>, null, null, null, null, null, null]);


































