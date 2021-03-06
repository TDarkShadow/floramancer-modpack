
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityXp;

import crafttweaker.world.IWorld;

import crafttweaker.damage.IDamageSource;

import mods.ctutils.entity.Experience;

// Drop 5 extra xp for most hostile mobs
val entityList = [
	<entity:minecraft:cave_spider>,
	<entity:minecraft:creeper>,
	<entity:minecraft:enderman>,
	<entity:minecraft:husk>,
	<entity:minecraft:skeleton>,
	<entity:minecraft:spider>,
	<entity:minecraft:stray>,
	<entity:minecraft:witch>,
	<entity:minecraft:wither_skeleton>,
	<entity:minecraft:zombie>,
	<entity:minecraft:zombie_pigman>
] as IEntityDefinition[];

for entity in entityList {
    entity.addDropFunction(function(entity, dmgSource) {
		val xporb = Experience.createEntityXp(entity.world, 5) as IEntityXp;
		xporb.posX = entity.x;
		xporb.posY = entity.y;
		xporb.posZ = entity.z;
		entity.world.spawnEntity(xporb);
		return null;
	});
}

// The wither drops a LOT more xp
<entity:minecraft:wither>.addDropFunction(function(entity, dmgSource) {
	val xporb = Experience.createEntityXp(entity.world, 500) as IEntityXp;
	xporb.posX = entity.x;
	xporb.posY = entity.y;
	xporb.posZ = entity.z;
	entity.world.spawnEntity(xporb);
	return null;
});


// Blazes drop 10 xp, and if killed by livingwood avatar, blaze rods
<entity:minecraft:blaze>.addDropFunction(function(entity, dmgSource) {
	// Spawn XP orb
	val xporb = Experience.createEntityXp(entity.world, 10) as IEntityXp;
	xporb.posX = entity.x;
	xporb.posY = entity.y;
	xporb.posZ = entity.z;
	entity.world.spawnEntity(xporb);

	// 1 in 8 chance of spawning a blaze rod if killed by livingwood avatar
	if (dmgSource.damageType == "generic") {
		if (entity.world.time % 8 == 0) {
			return <minecraft:blaze_rod>;
		} else {
			return null;
		}
	} else {
		return null;
	}
});

// minecraft:xp_bottle -- ThrownExpBottle
