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
  - init in load : /function fktool:mcv/get
    in your code : /execute if score McVersion fktool matches 11500..11802 run say We are between 1.15 and 1.18.2

  - init in load : /function fktool:rng/get
    in your code : /execute if score Random fktool matches 0..50 run say I had 50% chance to get this message

  - init in load : /function fktool:difficulty/get
    in your code : /execute if score Difficulty fktool matches 3 run say The game play with Hard difficulty

# Author
- Name : FunkyToc 
- Website : https://funkytoc.fr

# License
This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License: http://creativecommons.org/licenses/by-nc-nd/4.0/

# Thanks 
...
