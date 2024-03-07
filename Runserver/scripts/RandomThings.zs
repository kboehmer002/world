#Name: RandomThings.zs
#Author: Feed the Beast and Sunekaer

print("Initializing 'RandomThings.zs'...");


//No dims
mods.jei.JEI.removeAndHide(<randomthings:spectrekey>);

recipes.addShapeless(<randomthings:glowingmushroom>, [<ore:listAllmushroom>, <ore:dustGlowstone>]);

recipes.addShapeless(<randomthings:beans:2>, [<randomthings:beans>, <thaumcraft:salis_mundus>]);

recipes.addShapeless(<randomthings:beanpod>, [<randomthings:beans>, <thaumcraft:salis_mundus>, <minecraft:dye:15>]);

recipes.addShapeless(<randomthings:beanpod>, [<randomthings:beans:2>, <minecraft:dye:15>]);

mods.jei.JEI.addDescription(<randomthings:ingredient:11>,"Obtainable by crafting and placing a Bean Pod. Break the Bean Pod once it's placed and you will receive materials and this golden egg.");

print("Initialized 'RandomThings.zs'");
