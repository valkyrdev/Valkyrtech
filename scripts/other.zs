#removals
    recipes.remove(<avaritiaddons:CompressedChest>);
    recipes.remove(<minecraft:flint_and_steel>);
    recipes.remove(<chancecubes:Chance_Cube>);
    recipes.remove(<TwilightForest:tile.TFUncraftingTable>);
    recipes.remove(<harvestcraft:market>);
    mods.avaritia.ExtremeCrafting.remove(<ThermalExpansion:Cell>);
    mods.avaritia.ExtremeCrafting.remove(<appliedenergistics2:tile.BlockCreativeEnergyCell>);
#vanilla additions
    recipes.addShapeless(<minecraft:flint_and_steel>, [<ImmersiveEngineering:metal:7>, <minecraft:flint>]);

#custom resources
    recipes.addShaped(<valcore:item.heatcoil>,
        [[null, <valcore:item.cupronickel>, null],
        [<valcore:item.cupronickel>, null, <valcore:item.cupronickel>],
        [null, <valcore:item.cupronickel>, null]]);
