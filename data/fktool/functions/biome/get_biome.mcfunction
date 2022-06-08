summon armor_stand ~ ~ ~ {Tags:["fktool_biome"],Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score McVersion fktool matches ..11500 as @e[type=minecraft:armor_stand,tag=fktool_biome,sort=nearest,limit=1] at @s run loot replace entity @s weapon.offhand loot fktool:biomes_1.13
execute if score McVersion fktool matches 11600..11602 as @e[type=minecraft:armor_stand,tag=fktool_biome,sort=nearest,limit=1] at @s run loot replace entity @s weapon.offhand loot fktool:biomes_1.16
execute if score McVersion fktool matches 11700 as @e[type=minecraft:armor_stand,tag=fktool_biome,sort=nearest,limit=1] at @s run loot replace entity @s weapon.offhand loot fktool:biomes_1.17
execute if score McVersion fktool matches 11800 as @e[type=minecraft:armor_stand,tag=fktool_biome,sort=nearest,limit=1] at @s run loot replace entity @s weapon.offhand loot fktool:biomes_1.18
execute store result score Biome fktool run data get entity @e[type=minecraft:armor_stand,tag=fktool_biome,sort=nearest,limit=1] HandItems[1].tag.BiomeID
execute if score McVersion fktool matches 11900 run scoreboard players set Biome fktool -1
kill @e[type=minecraft:armor_stand,tag=fktool_biome]