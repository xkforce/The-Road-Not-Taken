#loader crafttweaker
#reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.event.EntityLivingHurtEvent;

static mobImmunity as string[][string]$orderly = {
    "minecraft:rabbit": ["fall"],
    "biomesoplenty:wasp": ["lava", "onFire", "inFire"],
};

events.register(function(event as EntityLivingHurtEvent) {
    val id as string = event.entity?.definition?.id;
    if (event.entity instanceof IPlayer || !mobImmunity.keys.contains(id)) return;
    if (!mobImmunity[id].contains(event.damageSource.damageType)) return;
    event.cancel();
});
