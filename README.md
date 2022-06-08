# FunkyTool
Quick add tools to other datapack projects.
List : McVersion, Random, Biomes, constants, predicates.

# Requires 
- Minecraft 1.13+

# Use
Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder. 
Load the "fktool:load" file.
Display tool's results with : /scoreboard objectives setdisplay sidebar fktool

You now can use : 
  - /execute if score McVersion fktool matches 11500..11802 run say We are between 1.15 and 1.18.2 

  - /function fktool:get_rand
    /execute if score Rand fktool matches 0..50 run say I had 50% chance to get this message

# Author
- Name : FunkyToc 
- Website : https://funkytoc.fr/
- Contact : https://funkytoc.fr/en/contact

# Thanks 
...
