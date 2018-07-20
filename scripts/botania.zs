
import mods.botania.Apothecary;
import mods.botania.Knowledge;
import mods.botania.Lexicon;
import mods.botania.ManaInfusion;
import mods.botania.RuneAltar;


/*==========================
  Apothecary Recipe Tweaks
 ==========================*/

Apothecary.removeRecipe(kekimurus);
Apothecary.removeRecipe(munchdew);
Apothecary.removeRecipe(narslimmus);
Apothecary.removeRecipe(dandelifeon);
Apothecary.removeRecipe(shulkMeNot);

Apothecary.addRecipe(munchdew,
	[<ore:petalLime>, <ore:petalLime>, <ore:petalRed>, <ore:petalRed>, <ore:petalGreen>,
	<ore:runeGluttonyB>, <ore:runeWaterB>]);
Apothecary.addRecipe(kekimurus,
	[<ore:petalWhite>, <ore:petalWhite>, <ore:petalOrange>, <ore:petalOrange>, <ore:petalBrown>, <ore:petalBrown>,
	<ore:runeGluttonyB>, <ore:runeSpringB>, <ore:elvenPixieDust>]);
Apothecary.addRecipe(narslimmus,
	[<ore:petalLime>, <ore:petalLime>, <ore:petalGreen>, <ore:petalGreen>, <ore:petalBlack>,
	<ore:runeAutumnB>, <ore:runeWaterB>]);
Apothecary.addRecipe(shulkMeNot,
	[<ore:petalPurple>, <ore:petalPurple>, <ore:petalMagenta>, <ore:petalMagenta>, <ore:petalLightGray>,
	<ore:runeEnvyB>, <ore:runeWrathB>, <ore:runeAirB>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>]);
Apothecary.addRecipe(dandelifeon,
	[<ore:petalPurple>, <ore:petalPurple>, <ore:petalLime>, <ore:petalGreen>,
	<ore:runeWaterB>, <ore:runeFireB>, <ore:runeEarthB>, <ore:runeAirB>, <ore:runeSpringB>, <ore:runeSummerB>, <ore:runeAutumnB>, <ore:runeWinterB>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>]);

/*==========================
  Runic Altar Recipe Tweaks
 ==========================*/

RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.removeRecipe(<botania:rune:4>);
RuneAltar.removeRecipe(<botania:rune:5>);
RuneAltar.removeRecipe(<botania:rune:6>);
RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.removeRecipe(<botania:rune:9>);
RuneAltar.removeRecipe(<botania:rune:10>);
RuneAltar.removeRecipe(<botania:rune:11>);
RuneAltar.removeRecipe(<botania:rune:12>);
RuneAltar.removeRecipe(<botania:rune:13>);
RuneAltar.removeRecipe(<botania:rune:14>);
RuneAltar.removeRecipe(<botania:rune:15>);

// Tier 1 runes use OreDict
RuneAltar.addRecipe(<botania:rune:2> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <minecraft:stone>, <ore:blockCoal>, <ore:mushroomAny>], 5200);
RuneAltar.addRecipe(<botania:rune:3> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:carpet>, <ore:feather>, <ore:string>], 5200);

// Tier 2 rune tweaks
RuneAltar.addRecipe(<botania:rune:4>, [
	<ore:runeWaterB>, <ore:runeFireB>,
	<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>,
	<ore:cropWheat>, <ore:stoneMetamorphic>, <ore:grass>], 8000);
RuneAltar.addRecipe(<botania:rune:5>, [
	<ore:runeEarthB>, <ore:runeAirB>,
	<minecraft:sand>, <minecraft:sand>,
	<minecraft:slime_ball>, <minecraft:melon>,
	<ore:hardenedClay>, <minecraft:sand:1>], 8000);
RuneAltar.addRecipe(<botania:rune:6>, [
	<ore:runeFireB>, <ore:runeAirB>,
	<ore:autumnalLeaves>, <ore:autumnalLeaves>, <ore:autumnalLeaves>,
	<minecraft:fermented_spider_eye>, <ore:mycelium>, <botania:altgrass>], 8000);
RuneAltar.addRecipe(<botania:rune:7>, [
	<ore:runeWaterB>, <ore:runeEarthB>,
	<minecraft:snow>, <minecraft:snow>,
	<ore:blockWool>, <minecraft:cake>,
	<minecraft:ice>, <minecraft:packed_ice>], 8000);

// Tier 3 runes require colored quartz
RuneAltar.addRecipe(<botania:rune:9>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzMana>, <ore:quartzMana>, <ore:runeSummerB>, <ore:runeAirB>], 12000);
RuneAltar.addRecipe(<botania:rune:10>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzSunny>, <ore:quartzSunny>, <ore:runeWinterB>, <ore:runeFireB>], 12000);
RuneAltar.addRecipe(<botania:rune:11>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzBlaze>, <ore:quartzBlaze>, <ore:runeSpringB>, <ore:runeWaterB>], 12000);
RuneAltar.addRecipe(<botania:rune:12>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzDark>, <ore:quartzDark>, <ore:runeAutumnB>, <ore:runeAirB>], 12000);
RuneAltar.addRecipe(<botania:rune:13>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzRed>, <ore:quartzRed>, <ore:runeWinterB>, <ore:runeEarthB>], 12000);
RuneAltar.addRecipe(<botania:rune:14>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzElven>, <ore:quartzElven>, <ore:runeWinterB>, <ore:runeWaterB>], 12000);
RuneAltar.addRecipe(<botania:rune:15>, [<ore:manaDiamond>, <ore:manaDiamond>, <ore:quartzLavender>, <ore:quartzLavender>, <ore:runeSummerB>, <ore:runeFireB>], 12000);


