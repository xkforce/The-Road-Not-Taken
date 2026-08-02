/*
    // External Functions
    function registryKey(color as string, texturevariant as string) as string {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.error(`Texture variant ${texturevariant} is not a valid texture variant for block ${id}!`);
            return null;
        }
        if (colors.indexOf(color) == -1) {
            LOG.error(`Color ${color} is not a valid color for block ${id}!`);
            return null;
        }
        return StaticString.trim(`${color}${id}${texturevariant}`);
    }

    function itemKey(color as string, texturevariant as string, mod as string = "contenttweaker") as string {
        if (hasReplacement(color, texturevariant)) {
            return getReplacement(color, texturevariant);
        }
        return `${mod}:${registryKey(color, texturevariant)}`;
    }

    function recipeKey(item as IItemStack) as string {
        val splitted as string[] = item.definition.id.split(":");
        if (splitted.length != 2) {
            LOG.warn(`Formatting recipe key for item *${item.definition.id}* failed! This is probably a bug!`);
            return `${item.definition.id}.${item.damage}`;
        }
        return `${splitted[0]}.${splitted[1]}.${item.damage}`;
    }

    function craftItem(output as string, input as string, pattern as string[], amount as int = 1, mirrored as bool = false) as void {
        val outputItem as IItemStack = item(output);
        if (isNull(outputItem)) {
            LOG.error(`Output item for *${output}* is *null*!`);
            return;
        }
        val inputItem as IItemStack = item(input);
        if (isNull(inputItem)) {
            LOG.error(`Input item for *${output}* is *null*!`);
            return;
        }
        val recipeName as string = `craft_${recipeKey(outputItem)}_with_${recipeKey(inputItem)}`;
        var builder as RecipePattern = RecipePattern.init(recipeName, outputItem * amount, pattern);
        builder.with("x", inputItem);
        builder.setShapeless(pattern.length == 1 && pattern[0].length > 3);
        builder.setMirrored(mirrored);
        builder.build();
    }

    function smeltItem(color as string) as void {
        // cobble -> stone
        if (textureVariants.contains(" ") && textureVariants.contains("cobblestone")) {
            val output as string = itemKey(color, " ");
            val input as string = itemKey(color, "cobblestone");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                LOG.error(`Output item for *${output}* is *null*!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                LOG.error(`Input item for *${input}* is *null*!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            LOG.debug(`*${getName()}* does not have required texturevariants for smelting cobblestone!`);
        }

        // brick -> cracked brick
        if (textureVariants.contains("brick") && textureVariants.contains("crackedbrick")) {
            val output as string = itemKey(color, "crackedbrick");
            val input as string = itemKey(color, "brick");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                LOG.error(`Output item for *${output}* is *null*!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                LOG.error(`Input item for *${input}* is *null*!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            LOG.debug(`*${getName()}* does not have required texturevariants for smelting bricks!`);
        }

        // shortbrick -> cracked shortbrick
        if (textureVariants.contains("shortbrick") && textureVariants.contains("crackedshortbrick")) {
            val output as string = itemKey(color, "crackedshortbrick");
            val input as string = itemKey(color, "shortbrick");
            val outputItem as IItemStack = item(output);
            if (isNull(outputItem)) {
                LOG.error(`Output item for *${output}* is *null*!`);
                return;
            }
            val inputItem as IItemStack = item(input);
            if (isNull(inputItem)) {
                LOG.error(`Input item for *${input}* is *null*!`);
                return;
            }
            furnace.addRecipe(outputItem, inputItem, 0.1);
        } else {
            LOG.debug(`*${getName()}* does not have required texturevariants for smelting shortbrick!`);
        }
    }

    function craftStairs(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for stairs!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}stairs`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["x  ", "xx ", "xxx"];
        craftItem(output, input, pattern, 4, true);
    }

    function craftSlab(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for slab!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}slab`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["xxx"];
        craftItem(output, input, pattern, 6);
    }

    function craftWall(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for wall!`);
            return;
        }
        val output as string = `contentcreator:${registryKey(color, texturevariant)}wall`;
        val input as string = itemKey(color, texturevariant);
        val pattern as string[] = ["xxx", "xxx"];
        craftItem(output, input, pattern, 6);
    }

    function craftChiseledBrick(color as string) as void {
        if (textureVariants.indexOf("chiseledbrick") == -1 || textureVariants.indexOf("brick") == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for chiseled bricks!`);
            return;
        }
        val output as string = itemKey(color, "chiseledbrick");
        val input as string = `contentcreator:${registryKey(color, "brick")}slab`;
        val pattern as string[] = ["x", "x"];
        craftItem(output, input, pattern);
    }

    function craftBrick(color as string) as void {
        if (textureVariants.indexOf("brick") == -1 || textureVariants.indexOf(" ") == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for stone bricks!`);
            return;
        }
        val output as string = itemKey(color, "brick");
        val input as string = itemKey(color, " ");
        val pattern as string[] = ["xx", "xx"];
        craftItem(output, input, pattern, 4);
    }

    function craftPolished(color as string) as void {
        if (textureVariants.indexOf("polished") == -1 || textureVariants.indexOf("brick") == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for polished stone!`);
            return;
        }
        val output as string = itemKey(color, "polished");
        val input as string = itemKey(color, "brick");
        val pattern as string[] = ["xx", "xx"];
        craftItem(output, input, pattern, 4);
    }

    function overrideOreName(name as string) as void {
        oreName = name;
        LOG.debug(`🔧 Overriding ore name of stone *${id}* to *${name}*`);
    }

    function oreItem(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for oredict entry!`);
            return;
        }
        val output as IItemStack = item(itemKey(color, texturevariant));
        val oredict as IOreDictEntry = ore(oreName);
        if (hasFlag("--dragonProof")) {
            ore("proofEnderDragon").add(output);
            LOG.debug(`🔧 Adding *${getName()}* to the *proofEnderDragon* oredict entry.`);
        }
        if (hasFlag("--witherProof")) {
            ore("proofWither").add(output);
            LOG.debug(`🔧 Adding *${getName()}* to the *proofWither* oredict entry.`);
        }
        if (oredict.items has output) {
            LOG.debug(`👻 <ore:${oreName}> already contains ${getName()}!`);
            return;
        }
        oredict.add(output);
    }

    function craftCovered(color as string, outputVariant as string, inputVariant as string, cover as string) as void {
        if (textureVariants.indexOf(outputVariant) == -1 || textureVariants.indexOf(inputVariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariants for covered stone crafting!`);
            return;
        }
        val output as string = itemKey(color, outputVariant);
        val input as string = itemKey(color, inputVariant);

        val outputItem as IItemStack = item(output);
        if (isNull(outputItem)) {
            LOG.error(`Output item for *${output}* is null!`);
            return;
        }
        val inputItem as IItemStack = item(input);
        if (isNull(inputItem)) {
            LOG.error(`Input item for *${output}* is null!`);
            return;
        }
        val coverItem as IItemStack = item(cover);
        if (isNull(coverItem)) {
            LOG.error(`Cover item for *${output}* is null!`);
            return;
        }
        val recipeName as string = `craft_${recipeKey(outputItem)}_covering_${recipeKey(inputItem)}_with_${recipeKey(coverItem)}`;
        var builder = RecipePattern.init(recipeName, outputItem, ["xs"]);
        builder.with("x", inputItem);
        builder.with("s", coverItem);
        builder.setShapeless(true);
        builder.build();
    }

    function changeName(color as string, texturevariant as string) as void {
        if (textureVariants.indexOf(texturevariant) == -1) {
            LOG.debug(`*${getName()}* does not have required texturevariant *${texturevariant}* for name change!`);
            return;
        }
        var name as string = "";
        if (hasReplacement(color, texturevariant)) {
            LOG.debug(`*${getName()}* has a replacement for *${color}* and *${texturevariant}* so no name change will be made!`);
            name = item(getReplacement(color, texturevariant)).displayName;
        } else {
            val c as string = (isNull(getColor(color))) ? (color == " " ? " " : I18n.format(`${MODPACK.id}.color.${color}.name`)) : getColor(color).getName();
            val v as string = I18n.format(`${MODPACK.id}.variant.${(texturevariant == " " ? "base" : texturevariant)}.name`, getName());
            name = I18n.format(`${MODPACK.id}.modifier.base.name`, c, v);

            val c_split as string[] = c.split("-");
            // We only wanna do this for colors that are not part of the 64 color base palette
            if (isNull(getColor(color)) && c_split.length == 2) {
                name = I18n.format(`${MODPACK.id}.modifier.split.name`, c_split[0], c_split[1], v);
                if (id == "apacherhyolite") {
                    name = I18n.format(`${MODPACK.id}.modifier.apacherhyolite.name`, c_split[1], c_split[0], v);
                }
            }

            val key as string = registryKey(color, texturevariant);
            val stack as IItemStack = item(`contenttweaker:${key}`);
            if (isNull(stack)) {
                LOG.error(`Item for *${key}* is *null* thus cannot change its name!`);
                return;
            }
            stack.displayName = StaticString.trim(name.replace("  ", " "));
            LOG.debug(`🔧 Changing name of stone *${key}* to *${stack.displayName}*`);
        }

        if (hasFlag("--onlyBlocks") || NO_SUB_BLOCKS.contains(texturevariant)) {
            LOG.debug(`🔧 Skipping name change of additional blocks for *${registryKey(color, texturevariant)}* because of its flag.`);
            return;
        }

        // TODO: add walls back once implemented
        for blocktype in ["stairs", "slab"] {
            val key as string = registryKey(color, texturevariant);
            val blockItem as IItemStack = item(`contentcreator:${key}${blocktype}`);
            if (isNull(blockItem)) {
                LOG.error(`Item for *${key}${blocktype}* is *null*!`);
                return;
            }
            blockItem.displayName = StaticString.trim(I18n.format(`${MODPACK.id}.block.${blocktype}.name`, name));
            LOG.debug(`🔧 Changing name of stone *${key}${blocktype}* to *${blockItem.displayName}*`);
        }
    }
*/

