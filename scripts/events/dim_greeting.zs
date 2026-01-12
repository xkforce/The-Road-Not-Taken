#loader crafttweaker
#priority 0
#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;

import mods.zenutils.EventPriority;
import mods.zenutils.I18n;

static greetings as string[int]$orderly = {
    -15: "endsurface",
    -14: "endcaves",
    -13: "niflheimskyislands",
    -12: "niflheim",
    -11: "niflheimcaves",
    -10: "lilithskyislands",
    -9: "lilith",
    -8: "lilithcaves",
    -7: "hauntedoverworldskyislands",
    -6: "hauntedoverworld",
    -5: "hauntedoverworldcaves",
    -4: "netherskyislands",
    -3: "nethersurface",
    -2: "deepdark",
    -1: "nether",
    0: "overworld",
    1: "end",
    2: "overworldskyislands",
    3: "lunarnearsidecaves",
    4: "lunarnearside",
    5: "lunarnearsideskyislands",
    6: "lunarfarsidecaves",
    7: "lunarfarside",
    8: "lunarfarsideskyislands",
    9: "mercurydaysidecaves",
    10: "mercurydayside",
    11: "mercurydaysideskyislands",
    12: "mercurytwilightcaves",
    13: "mercurytwilight",
    14: "mercurytwilightskyislands",
    15: "mercurynightsidecaves",
    16: "mercurynightside",
    17: "mercurynightsideskyislands",
    18: "martiancaves",
    19: "mars",
    20: "phobosanddeimos",
    21: "cerescaves",
    22: "ceres",
    23: "innerbeltasteroids",
    24: "saturniancaves",
    25: "saturn",
    26: "saturnsrings",
    27: "enceleduscaves",
    28: "enceledus",
    29: "enceledusskyislands",
    30: "titaniancaves",
    31: "titan",
    32: "titanianskyislands",
    33: "neptuniancaves",
    34: "neptune",
    35: "neptunesmallmoons",
    36: "tritoncaves",
    37: "triton",
    38: "tritonskyislands",
    39: "persephonecaves",
    40: "persephone",
    41: "persephonerings",
    42: "zagreuscaves",
    43: "zagreus",
    44: "zagreusskyislands",
    45: "melinoecaves",
    46: "melinoe",
    47: "melinoeskyislands",
    48: "uraniancaves",
    49: "uranus",
    50: "uranusrings",
    51: "mirandacaves",
    52: "miranda",
    53: "mirandaskyislands",
    54: "jupitercaves",
    55: "jupiter",
    56: "jupitersmallmoons",
    57: "ioniancaves",
    58: "io",
    59: "ionianskyislands",
    60: "europancaves",
    61: "europa",
    62: "europanskyislands",
    63: "ganymedecaves",
    64: "ganymede",
    65: "ganymedeskyislands",
    66: "callistocaves",
    67: "callisto",
    68: "callistoskyislands",
    69: "vestacaves",
    70: "vesta",
    71: "vestaskyislands",
    72: "venusiancaves",
    73: "venus",
    74: "venusianskyislands",
};



function greet(player as IPlayer, dim as int) as void {
    val w as IWorld = player.world;
    if (w.isRemote()) return;

    val dim_key as string = I18n.format(`${modpackID}.greetings.${greetings[dim].toLowerCase().replace(" ", "")}.name`);
    val msg_key as string = I18n.format(`${modpackID}.greetings.msg.name`, dim_key);
    val command as string = `title @p title {"text": *${msg_key}*}`;
    log.info(`🌲 Greeting player *${player.name}* to *${dim}* with command *${command}*.`);
    w.catenation()
    .sleep(20)
    .then(
        function (w, ctx) {
            server.commandManager.executeCommandSilent(server, command.replace("*", '"'));
        })
    .start();
}

events.register(
    function(e as PlayerChangedDimensionEvent) {
        greet(e.player, e.to);
    }, EventPriority.lowest()
);

events.onPlayerLoggedIn(
    function(e as PlayerLoggedInEvent) {
        greet(e.player, e.player.world.dimension);
    }
);
