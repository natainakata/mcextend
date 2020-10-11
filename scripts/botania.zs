// Botania
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
// Harder Living Block Recipes

mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
mods.botania.PureDaisy.addRecipe(<ore:blockSeared>, <botania:livingrock>);
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
mods.botania.PureDaisy.addRecipe(<ore:plankTreatedWood>, <botania:livingwood>);

val flowers = {
  <ore:dyeWhite> : <botania:flower>,
  <ore:dyeOrange> : <botania:flower:1>,
  <ore:dyeMagenta> : <botania:flower:2>,
  <ore:dyeLightBlue> : <botania:flower:3>,
  <ore:dyeYellow> : <botania:flower:4>,
  <ore:dyeLime> : <botania:flower:5>,
  <ore:dyePink> : <botania:flower:6>,
  <ore:dyeGray> : <botania:flower:7>,
  <ore:dyeLightGray> : <botania:flower:8>,
  <ore:dyeCyan> : <botania:flower:9>,
  <ore:dyePurple> : <botania:flower:10>,
  <ore:dyeBlue> : <botania:flower:11>,
  <ore:dyeBrown> : <botania:flower:12>,
  <ore:dyeGreen> : <botania:flower:13>,
  <ore:dyeRed> : <botania:flower:14>,
  <ore:dyeBlack> : <botania:flower:15>
} as IItemStack[IOreDictEntry];



for dye, flower in flowers {
  RecipeBuilder.get("mage")
    .setShapeless([dye, <ore:dustRedstone>, dye, <ore:flower>])
    .setFluid(<liquid:extracted_mana> * 200)
    .addTool(<ore:artisansGrimoire>, 10)
    .addOutput(flower)
    .create();
}
