	import minetweaker.item.IItemStack;   
#solder stuff
    #soldering iron tip 
        recipes.addShaped(<valcore:item.soldertip>,
            [[null, <minecraft:iron_ingot>, null],
            [<minecraft:iron_ingot>, <ElectriCraft:electricraft_item_wire:4>, <minecraft:iron_ingot>],
            [<minecraft:iron_ingot>, <ElectriCraft:electricraft_item_wire:4>, <minecraft:iron_ingot>]]);
    #soldering iron
        recipes.addShaped(<valcore:item.soldertool>,
            [[null, null, <valcore:item.soldertip>],
            [null, <valcore:item.heatcoil>, null],
            [<minecraft:stick>, null, null]]);
    #soldering wire
        recipes.addShaped(<valcore:item.soldercoil> * 4,
            [[null, <valcore:item.solderingot>, null],
            [<valcore:item.solderingot>, <ore:stickWood>, <valcore:item.solderingot>],
            [null, <valcore:item.solderingot>, null]]);
    #soldering alloy
    	mods.thermalexpansion.Smelter.addRecipe(800, <ThermalFoundation:material:65>, <ThermalFoundation:material:67>, <valcore:item.solderingot>*2);
# ae2 inscriber alternative
    #calc processor rotary
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor ender
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <EnderIO:itemBasicCapacitor>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor thermal
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <ThermalExpansion:material:1>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor mekanism
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <Mekanism:ControlCircuit>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #logic processor rotary
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:22>,
            [[null, <ore:ingotGold>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #logic processor ender
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:22>,
            [[null, <ore:ingotGold>, null],
            [<valcore:item.soldercoil>, <EnderIO:itemBasicCapacitor>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #logic processor thermal
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:22>,
            [[null, <ore:ingotGold>, null],
            [<valcore:item.soldercoil>, <ThermalExpansion:material:1>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #logic processor mekanism
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:22>,
            [[null, <ore:ingotGold>, null],
            [<valcore:item.soldercoil>, <Mekanism:ControlCircuit>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #logic processor rotary
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:24>,
            [[null, <ore:gemDiamond>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #engine processor ender
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:24>,
            [[null, <ore:gemDiamond>, null],
            [<valcore:item.soldercoil>, <EnderIO:itemBasicCapacitor>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #engine processor thermal
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:24>,
            [[null, <ore:gemDiamond>, null],
            [<valcore:item.soldercoil>, <ThermalExpansion:material:1>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #engine processor mekanism
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:24>,
            [[null, <ore:gemDiamond>, null],
            [<valcore:item.soldercoil>, <Mekanism:ControlCircuit>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
#grind pure quartz types into dust 
        	val pures = [<appliedenergistics2:item.ItemMultiMaterial:10>, <appliedenergistics2:item.ItemMultiMaterial:11>, <appliedenergistics2:item.ItemMultiMaterial:12>]  as IItemStack[];
            val dusts = [<appliedenergistics2:item.ItemMultiMaterial:2>, <appliedenergistics2:item.ItemMultiMaterial:3>, <appliedenergistics2:item.ItemMultiMaterial:8>]  as IItemStack[];
            for i, pure in pures {
			val dust = dusts[i];
                mods.appeng.Grinder.addRecipe(pure, dust * 1, 1);
                mods.mekanism.Crusher.addRecipe(pure, dust * 1);
                mods.thermalexpansion.Pulverizer.addRecipe(3000, pure, dust);
			 }
