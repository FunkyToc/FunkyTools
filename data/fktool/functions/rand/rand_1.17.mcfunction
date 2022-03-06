summon minecraft:marker ~ 1 ~ {Tags:["tool_random"]}
execute positioned ~ 1 ~ store result score Rand fktool run data get entity @e[type=minecraft:marker,tag=tool_random,distance=..1,limit=1] UUID[0] 1
scoreboard players operation Rand fktool %= #101 fktool
execute positioned ~ 1 ~ run kill @e[type=minecraft:marker,tag=tool_random,distance=..1,limit=1]