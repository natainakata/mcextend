// Machine Casing
import mods.jei.JEI as jei;

jei.hide(<teslacorelib:machine_case>);
recipes.remove(<teslacorelib:machine_case>);

recipes.remove(<rftools:machine_frame>);
recipes.remove(<extrautils2:machine>);
recipes.remove(<enderio:item_material>);
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:frame:128>);

recipes.addShaped(<rftools:machine_frame>,
  [
    [<ore:ingotSteel>, <ore:dyeBlue>, <ore:ingotSteel>],
    [<minecraft:redstone>, null, <minecraft:redstone>],
    [<ore:ingotSteel>, <ore:dyeBlue>, <ore:ingotSteel>]
  ]
);
recipes.addShaped(<extrautils2:machine>,
  [
    [<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>],
    [<minecraft:redstone>, <ore:chest>, <minecraft:redstone>],
    [<ore:ingotSteel>, <minecraft:redstone>, <ore:ingotSteel>]
  ]
);
recipes.addShaped(<enderio:item_material>,
  [
    [<ore:ingotSteel>, <dcs_climate:dcs_fence_steel>, <ore:ingotSteel>],
    [<dcs_climate:dcs_fence_steel>, <enderio:item_material:20>, <dcs_climate:dcs_fence_steel>],
    [<ore:ingotSteel>, <dcs_climate:dcs_fence_steel>, <ore:ingotSteel>]
  ]
);
recipes.addShaped(<thermalexpansion:frame>,
  [
    [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>],
    [<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
    [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]
  ]
);

recipes.addShaped(<thermalexpansion:frame:128>,
  [
    [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>],
    [<ore:blockGlass>, <ore:gearLead>, <ore:blockGlass>],
    [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]
  ]
);
