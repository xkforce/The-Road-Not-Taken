#loader contenttweaker
#modloaded contenttweaker
#priority 111

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;

import scripts.functions.contenttweaker.createCreativeTabWithItem;
import scripts.functions.contenttweaker.createFood;
import scripts.functions.contenttweaker.creativeTab;

val preservedNonmeat as float[][string] = {
    //homemade cheeses
    "brunost" : [3.0, 0.6],
    "chevre" : [3.0, 0.6],
    "creamcheese" : [3.0, 0.6],
    "churakampocheese" : [3.0, 0.6],
    "mascarpone" : [3.0, 0.6],
    "paneercheese" : [3.0, 0.6],
    "quesoblancocheese" : [3.0, 0.6],
    "ricotta" : [3.0, 0.6],
    //traded cheeses
    "bleuchatelcheese" : [3.0, 0.6],
    "briecheese" : [3.0, 0.6],
    "butterkasecheese" : [3.0, 0.6],
    "whitecheddarcheese" : [3.0, 0.6],
    "yellowcheddarcheese" : [3.0, 0.6],
    "emmentalecheese" : [3.0, 0.6],
    "habanerojackcheese" : [3.0, 0.6],
    "halloumicheese" : [3.0, 0.6],
    "havarticheese" : [3.0, 0.6],
    "limburgercheese" : [3.0, 0.6],
    "mozzarellacheese" : [3.0, 0.6],
    "parmaseancheese" : [3.0, 0.6],
    "pepperjackcheese" : [3.0, 0.6],
    "roquefort" : [3.0, 0.6],
    "sagederbycheese" : [3.0, 0.6],
    "shropshirebluecheese" : [3.0, 0.6],
    "stiltoncheese" : [3.0, 0.6],
    //fruit
    "driedberries" : [3.0, 0.6],
    "driedfuit" : [3.0, 0.6],
    "prunes" : [3.0, 0.6],
};

for food, data in preservedNonmeat {
    val hunger as int = data[0] as int;
    val saturation as float = data[1] as float;

    var nonMeat = VanillaFactory.createItemFood(food, hunger);
    nonMeat.saturation = saturation;
    nonMeat.register();
}
