#Name: ProjectEX.zs
#Author: Feed the Beast and Sunekaer

print("Initializing 'ProjectEX.zs'...");

mods.jei.JEI.removeAndHide(<projectex:refined_link>);
mods.jei.JEI.removeAndHide(<projectex:compressed_refined_link>);
mods.jei.JEI.removeAndHide(<projectex:matter>);
mods.jei.JEI.removeAndHide(<projectex:matter:1>);
mods.jei.JEI.removeAndHide(<projectex:matter:2>);
mods.jei.JEI.removeAndHide(<projectex:matter:3>);
mods.jei.JEI.removeAndHide(<projectex:matter:4>);
mods.jei.JEI.removeAndHide(<projectex:matter:5>);
mods.jei.JEI.removeAndHide(<projectex:matter:6>);
mods.jei.JEI.removeAndHide(<projectex:matter:7>);
mods.jei.JEI.removeAndHide(<projectex:matter:8>);
mods.jei.JEI.removeAndHide(<projectex:matter:9>);
mods.jei.JEI.removeAndHide(<projectex:matter:10>);
mods.jei.JEI.removeAndHide(<projectex:matter:11>);
mods.jei.JEI.removeAndHide(<projectex:final_star_shard>);

recipes.remove(<projectex:knowledge_sharing_book>);
recipes.addShaped(<projectex:knowledge_sharing_book>, [
    [<projecte:item.pe_matter:1>, <ore:netherStar>, <projecte:item.pe_matter:1>],
    [<ore:netherStar>, <minecraft:writable_book>, <ore:netherStar>],
    [<projecte:item.pe_matter:1>, <ore:netherStar>, <projecte:item.pe_matter:1>]
]);

print("Initialized 'ProjectEX.zs'");
