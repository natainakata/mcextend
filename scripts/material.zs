// Some Material
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;


// Remove Hammer Plate Recipes
val immMetal = <immersiveengineering:metal>.definition;
val immImgot = [
  <ore:ingotCopper>,
  <ore:ingotAluminum>,
  <ore:ingotLead>,
  <ore:ingotSilver>,
  <ore:ingotNickel>,
  <ore:ingotUranium>,
  <ore:ingotConstantan>,
  <ore:ingotElectrum>,
  <ore:ingotSteel>,
  <ore:ingotIron>,
  <ore:ingotGold>
] as IOreDictEntry[];


for i in 30 .. 41 {
  recipes.removeShapeless(immMetal.makeStack(i), [<immersiveengineering:tool>, immImgot[i - 30]]);
}

val gears = {
  <ore:ingotIron> : <thermalfoundation:material:24>,
  <ore:ingotGold> : <thermalfoundation:material:25>,
  <ore:ingotCopper> : <thermalfoundation:material:256>,
  <ore:ingotTin> : <thermalfoundation:material:257>,
  <ore:ingotSilver> : <thermalfoundation:material:258>,
  <ore:ingotLead> : <thermalfoundation:material:259>,
  <ore:ingotAluminium> : <thermalfoundation:material:260>,
  <ore:ingotNickel> : <thermalfoundation:material:261>,
  <ore:ingotPlatinum> : <thermalfoundation:material:262>,
  <ore:ingotIridium> : <thermalfoundation:material:263>,
  <ore:ingotSteel> : <thermalfoundation:material:288>,
  <ore:ingotElectrum> : <thermalfoundation:material:289>,
  <ore:ingotInvert> : <thermalfoundation:material:290>,
  <ore:ingotBronze> : <thermalfoundation:material:291>,
  <ore:ingotConstantan> : <thermalfoundation:material:292>,
  <ore:ingotSignalum> : <thermalfoundation:material:293>,
  <ore:ingotLumium> : <thermalfoundation:material:294>,
  <ore:ingotEnderium> : <thermalfoundation:material:295>,
  <ore:ingotBrass> : <dcs_climate:dcs_spindle:1>,
  <ore:ingotNickelsilver> : <dcs_climate:dcs_spindle:2>,
  <ore:ingotToolSteel> : <dcs_climate:dcs_spindle:4>
} as IItemStack[IOreDictEntry];

// gear recipes
for ingot, gear in gears {
  recipes.remove(gear);
  RecipeBuilder.get("blacksmith")
    .setShaped([
      [null, ingot, null],
      [ingot, null, ingot],
      [null, ingot, null]])
    .setFluid(<liquid:lava> * 100)
    .addTool(<ore:artisansHammer>, 1)
    .addOutput(gear)
    .create();
}

recipes.remove(<dcs_climate:dcs_spindle:3>);

// generate Oredict Color drop
val color = <ore:dcsColor>;
color.add(<dcs_climate:dcs_color:*>);


recipes.remove(<modularmachinery:itemmodularium>);
val dustllalloy = <contenttweaker:lowlevel_alloy_dust>;
val llalloy = <modularmachinery:itemmodularium>;
recipes.addShapeless(dustllalloy, [<ore:dustIron>, <ore:dustTin>, <ore:dustTin>, <ore:dustTin>]);
recipes.addShaped(<contenttweaker:lowlevel_alloy_dust_block>,
[
  [dustllalloy, dustllalloy, dustllalloy],
  [dustllalloy, dustllalloy, dustllalloy],
  [dustllalloy, dustllalloy, dustllalloy]
  ]
);
recipes.addShaped(<contenttweaker:lowlevel_alloy_block>,
  [
    [llalloy, llalloy, llalloy],
    [llalloy, llalloy, llalloy],
    [llalloy, llalloy, llalloy]
  ]
);

recipes.addShapeless(<modularmachinery:itemmodularium> * 9, [<contenttweaker:lowlevel_alloy_block>]);

furnace.addRecipe(<contenttweaker:lowlevel_alloy_block>, <contenttweaker:lowlevel_alloy_dust_block>);

val llalloy_smelt = mods.hac.Smelting.newRecipe();

llalloy_smelt.setInput(<contenttweaker:lowlevel_alloy_dust_block>);
llalloy_smelt.setOutput(<contenttweaker:lowlevel_alloy_block>);
llalloy_smelt.addTemperature(5);
llalloy_smelt.addTemperature(6);
llalloy_smelt.addHumidity(0);
llalloy_smelt.addHumidity(1);
llalloy_smelt.addAirflow(0);
llalloy_smelt.ignite();