# FunkyTool
Quick add tools to other datapack projects.
List : McVersion, Random, Biomes, constants, predicates.

# Requires 
- Minecraft 1.13+

# Use
Copy the "data/fktool/" namespace folder. Paste them in the same place of your datapack's folder. 
Load the "fktool:load" file.
Display tool's results with : /scoreboard objectives setdisplay sidebar fktool

You now can :
  - Check minecraft client version
  Update the score before use : /function fktool:mcv/get
  Test the score in your code : /execute if score McVersion fktool matches 11500..11802 run say MC client is between 1.15 and 1.18.2

  - Generate random numbers between 0 - 100
  Update the score before use : /function fktool:rng/get
  Test the score in your code : /execute if score Random fktool matches 0..50 run say There was 50% chance to get this message

  - Get the current world's difficulty
  Update the score before use : /function fktool:difficulty/get
  Test the score in your code : /execute if score Difficulty fktool matches 3 run say The adventure is in Hard difficulty

  - Get the system's time (irl time)
  Update the score before use : /function fktool:systime/get
  Test the score in your code : /execute if score SysTime.hour fktool matches 11 if score SysTime.min fktool matches 30 if score SysTime.sec fktool matches 00 run say It is exactly 11h 30m 00s on my computer

# Author
- Name : FunkyToc 
- Website : https://funkytoc.fr

# License
This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License: http://creativecommons.org/licenses/by-nc-nd/4.0/

# Thanks 
Minecraft community, datapacker, friends and more.
