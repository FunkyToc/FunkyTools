# FunkyTool
Quick add tools to other datapack projects.
List : McVersion, Random, Biomes, constants.

# Requires 
- Minecraft 1.13+

# Use
Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder. 
Load the "fktool:load" file.
Display tool's results with : /scoreboard objectives setdisplay sidebar fktool

You now can use : 
  - /execute if score McVersion fktool matches ..11500 run say We are in 1.15 or previous versions ! 

  - /execute as @p at @s run function fktool:biome/get_biome
    /execute if score Biome fktool matches 8 run say I'm in the biome nether_wastes !

  - /function fktool:get_rand
    /execute if score Rand fktool matches 0..50 run say I had 50% chance to get this message !

# Author
- Name : FunkyToc 
- Website : https://funkytoc.fr/en/home
- Contact : https://funkytoc.fr/en/contact

# Thanks 
...
