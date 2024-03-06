#Name: EnderIO.zs
#Author: Feed the Beast and Sunekaer
#2022-01-12 edit: Sunekaer this is still great :) -R3GEN

print("Initializing 'EnderIO.zs'...");


mods.jei.JEI.removeAndHide(<enderio:item_material:9>);
mods.jei.JEI.removeAndHide(<enderio:item_material:10>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:1>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:2>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:3>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:4>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:5>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:6>);

mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:160>, <enderio:item_material:5>, 9600);
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot>, <thermalfoundation:material:96>, <enderio:item_material:5>, 9600);


print("Initialized 'EnderIO.zs'");
