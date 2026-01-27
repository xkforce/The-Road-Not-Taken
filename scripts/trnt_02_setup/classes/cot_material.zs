#loader setup
#priority -2

import crafttweaker.item.IItemStack;

import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartType;
import mods.contenttweaker.VanillaFactory;

import mods.ctintegration.util.RecipePattern;
import mods.zenutils.StaticString;

zenClass MaterialType {
	static types as MaterialType[string] = {};

	val id as string;

	zenConstructor(_id as string) {
		id = _id;
		types[id] = this;
	}
}

global TYPE_METAL as MaterialType = MaterialType("metal");
global TYPE_GEM as MaterialType = MaterialType("gem");
global TYPE_MISC as MaterialType = MaterialType("misc");

zenClass CotMaterial {
	static registry as CotMaterial[string]$orderly = {};
	static valid_tools as string[] = ["axe", "pickaxe", "shovel", "hoe", "sword"];
	static valid_parts as string[] = ["ingot", "nugget", "plate", "gear", "bolt", "casing", "dense_plate", "dust", "rod"];
	static valid_block_stats as string[] = ["hardness", "resistance", "harvestTool"];
	static valid_armor_stats as string[] = ["durability", "enchantability", "reduction", "toughness"];
	static valid_fluid_stats as string[] = ["density", "viscosity", "temperature", "vaporize", "luminosity"];

	static type_item as PartType = MaterialSystem.getPartType("item");
	static type_block as PartType = MaterialSystem.getPartType("block");

	val type as string;
	val material as Material;
	var parts as string[] = [];
	var block_count as int = 0;

	val replacements as string[string]$orderly = {};
	val tools as string[][string]$orderly = {};
	val stats_block as string[string]$orderly = {};
	val stats_armor as string[string]$orderly = {};
	val stats_molten as string[string]$orderly = {};

	zenConstructor(_type as MaterialType, _mat as string, _color as string) {
		if (!MaterialType.types.keys.contains(_type.id)) LOG.error(`Invalid material type *${_type.id}*!`);
		material = MaterialSystem.getMaterialBuilder()
			.setName(StaticString.capitalize(_mat))
			.setColor(Color.fromHex(_color.replace("#", "")))
			.build();
		LOG.debug(`💎 Registering material *${material.getName()}*!`);
		if (isNull(type_item) || isNull(type_block)) LOG.error(`Unable to find item or block part type for material *${_mat}*!`);
		if (_type.id == "metal") {
			parts += "ingot";
		}
		if (_type.id == "gem") {
			var gem as Part = MaterialSystem.getPartBuilder()
				.setName(`gem_${_mat}`)
				.setPartType(type_item)
				.setOreDictName("gem")
				.build();
			parts += gem.getName();
		}
		type = _type.id;
		registry[_mat] = this;
	}

	function name() as string {
		return material.getName();
	}

	function id() as string {
		return material.getName().toLowerCase();
	}

	function newPart(_part as string) as void {
		var p as Part = MaterialSystem.getPartBuilder()
			.setName(`${_part}_${id()}`)
			.setPartType(type_item)
			.setOreDictName(_part)
			.build();
		parts += p.getName();
	}

	function addPart(_part as string) as void {
		if (parts.contains(_part)) return;
		if (type == "misc") {
			newPart(_part);
			return;
		}
		if (!valid_parts.contains(_part)) LOG.error(`Invalid material part *${_part}*!`);
		parts += _part;
	}

	function addParts(_parts as string[]) as void {
		for p in _parts {
			addPart(p);
		}
	}

	function setParts(_parts as string[]) as void {
		parts = _parts;
	}

	function setBlockCount(_count as int) as void {
		block_count = _count;
	}

	function addReplacement(part as string, item as string) as void {
		if (part == "gem") {
			replacements[parts[0]] = item;
			return;
		}
		if (!valid_parts.contains(part)) LOG.error(`Invalid material part *${part}*!`);
		replacements[part] = item;
	}

	function addBlockStat(key as string, value as string) as void {
		if (!valid_block_stats.contains(key)) LOG.error(`Invalid block stat *${key}*!`);
		if (block_count == 0) {
			block_count = 1;
		}
		stats_block[key] = value;
	}

	function addArmorStat(key as string, value as string) as void {
		if (!valid_block_stats.contains(key)) LOG.error(`Invalid armor stat *${key}*!`);
		stats_armor[key] = value;
	}

	function addFluidStat(key as string, value as string) as void {
		if (!valid_fluid_stats.contains(key)) LOG.error(`Invalid liquid stat *${key}*!`);
		stats_molten[key] = value;
	}

	function addTool(type as string, durability as int, mining_level as int) as void {
		if (!valid_tools.contains(type.toLowerCase())) LOG.error(`Invalid tool type *${type}*!`);
		tools[type.toLowerCase()] = [toString(durability), toString(mining_level)];
	}

	function getPartItem(part as string) as IItemStack {
		if (replacements.keys.contains(part.toLowerCase())) {
			return item(replacements[part.toLowerCase()]);
		}
		for e in ore(`${part.toLowerCase()}${name()}`).items {
			if (e.definition.owner == "contenttweaker") return e;
		}
		LOG.error(`Unable to find an item for *${part}* and *${name()}*. Valid parts: ${StaticString.join(replacements.keys, ", ")}`);
		return null;
	}

	function registerCot() as void {
		var validParts as string[] = StringArray.filter(parts, [replacements.keys]);
		material.registerParts(validParts);
		ITEM_COUNTER.add(validParts.length);
		LOG.debug(`💎 For material *${name()}*, registered parts: ${StaticString.join(validParts, ", ")}`);
		for t, s in tools {
			if (replacements.keys.contains(t)) continue;
			var p as Item = VanillaFactory.createItem(`${name()}_${t}`);
			p.toolClass = t;
			p.maxDamage = s[0];
			p.toolLevel = s[1];
			p.register();
			ITEM_COUNTER.increment();
		}
		if (stats_block.keys.isNotEmpty() && block_count > 0) {
			for i in 0 .. block_count {
				var bl as Part = MaterialSystem.getPartBuilder()
					.setName(`block_${id()}_${i}`)
					.setPartType(type_block)
					.setOreDictName("block")
					.build();
				parts += bl.getName();
				var b as MaterialPartData = material.registerPart(bl.getName()).getData();
				for s_key, s_value in stats_block {
					b.addDataValue(s_key, s_value);
				}
				BLOCK_COUNTER.increment();
			}
		}
		if (stats_armor.keys.isNotEmpty()) {
			var a as MaterialPartData = material.registerPart("armor").getData();
			for s_key, s_value in stats_armor {
				a.addDataValue(s_key, s_value);
			}
			ITEM_COUNTER.add(4);
		}
		if (stats_molten.keys.isNotEmpty()) {
			var m as MaterialPartData = material.registerPart("molten").getData();
			for s_key, s_value in stats_molten {
				m.addDataValue(s_key, s_value);
			}
			FLUID_COUNTER.increment();
		}
	}

	function registerCt() as void {
		val combinations as string[string]$orderly = {
			"ingot": "nugget",
			`gem_${id()}`: "nugget",
			`block_${id()}_0`: "ingot",
		};
		for item_comp, item_decomp in combinations {
			if (parts.contains(item_comp) && parts.contains(item_decomp)) {
				RecipePattern.init(getPartItem(item_decomp) * 9, ["x"])
					.setName(`craft_${name()}_${item_decomp}`)
					.with("x", getPartItem(item_comp))
					.setShapeless(true)
					.build();
				RecipePattern.init(getPartItem(item_comp), ["xxx", "xxx", "xxx"])
					.setName(`craft_${name()}_${item_comp}`)
					.with("x", getPartItem(item_decomp))
					.setShapeless(true)
					.build();
			} else {
				LOG.debug(`Unable to find *${item_comp}* and *${item_decomp}* for material *${name()}*!`);
			}
		}
		if (parts.contains("nugget")) {
			furnace.remove(getPartItem("nugget"));
			if (parts.contains("plate")) {
				furnace.addRecipe(getPartItem("plate"), getPartItem("nugget"), 0.1);
			}
		}
		// TODO: add recipes for plates
	}
}

global MATERIAL_REGISTRY as CotMaterial[string]$orderly = CotMaterial.registry;

global getMaterial as function(string, string)IItemStack = function(part as string, material as string) as IItemStack {
	val mat as CotMaterial = CotMaterial.registry[material.toLowerCase()];
	if (isNull(mat)) LOG.error(`Invalid material name *${material}*!`);
	return mat.getPartItem(part);
};