import net.minecraft.block.material.Material;
import classes.Utils
import core.Modpack

class ZenBlock {
    final static def REGISTRY = [:]
    final static def NO_SUB_BLOCKS = ["chiseledbrick", "mossychiseledbrick", "debossed", "mossydebossed"]
    final static def MATERIALS = [
        air : Material.AIR,
        grass : Material.GRASS,
        ground : Material.GROUND,
        wood : Material.WOOD,
        rock : Material.ROCK,
        iron : Material.IRON,
        anvil : Material.ANVIL,
        water : Material.WATER,
        lava : Material.LAVA,
        leaves : Material.LEAVES,
        plants : Material.PLANTS,
        vine : Material.VINE,
        sponge : Material.SPONGE,
        cloth : Material.CLOTH,
        fire : Material.FIRE,
        sand : Material.SAND,
        circuits : Material.CIRCUITS,
        carpet : Material.CARPET,
        glass : Material.GLASS,
        redrock : Material.RED_ROCK,
        tnt : Material.TNT,
        coral : Material.CORAL,
        ice : Material.ICE,
        packedice : Material.PACKED_ICE,
        craftedsnow : Material.CRAFTED_SNOW,
        cactus : Material.CACTUS,
        clay : Material.CLAY,
        gourd : Material.GOURD,
        dragonegg : Material.DRAGON_EGG,
        portal : Material.PORTAL,
        cake : Material.CAKE,
        web : Material.WEB,
        snow : Material.SNOW,
        piston : Material.PISTON,
        barrier : Material.BARRIER,
        structurevoid : Material.STRUCTURE_VOID,
    ]

