// Artisan Worktables
import mods.artisanworktables.builder.RecipeBuilder;

// Table Recipes
mods.botania.PureDaisy.addRecipe(<tconstruct:tooltables:3>, <artisanworktables:worktable:3>); // blacksmith
mods.botania.PureDaisy.addRecipe(<minecraft:crafting_table>, <artisanworktables:worktable:5>); // basic

// mage
RecipeBuilder.get("basic")
  .setShaped([
    [<ore:gemLapis>, <minecraft:redstone>, <ore:gemLapis>],
    [<minecraft:redstone>, <ore:workbench>, <minecraft:redstone>],
    [<ore:gemLapis>, <minecraft:redstone>, <ore:gemLapis>]])
  .setFluid(<liquid:extracted_mana> * 500)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<artisanworktables:worktable:7>)
  .create();