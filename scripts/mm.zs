// ModularMachinery Mana

recipes.remove(<modularmachinery:itemmodularium>);

val mana = mods.modularmachinery.RecipeBuilder.newBuilder("mana_chamber_mana_generate", "mana_chamber", 500, 0);
mana.addItemInput(<ore:dcsColor>)
    .addFluidOutput(<liquid:extracted_mana> * 100)
    .addFuelItemInout(1600)
    .build();