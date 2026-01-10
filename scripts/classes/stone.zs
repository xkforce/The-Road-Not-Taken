#loader preinit contenttweaker crafttweaker
#priority 1001

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.ctintegration.util.RecipePattern;
import mods.zenutils.I18n;
import mods.zenutils.StaticString;

import scripts.classes.color.Color;

zenClass Stone {
    static stones as Stone[string]$orderly = {};
    // These variants are not allowed to be sub-blocks, e.g. stairs, slabs, etc.
    static NO_SUB_BLOCKS as string[] = ["chiseledbrick", "mossychiseledbrick", "debossed", "mossydebossed"];

    var id as string = "";
    var toolLevel as int = 0;
    var toolClass as string = "pickaxe";
    var resistance as float = 10.0 as float;
    var hardness as float = 1.5 as float;
    var colors as string[] = [];
    var textureVariants as string[] = [];
    var flags as string[] = [];
    var replacements as string[][string]$orderly = {};

    /**
     * Creates a new stone.
     * @param _id The id of the stone.
     * @param _colors The colors of the stone.
     * @param _textureVariants The texture variants of the stone.
     */
    zenConstructor(_id as string, _colors as string[], _textureVariants as string[]) {
        id = _id;
        colors = _colors;
        textureVariants = _textureVariants;
        stones[id] = this;
        log.trace(`🗿 Registering new stone: *${id}*`, "preinit");
    }

    /**
     * Gets the lang key of the stone.
     * @return The lang key of the stone.
     */
    function langKey() as string {
        return `${modpackID}.stonetype.${id}.name`;
    }

    /**
     * Gets the translated name of the stone.
     * @return The name of the stone.
     */
    function getName() as string {
        return mods.zenutils.I18n.format(langKey());
    }

    /**
     * Adds a flag to the stone.
     * @param flag The flag to add.
     */
    function addFlag(flag as string) as void {
        if (flags has flag) {
            log.error(`Flag ${flag} already exists for stone ${id}!`, "preinit");
            return;
        }
        flags += flag;
        log.trace(`🏴 Adding flag *${flag}* to stone *${id}*`, "preinit");
    }

    /**
     * Checks if the stone has a flag.
     * @param _flag The flag to check.
     * @return True if the stone has the flag, false otherwise.
     */
    function hasFlag(_flag as string) as bool {
        return flags has _flag;
    }

    /**
     * Adds a replacement to the stone.
     * @param _replacement The replacement to add. This should be a string that can be parsed as item.
     * @param _color The color to replace.
     * @param _textureVariant The texture variant to replace.
     */
    function addReplacement(_replacement as string, _color as string, _textureVariant as string) as void {
        if (replacements.keys has _replacement) {
            log.error(`Replacement ${_replacement} already exists for stone ${id}!`, "preinit");
            return;
        }
        replacements[_replacement] = [_color, _textureVariant];
        log.trace(`💱 Adding replacement *${_replacement}* to stone *${id}*`, "preinit");
    }

    /**
     * Gets the replacement of the stone.
     * @param color The color to get the replacement for.
     * @param textureVariant The texture variant to get the replacement for.
     * @return The replacement of the stone.
     */
     function getReplacement(color as string, textureVariant as string) as string {
        for replacement, inputs in replacements {
            if (inputs[0] == color && inputs[1] == textureVariant) {
                return replacement;
            }
        }
        return null;
    }

    /**
     * Checks if the stone has a replacement.
     * @param color The color of the stone.
     * @param textureVariant The texture variant of the stone.
     * @return True if the stone has a replacement, false otherwise.
     */
    function hasReplacement(color as string, textureVariant as string) as bool {
        return !isNull(getReplacement(color, textureVariant));
    }

    /**
     * Sets the hardness of the stone.
     * @param _hardness The hardness to set.
     */
    function setHardness(_hardness as float) as void {
        hardness = _hardness;
        log.trace(`🔧 Setting hardness of stone *${id}* to *${hardness}*`, "preinit");
    }

    /**
     * Sets the resistance of the stone.
     * @param _resistance The resistance to set.
     */
    function setResistance(_resistance as float) as void {
        resistance = _resistance;
        log.trace(`🔧 Setting resistance of stone *${id}* to *${resistance}*`, "preinit");
    }

    /**
     * Sets the tool level of the stone.
     * - 0 = wood
     * - 1 = stone
     * - 2 = iron
     * - 3 = diamond
     * @param _toolLevel The tool level to set.
     */
    function setToolLevel(_toolLevel as int) as void {
        toolLevel = _toolLevel;
        log.trace(`🔧 Setting tool level of stone *${id}* to *${toolLevel}*`, "preinit");
    }

    /**
     * Sets the tool class of the stone.
     * - pickaxe
     * - shovel
     * - axe
     * @param _toolClass The tool class to set.
     */
    function setToolClass(_toolClass as string) as void {
        toolClass = _toolClass;
        log.trace(`🔧 Setting tool class of stone *${id}* to *${toolClass}*`, "preinit");
    }

    // External Functions

    /**
     * Gets the registry key of the stone.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     * @return The registry key of the stone.
     */
    function registryKey(color as string, texturevariant as string) as string {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.error(`Texture variant ${texturevariant} is not a valid texture variant for stone ${id}!`);
            return null;
        }
        if (colors.indexOf(color) == -1) {
            log.error(`Color ${color} is not a valid color for stone ${id}!`);
            return null;
        }
        return StaticString.trim(`${color}${id}${texturevariant}`);
    }

    /**
     * Formats a stone to an item string.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     * @param mod The mod to use.
     * @return The formatted item string.
     */
    function itemKey(color as string, texturevariant as string, mod as string = "contenttweaker") as string {
        if (hasReplacement(color, texturevariant)) {
            return getReplacement(color, texturevariant);
        }
        return `${mod}:${registryKey(color, texturevariant)}`;
    }

    /**
     * Formats an item to a recipe key.
     * @param item The item to format.
     * @return The formatted string.
     */
    function recipeKey(item as IItemStack) as string {
        val splitted as string[] = item.definition.id.split(":");
        if (splitted.length != 2) {
            log.warn(`Formatting recipe key for item *${item.definition.id}* failed! This is probably a bug!`);
            return `${item.definition.id}.${item.damage}`;
        }
        return `${splitted[0]}.${splitted[1]}.${item.damage}`;
    }

    /**
     * Crafts an item with another item. Internal use only.
     * @param output The output item.
     * @param input The input item.
     * @param pattern The pattern of the recipe.
     */
    function craftItem(output as string, input as string, pattern as string[], amount as int = 1, mirrored as bool = false) as void {
        val outputItem as IItemStack = item(output);
        if (isNull(outputItem)) {
            log.error(`Output item for *${output}* is null!`);
            return;
        }
        val inputItem as IItemStack = item(input);
        if (isNull(inputItem)) {
            log.error(`Input item for *${output}* is null!`);
            return;
        }
        val recipeName as string = `craft_${recipeKey(outputItem)}_with_${recipeKey(inputItem)}`;
        var builder as RecipePattern = RecipePattern.init(recipeName, outputItem * amount, pattern);
        builder.with("x", inputItem);
        builder.setShapeless(pattern.length == 1 && pattern[0].length > 3);
        builder.setMirrored(mirrored);
        builder.build();
    }

    /**
     * Smelts a stone.
     * @param color The color of the stone.
     */
    function smeltItem(color as string) as void {
        // cobble -> stone
        if (textureVariants.contains(" ") && textureVariants.contains("cobblestone")) {
            val output as string = itemKey(color, " ");
            val input as string = itemKey(color, "cobblestone");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                log.error(`Output item for *${output}* is null!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                log.error(`Input item for *${input}* is null!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            log.trace(`*${getName()}* does not have required texturevariants for smelting cobblestone!`);
        }

        // brick -> cracked brick
        if (textureVariants.contains("brick") && textureVariants.contains("crackedbrick")) {
            val output as string = itemKey(color, "crackedbrick");
            val input as string = itemKey(color, "brick");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                log.error(`Output item for *${output}* is null!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                log.error(`Input item for *${input}* is null!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            log.trace(`*${getName()}* does not have required texturevariants for smelting bricks!`);
        }

        // shortbrick -> cracked shortbrick
        if (textureVariants.contains("shortbrick") && textureVariants.contains("crackedshortbrick")) {
            val output as string = itemKey(color, "crackedshortbrick");
            val input as string = itemKey(color, "shortbrick");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                log.error(`Output item for *${output}* is null!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                log.error(`Input item for *${input}* is null!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            log.trace(`*${getName()}* does not have required texturevariants for smelting shortbrick!`);
        }
    }

    /**
     * Crafts a stairs with a stone.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     */
    function craftStairs(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for stairs!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}stairs`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["x  ", "xx ", "xxx"];
        craftItem(output, input, pattern, 4, true);
    }

    /**
     * Crafts a slab with a stone.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     */
    function craftSlab(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for slab!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}slab`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["xxx"];
        craftItem(output, input, pattern, 6);
    }

    /**
     * Crafts a wall with a stone.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     */
    function craftWall(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for wall!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}wall`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["xxx", "xxx"];
        craftItem(output, input, pattern, 6);
    }

    /**
     * Crafts a Chiseled Brick with a Stone.
     * @param color The color of the stone.
     */
    function craftChiseledBrick(color as string) as void {
        if (textureVariants.indexOf("chiseledbrick") == -1 || textureVariants.indexOf("brick") == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for chiseled bricks!`);
            return;
        }
        val output as string = itemKey(color, "chiseledbrick");
        val input as string = `contentcreator:${registryKey(color, "brick")}slab`;
        val pattern as string[] = ["x", "x"];
        craftItem(output, input, pattern);
    }

    /**
     * Crafts a Brick with a Stone.
     * @param color The color of the stone.
     */
    function craftBrick(color as string) as void {
        if (textureVariants.indexOf("brick") == -1 || textureVariants.indexOf(" ") == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for stone bricks!`);
            return;
        }
        val output as string = itemKey(color, "brick");
        val input as string = itemKey(color, " ");
        val pattern as string[] = ["xx", "xx"];
        craftItem(output, input, pattern, 4);
    }

    /**
     * Crafts a Polished Stone with a Stone.
     * @param color The color of the stone.
     */
    function craftPolished(color as string) as void {
        if (textureVariants.indexOf("polished") == -1 || textureVariants.indexOf("brick") == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for polished stone!`);
            return;
        }
        val output as string = itemKey(color, "polished");
        val input as string = itemKey(color, "brick");
        val pattern as string[] = ["xx", "xx"];
        craftItem(output, input, pattern, 4);
    }

    /**
     * Adds a stone to the oredict.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     */
    function oreItem(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for oredict entry!`);
            return;
        }
        val output as IItemStack = item(itemKey(color, texturevariant));
        val oredict as IOreDictEntry = ore(id);
        if (hasFlag("--dragonProof")) {
            ore("proofEnderDragon").add(output);
            log.trace(`🔧 Adding *${getName()}* to the *proofEnderDragon* oredict entry.`);
        }
        if (hasFlag("--witherProof")) {
            ore("proofWither").add(output);
            log.trace(`🔧 Adding *${getName()}* to the *proofWither* oredict entry.`);
        }
        if (oredict.items has output) {
            log.info(`<ore:${id}> already contains ${getName()}!`);
            return;
        }
        oredict.add(output);
    }

    /**
     * Crafts an item with another item and a cover.
     * @param output The output item.
     * @param input The input item.
     * @param cover The cover item.
     */
    function craftCovered(color as string, outputVariant as string, inputVariant as string, cover as string) as void {
        if (textureVariants.indexOf(outputVariant) == -1 || textureVariants.indexOf(inputVariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariants for covered stone crafting!`);
            return;
        }
        val output as string = itemKey(color, outputVariant);
        val input as string = itemKey(color, inputVariant);

        val outputItem as IItemStack = item(output);
        if (isNull(outputItem)) {
            log.error(`Output item for *${output}* is null!`);
            return;
        }
        val inputItem as IItemStack = item(input);
        if (isNull(inputItem)) {
            log.error(`Input item for *${output}* is null!`);
            return;
        }
        val coverItem as IItemStack = item(cover);
        if (isNull(coverItem)) {
            log.error(`Cover item for *${output}* is null!`);
            return;
        }
        val recipeName as string = `craft_${recipeKey(outputItem)}_covering_${recipeKey(inputItem)}_with_${recipeKey(coverItem)}`;
        var builder = RecipePattern.init(recipeName, outputItem, ["xs"]);
        builder.with("x", inputItem);
        builder.with("s", coverItem);
        builder.setShapeless(true);
        builder.build();
    }

    /**
     * Changes the name of the stone.
     * @param color The color of the stone.
     * @param texturevariant The texture variant of the stone.
     */
    function changeName(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            log.trace(`*${getName()}* does not have required texturevariant *${texturevariant}* for name change!`);
            return;
        }
        var name as string = "";
        if (hasReplacement(color, texturevariant)) {
            log.trace(`*${getName()}* has a replacement for *${color}* and *${texturevariant}* so no name change will be made!`);
            name = item(getReplacement(color, texturevariant)).displayName;
        } else {
            val c as string = (isNull(Color.colors[color])) ? (color == " " ? " " : I18n.format(`${modpackID}.color.${color}.name`)) : Color.colors[color].getName();
            val v as string = I18n.format(`${modpackID}.variant.${(texturevariant == " " ? "base" : texturevariant)}.name`, getName());
            name = I18n.format(`${modpackID}.modifier.base.name`, c, v);

            val c_split as string[] = c.split("-");
            // We only wanna do this for colors that are not part of the 64 color base palette
            if (isNull(Color.colors[color]) && c_split.length == 2) {
                name = I18n.format(`${modpackID}.modifier.split.name`, c_split[0], c_split[1], v);
                if (id == "apacherhyolite") {
                    name = I18n.format(`${modpackID}.modifier.apacherhyolite.name`, c_split[1], c_split[0], v);
                }
            }

            val key as string = registryKey(color, texturevariant);
            val stack as IItemStack = item(`contenttweaker:${key}`);
            if (isNull(stack)) {
                log.error(`Item for *${key}* is null thus cannot change its name!`);
                return;
            }
            stack.displayName = StaticString.trim(name.replace("  ", " "));
            log.trace(`🔧 Changing name of stone *${key}* to *${stack.displayName}*`);
        }

        if (hasFlag("--onlyBlocks") || NO_SUB_BLOCKS.contains(texturevariant)) {
            log.trace(`🔧 Skipping name change of additional blocks for *${registryKey(color, texturevariant)}* because of its flag.`);
            return;
        }

        // TODO: add walls back once implemented
        for blocktype in ["stairs", "slab"] {
            val key as string = registryKey(color, texturevariant);
            val blockItem as IItemStack = item(`contentcreator:${key}${blocktype}`);
            if (isNull(blockItem)) {
                log.error(`Item for *${key}${blocktype}* is null!`);
                return;
            }
            blockItem.displayName = StaticString.trim(I18n.format(`${modpackID}.block.${blocktype}.name`, name));
            log.trace(`🔧 Changing name of stone *${key}${blocktype}* to *${blockItem.displayName}*`);
        }
    }
}

/**
 * Gets a stone from the stone registry.
 * @param sid The id of the stone.
 * @return The stone.
 */
global getStone as function(string)Stone = function(sid as string) as Stone {
    return Stone.stones[sid];
};

global STONES as Stone[string] = Stone.stones;
