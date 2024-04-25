{
	type = "example_alt_recipe"
	spawnWeight = 40
	recipe = {
		input_bottom = "null, minecraft:book, null"
		input_middle = "minecraft:gold_ingot, minecraft:iron_block, minecraft:gold_ingot"
		input_top = "null, minecraft:book, null"
		shaped = true
		output = {
			item = "minecraft:iron_pickaxe"
			nbt = {
				ench = {
					{
						id = 35
						lvl = 3
					}
				}
			}
		}
	}
	requiredItem = {
		item = "minecraft:redstone*18"
	}
	requiredPower = {
		amount = 6000
		format = "RF"
		time = 30
		timeUnit = "second"
	}
}
