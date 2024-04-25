-- -------------------------------
--  MeteorCraft Custom Ore Loader 
-- -------------------------------
-- 
-- Use this file to add custom ores to meteor generation.
-- Consult the example entry below, or the MeteorCraft page on the site for detailed documentation of the format.
-- 
-- Incorrectly formatted entries will be ignored and will log an error in the console.
-- Lines beginning with '--' are comments and will be ignored, as will empty lines.
-- 
-- NOTE WELL: It is your responsibility to choose the spawning blocks appropriately.
-- 	While you can theoretically spawn anything from the Ore Dictionary in meteors,
-- 	null or missing blocks, non-blocks and blocks with TileEntities are very likely
-- 	to crash and corrupt the world. No support will be provided in this case.
-- ====================================================================================
{
	type = "example"
	baseWeight = 40
	meteorTypes = { --Which meteor types this ore can spawn in. This example lists all four options.
		"STONE"
		"NETHERRACK"
		"END"
		"SKYSTONE"
	}
	oreBlocks = {
		{
			item = "minecraft:wood_planks" --The item type, either a namespaced item registry name, or an OreDictionary tag, prefaced with 'ore:'.
		}
		{
			item = "ore:oreCopper"
			relativeWeight = 2.5
		}
		{
			item = "ore:blockSteel"
			relativeWeight = 0.125
		}
	}
}