/*==========================
    Mana Infustion Tweaks
 ==========================*/

// Autumnal Leaves Duplication
ManaInfusion.addConjuration(<traverse:red_autumnal_leaves> * 2, <traverse:red_autumnal_leaves>, 2000);
ManaInfusion.addConjuration(<traverse:orange_autumnal_leaves> * 2, <traverse:orange_autumnal_leaves>, 2000);
ManaInfusion.addConjuration(<traverse:yellow_autumnal_leaves> * 2, <traverse:yellow_autumnal_leaves>, 2000);
ManaInfusion.addConjuration(<traverse:brown_autumnal_leaves> * 2, <traverse:brown_autumnal_leaves>, 2000);

// Add Traverse Saplings to Alchemy rotation
ManaInfusion.removeRecipe(<minecraft:sapling>);
ManaInfusion.addAlchemy(<traverse:red_autumnal_sapling>, <minecraft:sapling:5>, 120);
ManaInfusion.addAlchemy(<traverse:orange_autumnal_sapling>, <traverse:red_autumnal_sapling>, 120);
ManaInfusion.addAlchemy(<traverse:yellow_autumnal_sapling>, <traverse:orange_autumnal_sapling>, 120);
ManaInfusion.addAlchemy(<traverse:brown_autumnal_sapling>, <traverse:yellow_autumnal_sapling>, 120);
ManaInfusion.addAlchemy(<traverse:fir_sapling>, <traverse:brown_autumnal_sapling>, 120);
ManaInfusion.addAlchemy(<minecraft:sapling>, <traverse:fir_sapling>, 120);

// Creative Galactic Potato Recipe
//ManaInfusion.addInfusion(galacticPotato, <botania:tinypotato>, 1000001);

/*=========================
            Other
 =========================*/

// Flugel Tiara requires Elytra
recipes.removeShaped(<botania:flighttiara>);
recipes.addShaped("botania_flighttiara_0", <botania:flighttiara>,
	[[<ore:eternalLifeEssence>, <ore:eternalLifeEssence>, <ore:eternalLifeEssence>],
	[<ore:ingotElvenElementium>, <minecraft:elytra>, <ore:ingotElvenElementium>],
	[<minecraft:feather>, <ore:bEnderAirBottle>, <minecraft:feather>]]);

/*=========================
           Lexica
 =========================*/

 // String Constants
 var knowledgeTypeCreative = "creative";
 var categoryMisc = "botania.category.misc";
 var entryNameCreativeTablet = "Creative Mana Tablet";
 var entryNameCreativePool = "Everlasting Guilty Pool";

 // Register Knowledge Type
 Knowledge.registerKnowledgeType(knowledgeTypeCreative, knowledgeTypeCreative, "BLUE", false);
 mods.recipestages.Recipes.addShapeless("botaniaCreativeKnowledgeAddition", "creative",
 	<botania:lexicon>.onlyWithTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte, "knowledge.creative": 1 as byte}),
 	[<botania:lexicon>.onlyWithTag({"knowledge.minecraft": 1 as byte, "knowledge.alfheim": 1 as byte, "knowledge.relic": 1 as byte}), galacticPotato.reuse()]);
 game.setLocalization("en_US", "botania.knowledge.creative", "Creative Knowledge");

 // Add Entries
 Lexicon.addEntry(entryNameCreativeTablet, categoryMisc, creativeManaTablet);
 Lexicon.addTextPage("botania.page.creativeTablet", entryNameCreativeTablet, 0);
 game.setLocalization("en_US", "botania.page.creativeTablet",
     "A &1Mana Tablet&0 is all well and good, but with your mastery of all things botanical, you've discovered how to " +
     "make one that never needs recharging, and provides a constant stream of &2Mana&0 to all your rods and baubles. " +
     "It's going to be complicated though, and require a brand new ritual structure.");
 Lexicon.setEntryKnowledgeType(entryNameCreativeTablet, knowledgeTypeCreative);

 Lexicon.addEntry(entryNameCreativePool, categoryMisc, creativeManaPool);
 Lexicon.addTextPage("botania.page.creativePool", entryNameCreativePool, 0);
 game.setLocalization("en_US", "botania.page.creativePool",
     "You've set your sights on the pinacle of &2Mana&0 production, the &1Everlasting Guilty Pool&0. This &1Mana Pool&0 " +
     "pulls mana directly from the Aether, as fast as your &1Mana Spreaders&0 and &1Sparks&0 can move it. But like all " +
     "great power, it requires great sacrifice. In this case the sacrifice of the very potato who taught you the ritual.");
 Lexicon.setEntryKnowledgeType(entryNameCreativePool, knowledgeTypeCreative);

 /*=========================
       Creative Recipes
  =========================*/

// Add Item Stages to Creative Items
mods.ItemStages.addItemStage("creative", creativeManaTablet);
mods.ItemStages.addItemStage("creative", creativeManaPool);
