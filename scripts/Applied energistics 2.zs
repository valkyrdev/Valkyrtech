   
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
            [<WR-CBE|Core:obsidianStick>, null, null]]);
    #soldering wire
        recipes.addShaped(<valcore:item.soldercoil> * 4,
            [[null, <valcore:item.solderingot>, null],
            [<valcore:item.solderingot>, <ore:stickWood>, <valcore:item.solderingot>],
            [null, <valcore:item.solderingot>, null]]);

#ae2 inscriber alternative
    #calc processor rotary
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor hbm
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor ender
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor thermal
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);
    #calc processor mekanism
        recipes.addShapedMirrored(<appliedenergistics2:item.ItemMultiMaterial:23>,
            [[null, <ore:anyCertusCrystal>, null],
            [<valcore:item.soldercoil>, <RotaryCraft:rotarycraft_item_borecraft:4>, <valcore:item.soldertool>.reuse()],
            [null, <ore:itemSilicon>, null]]);










   /*   recipes.addShaped(null,
            [[null, null, null],
            [null, null, null],
            [null, null, null]]);
    */
