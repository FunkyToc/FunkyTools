# FunkyTool
Quick add tools to other datapack projects.
Features list: McVersion, Random, Difficulty, Systime, constants, biomes, predicates.

# Requires 
- Minecraft 26.3+

# Use
- Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder.
- Search and replace "fktool:" in your whole project, and replace with a unique namespace (ex: "fktool:").
- Load the "fktool:load" file in your load function.
- Display tool's constants with: /scoreboard objectives setdisplay sidebar fktool

You now can:
  - random numbers
  Update the score before use: /function fktool:rng/get
  Test the score in your code: /execute if score Random fktool matches 0..50 run say There was 50% chance to get this message

# Author
- Name: FunkyToc 
- PMC: https://www.planetminecraft.com/member/funkytoc/
- Modrinth: https://modrinth.com/user/FunkyToc
- Patreon: https://www.patreon.com/c/funkytoc

# License
This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License: http://creativecommons.org/licenses/by-nc-nd/4.0/

# Thanks
My Patreons that buy me coffee every days.
My community wich reminds me that I'm lazy.
Minecraft community in general, that gives meaning to this project.
Life, to be.
