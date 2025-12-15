#loader crafttweaker
#modloaded colorfulslimes contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Minecraft slime ball
val sb = <ore:slimeball>;
recipes.addShapeless(<minecraft:slime_ball> * 8, [sb, sb, sb, sb, sb, sb, sb, sb, <ore:dyeGreen>]);
recipes.addShapeless(<minecraft:slime_ball>, [sb, <contenttweaker:greendyenugget>]);

val slimeColor as IIngredient[][string] = {
    "white": [<contenttweaker:whitedyenugget>, <ore:dyeWhite>],
    "orange": [<contenttweaker:orangedyenugget>, <ore:dyeOrange>],
    "magenta": [<contenttweaker:magentadyenugget>, <ore:dyeMagenta>],
    "light_blue": [<contenttweaker:lightbluedyenugget>, <ore:dyeLightBlue>],
    "yellow": [<contenttweaker:yellowdyenugget>, <ore:dyeYellow>],
    "lime": [<contenttweaker:limedyenugget>, <ore:dyeLime>],
    "pink": [<contenttweaker:pinkdyenugget>, <ore:dyePink>],
    "gray": [<contenttweaker:graydyenugget>, <ore:dyeGray>],
    "silver": [<contenttweaker:lightgraydyenugget>, <ore:dyeLightGray>],
    "cyan": [<contenttweaker:cyandyenugget>, <ore:dyeCyan>],
    "purple": [<contenttweaker:purpledyenugget>, <ore:dyePurple>],
    "blue": [<contenttweaker:bluedyenugget>, <ore:dyeBlue>],
    "brown": [<contenttweaker:browndyenugget>, <ore:dyeBrown>],
    "red": [<contenttweaker:reddyenugget>, <ore:dyeRed>],
    "black": [<contenttweaker:blackdyenugget>, <ore:dyeBlack>],
};

for color, dye in slimeColor {
    val slimeball as IItemStack = itemUtils.getItem("colorfulslimes:slimeball/" + color);
    val stickyPiston as IItemStack = itemUtils.getItem("colorfulslimes:sticky_piston/" + color);
    
    recipes.addShaped(stickyPiston, [[slimeball], [<minecraft:piston>]]);
    recipes.addShapeless(slimeball, [sb, dye[0]]);
    recipes.addShapeless(slimeball * 8, [sb, sb, sb, sb, sb, sb, sb, sb, dye[1]]);
}
