#loader crafttweaker
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
    185: "mirrorendsurface",
    186: "mirrorendcaves",
    187: "mirrorniflheimskyislands",
    188: "mirrorniflheim",
    189: "mirrorniflheimcaves",
    190: "mirrorlilithskyislands",
    191: "mirrorlilith",
    192: "mirrorlilithcaves",
    193: "mirrorhauntedoverworldskyislands",
    194: "mirrorhauntedoverworld",
    195: "mirrorhauntedoverworldcaves",
    196: "mirrornetherskyislands",
    197: "mirrornethersurface",
    198: "mirrordeepdark",
    199: "mirrornether",
    200: "mirroroverworld",
    201: "mirrorend",
    202: "mirroroverworldskyislands",
    203: "mirrorlunarnearsidecaves",
    204: "mirrorlunarnearside",
    205: "mirrorlunarnearsideskyislands",
    206: "mirrorlunarfarsidecaves",
    207: "mirrorlunarfarside",
    208: "mirrorlunarfarsideskyislands",
    209: "mirrormercurydaysidecaves",
    210: "mirrormercurydayside",
    211: "mirrormercurydaysideskyislands",
    212: "mirrormercurytwilightcaves",
    213: "mirrormercurytwilight",
    214: "mirrormercurytwilightskyislands",
    215: "mirrormercurynightsidecaves",
    216: "mirrormercurynightside",
    217: "mirrormercurynightsideskyislands",
    218: "mirrormartiancaves",
    219: "mirrormars",
    220: "mirrorphobosanddeimos",
    221: "mirrorcerescaves",
    222: "mirrorceres",
    223: "mirrorinnerbeltasteroids",
    224: "mirrorsaturniancaves",
    225: "mirrorsaturn",
    226: "mirrorsaturnsrings",
    227: "mirrorenceleduscaves",
    228: "mirrorenceledus",
    229: "mirrorenceledusskyislands",
    230: "mirrortitaniancaves",
    231: "mirrortitan",
    232: "mirrortitanianskyislands",
    233: "mirrorneptuniancaves",
    234: "mirrorneptune",
    235: "mirrorneptunesmallmoons",
    236: "mirrortritoncaves",
    237: "mirrortriton",
    238: "mirrortritonskyislands",
    239: "mirrorpersephonecaves",
    240: "mirrorpersephone",
    241: "mirrorpersephonerings",
    242: "mirrorzagreuscaves",
    243: "mirrorzagreus",
    244: "mirrorzagreusskyislands",
    245: "mirrormelinoecaves",
    246: "mirrormelinoe",
    247: "mirrormelinoeskyislands",
    248: "mirroruraniancaves",
    249: "mirroruranus",
    250: "mirroruranusrings",
    251: "mirrormirandacaves",
    252: "mirrormiranda",
    253: "mirrormirandaskyislands",
    254: "mirrorjupitercaves",
    255: "mirrorjupiter",
    256: "mirrorjupitersmallmoons",
    257: "mirrorioniancaves",
    258: "mirrorio",
    259: "mirrorionianskyislands",
    260: "mirroreuropancaves",
    261: "mirroreuropa",
    262: "mirroreuropanskyislands",
    263: "mirrorganymedecaves",
    264: "mirrorganymede",
    265: "mirrorganymedeskyislands",
    266: "mirrorcallistocaves",
    267: "mirrorcallisto",
    268: "mirrorcallistoskyislands",
    269: "mirrorvestacaves",
    270: "mirrorvesta",
    271: "mirrorvestaskyislands",
    272: "mirrorvenusiancaves",
    273: "mirrorvenus",
    274: "mirrorvenusianskyislands",
};

function greet(player as IPlayer, dim as int) as void {
    val w as IWorld = player.world;
    if (w.isRemote()) return;

    val dim_key as string = I18n.format(`${MODPACK.id}.greetings.${greetings[dim].toLowerCase().replace(" ", "")}.name`);
    val msg_key as string = I18n.format(`${MODPACK.id}.greetings.msg.name`, dim_key);
    val command as string = `title @p title {"text": *${msg_key}*}`;
    w.catenation()
    .sleep(20)
    .then(
        function (w, ctx) {
            server.commandManager.executeCommandSilent(server, command.replace("*", '"'));
        })
    .start();
}

// This will greet the player on dimension change
events.register(
    function(e as PlayerChangedDimensionEvent) {
        greet(e.player, e.to);
    }, EventPriority.lowest()
);

/*
// This will greet the player when they log in
events.onPlayerLoggedIn(
    function(e as PlayerLoggedInEvent) {
        greet(e.player, e.player.world.dimension);
    }
);
*/
