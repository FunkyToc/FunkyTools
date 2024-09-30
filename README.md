# FunkyTool
Quick add tools to other datapack projects.
Features list: McVersion, Random, Difficulty, Systime, constants, biomes, predicates.

# Requires 
- Minecraft 1.21+

# Use
- Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder.
- Search and replace "fktool:" in your whole project, and replace with a unique namespace (ex: "fktool_projectx:").
- Load the "fktool_projectx:load" file in your load function.
- Display tool's constants with: /scoreboard objectives setdisplay sidebar fktool

You now can:
  - Check minecraft client version
  Update the score before use: /function fktool:mcv/get
  Test the score in your code: /execute if score McVersion fktool matches 11500..11802 run say MC client is between 1.15 and 1.18.2

  - Generate random numbers between 0 - 100
  Update the score before use: /function fktool:rng/get
  Test the score in your code: /execute if score Random fktool matches 0..50 run say There was 50% chance to get this message

  - Get the current world's difficulty
  Update the score before use: /function fktool:difficulty/get
  Test the score in your code: /execute if score Difficulty fktool matches 3 run say The adventure is in Hard difficulty

  - Get the system's time (irl time)
  Update the score before use: /function fktool:systime/get
  Test the score in your code: /execute if score SysTime.hour fktool matches 11 if score SysTime.min fktool matches 30 if score SysTime.sec fktool matches 00 run say It is exactly 11h 30m 00s on my computer

# Author
- Name: FunkyToc 
- Website: https://funkytoc.fr
- PMC: https://www.planetminecraft.com/member/funkytoc/
- Modrinth: https://modrinth.com/user/FunkyToc

# License
This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License: http://creativecommons.org/licenses/by-nc-nd/4.0/

# Thanks
My Patreons that buy me coffe every days.
My community wich reminds me that I'm lazy.
Minecraft community in general, that gives meaning to this project.
