#loader setup
#priority -1

import crafttweaker.item.IItemStack;

import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialPartData;
import mods.contenttweaker.Part;
import mods.contenttweaker.PartType;
import mods.contenttweaker.VanillaFactory;

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
		if (_type.id == "metal") {
			parts += "ingot";
		}
		if (_type.id == "gem") {
			val itemPart as PartType = MaterialSystem.getPartType("item");
			var gem as Part = MaterialSystem.getPartBuilder().setName(`gem_${_mat}`).setPartType(itemPart).setOreDictName("gem").build();
			parts += gem.getName();
		}
	}

	function addPart(_part as string) as void {
		if (parts.contains(_part)) return;
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
		replacements[part] = item;
	}

	function addBlockStat(key as string, value as string) as void {
		if (!valid_block_stats.contains(key)) LOG.error(`Invalid block stat *${key}*!`);
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
		if (!valid_tools.contains(type)) LOG.error(`Invalid tool type *${type}*!`);
		tools[type] = [toString(durability), toString(mining_level)];
	}

	function register() as void {
		var validParts as string[] = StringArray.filter(parts, [replacements.keys]);
		material.registerParts(validParts);
		ITEM_COUNTER.add(validParts.length);
		LOG.info(`💎 For material *${material.getName()}*, registered parts: ${StaticString.join(validParts, ", ")}`);
		for t, s in tools {
			if (replacements.keys.contains(t)) continue;
			var p as Item = VanillaFactory.createItem(`${material.getName()}_${t}`);
			p.toolClass = t;
			p.maxDamage = s[0];
			p.toolLevel = s[1];
			p.register();
			ITEM_COUNTER.increment();
		}
		if (stats_block.keys.isNotEmpty() && block_count > 0) {
			for i in 0 .. block_count {
				var bl as Part = MaterialSystem.getPartBuilder().setName(`block_${material.getName()}_${i}`).setPartType(MaterialSystem.getPartType("block")).setOreDictName("block").build();
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
}

global MATERIAL_REGISTRY as CotMaterial[string]$orderly = CotMaterial.registry;

global getMaterial as function(string, string)IItemStack = function(part as string, material as string) as IItemStack {
	val mat as CotMaterial = CotMaterial.registry[material];
	if (isNull(mat)) LOG.error(`Invalid material name *${material}*!`);
	val replacement = mat.replacements[part];
	if (!isNull(replacement)) return item(replacement);
	for e in ore(`${part.toLowerCase()}${StaticString.capitalize(material)}`).items {
		if (e.definition.owner == "contenttweaker") return e;
	}
	LOG.error(`Unable to find an item for ${part} and ${material}`);
	return null;
};
