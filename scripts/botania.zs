<Botania:lexicon>.addTooltip(format.green("recipes may be inacurate check the thaumcraft book or nei"));
recipes.remove(<Botania:runeAltar>);
recipes.remove(<Botania:altar>);
recipes.remove(<Botania:terraPlate>);
recipes.remove(<Botania:alfheimPortal>);
recipes.remove(<Botania:pylon:2>);
mods.thaumcraft.Research.addTab("BOTANIA", "botania", "textures/blocks/puredaisy.png");
game.setLocalization("en_US", "tc.research_category.BOTANIA", "Botania");
mods.thaumcraft.Research.addResearch("PETAPOTH", "BOTANIA", "herba 16, arbor 8, praecantatio 4, sano 2", 0, 0, 3, <Botania:altar>);
mods.thaumcraft.Infusion.addRecipe("PETAPOTH", <Thaumcraft:blockCustomPlant:4>, [<thaumicbases:resource:1>, <thaumicbases:resource:1>, <thaumicbases:resource:1>, <thaumicbases:resource:1>, <Thaumcraft:blockJar>, <Thaumcraft:blockJar>, <Thaumcraft:blockJar>, <Thaumcraft:blockJar>, <Thaumcraft:blockCrystal:4>, <Thaumcraft:blockCrystal:4>, <Thaumcraft:blockCrystal:4>, <Thaumcraft:blockCrystal:4>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>, <Thaumcraft:blockCosmeticSolid:6>], "herba 64, arbor 32, praecantatio 16, sano 8", <Botania:altar>, 4);
mods.thaumcraft.Research.addInfusionPage("PETAPOTH", <Botania:altar>);
mods.thaumcraft.Research.addPrereq("PETAPOTH", "alcheponics", true);
game.setLocalization("en_US", "tc.research_name.PETAPOTH", "Petal Apothacary");
game.setLocalization("en_US", "tc.research_text.PETAPOTH", "Magical Plants Cool");
mods.thaumcraft.Research.addResearch("RUNEALTAR", "BOTANIA", "herba 4, ordo 4, praecantatio 8", 2, 1, 5, <Botania:runeAltar>);
mods.thaumcraft.Infusion.addRecipe("RUNEALTAR", <thaumicbases:thauminiteBlock>, [<Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:manaResource:1>, <Botania:manaResource>, <Botania:manaResource:2>, <Botania:manaResource:23>], "ordo 16, praecantatio 32, herba 8", <Botania:runeAltar>, 4);
mods.thaumcraft.Research.addInfusionPage("RUNEALTAR", <Botania:runeAltar>);
mods.thaumcraft.Research.addPrereq("RUNEALTAR", "PETAPOTH", false);
game.setLocalization("en_US", "tc.research_name.RUNEALTAR", "Runic Altar");
game.setLocalization("en_US", "tc.research_text.RUNEALTAR", "Magical runes also cool");
mods.thaumcraft.Research.addResearch("TERRA", "BOTANIA", "terra 4, metallum 4, praecantatio 8", 4, 2, 7, <Botania:terraPlate>);
mods.thaumcraft.Infusion.addRecipe("TERRA", <Botania:rune:8>, [<Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:livingrock>, <Botania:pylon>, <Botania:pylon>, <Botania:pylon>, <Botania:pylon>, <thaumicbases:thauminiteBlock>, <thaumicbases:thauminiteBlock>, <thaumicbases:thauminiteBlock>, <thaumicbases:thauminiteBlock>, <Botania:rune:2>, <Botania:rune:3>, <Botania:rune:1>, <Botania:rune>], "terra 32, praecantatio 32, metallum 16", <Botania:terraPlate>, 4);
mods.thaumcraft.Research.addInfusionPage("TERRA", <Botania:terraPlate>);
mods.thaumcraft.Research.addPrereq("TERRA", "RUNEALTAR", false);
game.setLocalization("en_US", "tc.research_name.TERRA", "Terra Steel");
game.setLocalization("en_US", "tc.research_text.TERRA", "Magical metal super cool");
mods.thaumcraft.Research.addResearch("GATECORE", "BOTANIA", "terra 4, metallum 4, praecantatio 8", 2, 3, 9, <Botania:pylon:1>);
mods.thaumcraft.Infusion.addRecipe("GATECORE", <Botania:storage:1>, [<Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <Botania:livingwood:5>, <ThaumicTinkerer:kamiResource:2>, <ThaumicTinkerer:kamiResource:2>, <ThaumicTinkerer:kamiResource:2>, <ThaumicTinkerer:kamiResource:2>, <Botania:pylon:1>, <Botania:pylon:1>, <Botania:pylon:1>, <Botania:pylon:1>, ], "auram 32, praecantatio 32, permutatio 16", <Botania:alfheimPortal>, 4);
mods.thaumcraft.Research.addInfusionPage("GATECORE", <Botania:alfheimPortal>);
mods.thaumcraft.Research.addPrereq("GATECORE", "TERRA", false);
game.setLocalization("en_US", "tc.research_name.GATECORE", "Elven gateway");
game.setLocalization("en_US", "tc.research_text.", "Magical Portal even cooler");
mods.thaumcraft.Research.addResearch("GAIA", "BOTANIA", "terra 8, herba 8, arbor 4", 0, 4, 11, <Botania:pylon:2>);
mods.thaumcraft.Infusion.addRecipe("GAIA", <Botania:pylon:1>, [<Botania:storage:2>, <Botania:storage:2>, <Botania:storage:2>, <Botania:storage:2>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:8>, <Botania:manaResource:9>, <Botania:manaResource:9>, <Botania:manaResource:9>, <Botania:manaResource:9>, ], "terra 32, herba 32, arbor 16", <Botania:pylon:2>, 4);
mods.thaumcraft.Research.addInfusionPage("GAIA", <Botania:pylon:2>);
mods.thaumcraft.Research.addPrereq("GAIA", "GATECORE", false);
game.setLocalization("en_US", "tc.research_name.GAIA", "Gaia");
game.setLocalization("en_US", "tc.research_text.GAIA", "So you want to fight mother earth herself?");
