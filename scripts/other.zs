#removals
    recipes.remove(<avaritiaddons:CompressedChest>);
    recipes.remove(<minecraft:flint_and_steel>);
    recipes.remove(<chancecubes:Chance_Cube>);
    recipes.remove(<TwilightForest:tile.TFUncraftingTable>);
    recipes.remove(<harvestcraft:market>);
    mods.avaritia.ExtremeCrafting.remove(<ThermalExpansion:Cell>);
    mods.avaritia.ExtremeCrafting.remove(<appliedenergistics2:tile.BlockCreativeEnergyCell>);
#vanilla additions
    recipes.addShapeless(<minecraft:flint_and_steel>, [<RotaryCraft:rotarycraft_item_shaftcraft:1>, <minecraft:flint>]);
#convert uncraftable netherite chests to use effrine which acts as a netherite stand in
        recipes.addShapeless(<IronChest:BlockIronChest:8>, [<IronChest:BlockIronChest:6>, <netherlicious:Ingot>]);
                recipes.addShapeless(<IronChest:obsidianNetheriteUpgrade>, [<ore:obsidian>, <netherlicious:Ingot>]);
#new compressed chest recipe
        recipes.addShaped(<avaritiaddons:CompressedChest>,[
            [<GeoStrata:geostrata_block_voidopal>, <GeoStrata:geostrata_block_voidopal>, <GeoStrata:geostrata_block_voidopal>],
            [<GeoStrata:geostrata_block_voidopal>, <IronChest:BlockIronChest:8>, <GeoStrata:geostrata_block_voidopal>],
            [<GeoStrata:geostrata_block_voidopal>, <GeoStrata:geostrata_block_voidopal>, <GeoStrata:geostrata_block_voidopal>]]); 

#custom resources
    #heat coil
        recipes.addShaped(<valcore:item.heatcoil>,
            [[null, <valcore:item.cupronickel>, null],
            [<valcore:item.cupronickel>, null, <valcore:item.cupronickel>],
            [null, <valcore:item.cupronickel>, null]]);