    static def getBlock(String id) {
        return REGISTRY[id]
    }

    static def getBlockFromVariant(String variant) {
        for (id in REGISTRY.keys) {
            if (variant.contains(id)) return REGISTRY[id]
        }
        return null
    }

    final def flags = []
    final def replacements = [:]
    final def specialAdditions = [stairs: [], slab: [], wall: []]

    final def id
    final def colors
    final def variants

    def oreName
    def material = Material.ROCK
    def toolClass = "pickaxe"
    def toolLevel = 0
    def resistance = 10.0f
    def hardnesss = 1.5f


    ZenBlock(String id, Iteratable<String> colors, Iteratable<String> variants) {
        if (id == null || REGISTRY.keys.contains(id))
            Modpack.LOGGER.error("Block id '$id' is invalid!")
        if (colors == null || colors.size() == 0)
            Modpack.LOGGER.error("Block '$id' colors '${colors.toString()'} are invalid!")
        if (variants == null || variants.size() == 0)
            Modpack.LOGGER.error("Block '$id' texture variants '${variants.toString()}' are invalid")
        this.id = id
        this.colors = colors
        this.variants = variants
        this.oreName = id
        REGISTRY[id] = this
        Modpack.LOGGER.debug("🗿 Registering new block: '$id'")
    }

