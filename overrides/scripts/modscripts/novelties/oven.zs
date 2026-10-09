#loader crafttweaker
#modloaded novelties deeperdepths charset colorfulslimes projectred-transmission
#priority 1

import mods.novelties.Oven;

var breadgrain = <ore:breadgrain>;
var grain = <ore:grain>;
var milk = <ore:listAllMilk>;
var sugar = <ore:sugar>;
var egg = <ore:egg>;

recipes.addShaped(<novelties:oven>, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],[<minecraft:brick_block>, null, <minecraft:brick_block>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);

//shapeless recipes

//alloys
Oven.addShapeless(<contenttweaker:billon>, [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:bronze>, [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>, <contenttweaker:tinnugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:bronze>, [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <contenttweaker:bismuthnugget>, <contenttweaker:bismuthnugget>, <contenttweaker:bismuthnugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:brass>, [<deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>, <contenttweaker:zincnugget>, <contenttweaker:zincnugget>, <contenttweaker:zincnugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:electrum>, [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>, <contenttweaker:silvernugget>], 200, 1.0);
Oven.addShapeless(<contenttweaker:rosegold>, [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <deeperdepths:material:4>, <deeperdepths:material:4>, <deeperdepths:material:4>], 200, 1.0);
Oven.addShapeless(<contenttweaker:steel>, [<minecraft:iron_ingot>, <contenttweaker:coke>], 200, 1.0);
Oven.addShapeless(<contenttweaker:whitegold>, [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>, <contenttweaker:platinumnugget>, <contenttweaker:platinumnugget>, <contenttweaker:platinumnugget>], 200, 1.0);

//misc
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
