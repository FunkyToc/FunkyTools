# FunkyTool
Quick add tools to other datapack projects.
List : McVersion, Random, Biomes.

# Requires 
- Minecraft 1.13+

# Use
Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder. /reload.
Display tool's results with : /scoreboard objectives setdisplay sidebar fktool

You now can use : 
  - /execute if score McVersion fktool matches ..11500 run say We are in 1.15 or previous versions ! 

  - /execute as @a at @s store result score @s MYBIOME run function fktool:biome/get_biome
    /execute if score @s MYBIOME matches 8 run say I'm in the biome nether_wastes !

  - /execute as @a at @s store result score @s MYRAND run function fktool:get_rand
    /execute if score @s MYRAND matches 0..50 run say I had 50% chance to get this message !

# Author
- Name : FunkyToc 
- Website : http://naturize.fr
- Contact : http://naturize.fr/contact

# Thanks 
...