    def langKey() {
        "${Modpack.ID}.blocktype.${id}.name"
    }

    def getName() {
        Utils.translate(langKey())
    }

    def addFlag(String flag) {
        if (flags.contains(flag)) {
            Modpack.LOGGER.error("Flag '$flag' already exists for block '$id'")
            return
        }
        flags << flag
        Modpack.LOGGER.debug("🏴 Adding flag '$flag' to block '$id'")
    }

    def hasFlag(String flag) {
        flags.contains(flag)
    }

    def addReplacement(String replacement, String color, String variant) {
        if (replacements.keys.contains(replacement))
            Modpack.LOGGER.error("Replacement '$replacement' alredy exists for block '$id'")
            return
        if (!colors.contains(color)) {
            Modpack.LOGGER.error("Color '$color' is invalid for '$id' with colors: '${colors.toString()}'")
            return
        }
        if (!variants.contains(variant)) {
            Modpack.LOGGER.error("Variant '$variant' is invalid for '$id' with variants: '§{variants.toString()}'")
        }
        replacements[replacement] = [color, variant]
        Modpack.LOGGER.debug("💱 Adding replacement $replacement for block '$id'")
    }

    def getReplacement(String color, String variant) {
        if (!colors.contains(color)) {
            Modpack.LOGGER.error("Color '$color' is invalid for '$id' with colors: '${colors.toString()}'")
            return null
        }
        if (!variants.contains(variant)) {
            Modpack.LOGGER.error("Variant '$variant' is invalid for '$id' with variants: '§{variants.toString()}'")
            return null
        }
        for (replacement, inputs in replacements) {
            if (inputs[0] == color && inputs[1] == variant) {
                return replacement
            }
        }
        return null
    }

    def hasReplacement(String color, String variant) {
        return getReplacement(color, variant) != null
    }

    def addSpecialAddition(String color, String variant, String addition) {
        if (!specialAdditions.keys.contains(addition)) {
            Modpack.LOGGER.error("Addition '$addition' is not a valid addition for block '$id'")
            return
        }
        if (!colors.contains(color)) {
            Modpack.LOGGER.error("Color '$color' is not a valid color for block '$id' with colors: '${colors.toString()}'")
            return
        }
        if (!variants.contains(variant)) {
            Modpack.LOGGER.error("Variant '$variant' is not a valid texture variant for block '$id' with variants: '${variants.toString()}'")
            return
        }
        specialAdditions[addition] << registryKey(color, variant)
        Modpack.LOGGER.debug("🔧 Adding '$addition' to block '${registryKey(color, variant)}'")
    }

    def setHardness(float hardness) {
        this.hardness = hardness
        Modpack.LOGGER.debug("🔧 Setting hardness of block '$id' to '$hardness'")
    }

    def setResistance(float resistance) {
        this.resistance = resistance
        Modpack.LOGGER.debug("🔧 Setting resistance of block '$id' to '$resistance'")
    }

    def setToolLevel(int toolLevel) {
        this.toolLevel = toolLevel
        Modpack.LOGGER.debug("🔧 Setting tool level of block '$id' to '$toolLevel'")
    }

    def setToolClass(String toolClass) {
        this.toolClass = toolClass
        Modpack.LOGGER.debug("🔧 Setting tool class of block '$id' to '$toolClass'")
    }

    def setMaterial(String material) {
        if (!MATERIALS.keys.contains(material)) {
            Modpack.LOGGER.error("Material '$material' is not a valid material for block '$id'")
            return
        }
        this.material = MATERIALS[material]
        Modpack.LOGGER.debug("🔧 Setting material of block '$id' to '$material'")
    }


}
