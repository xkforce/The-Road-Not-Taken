#loader crafttweaker
#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.event.EntityLivingHurtEvent;

/**
 * Available Minecraft damage types:
 * - inFire
 * - lightningBolt
 * - onFire
 * - lava
 * - hotFloor
 * - inWall
 * - cramming
 * - drown
 * - starve
 * - cactus
 * - fall
 * - flyIntoWall
 * - outOfWorld
 * - generic
 * - magic
 * - wither
 * - anvil
 * - fallingBlock
 * - dragonBreath
 * - fireworks
 */
static mobImmunity as string[][string]$orderly = {
    "minecraft:rabbit": ["fall"],
    "biomesoplenty:wasp": ["lava", "onFire", "inFire"],
    "camels:camel": ["cactus"],
};

events.register(function(event as EntityLivingHurtEvent) {
    val id as string = event.entity?.definition?.id;
    if (event.entity instanceof IPlayer || !mobImmunity.keys.contains(id)) return;
    if (!mobImmunity[id].contains(event.damageSource.damageType)) return;
    event.cancel();
});
