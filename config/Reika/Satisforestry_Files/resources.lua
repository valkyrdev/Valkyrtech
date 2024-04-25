{
	type = "example_resources"
	renderColor = 0xffffff
	spawnWeight = 10
	effects = { --optional, ambient AoE effects around the node
		{
			duration = 20 --ticks
			effectType = "potion"
			level = 1
			potionID = 18 --weakness
		}
		{
			amount = 0.5
			effectType = "damage" --type of effect, valid values: DAMAGE, POTION, REFLECTIVE, CUSTOM
			rate = 20 --ticks per hit
		}
	}
	outputItems = {
		{
			key = "minecraft:gold_ingot"
			manualAmountModifier = 0.5
			manualWeightModifier = 0.3
			maxCount = 1
			minCount = 1
			minimumPurity = "NORMAL"
			weight = 6
			amountModifiers = {
				IMPURE = 0.5
				NORMAL = 0.5
				PURE = 1.0
			}
			weightModifiers = {
				IMPURE = 0.5
				NORMAL = 1.0
				PURE = 1.5
			}
		}
		{
			key = "minecraft:iron_ingot"
			maxCount = 3
			minCount = 1
			minimumPurity = "IMPURE"
			weight = 10
		}
	}
	purityLevels = { --purity level distribution
		IMPURE = 10
		NORMAL = 25
		PURE = 10
	}
}
