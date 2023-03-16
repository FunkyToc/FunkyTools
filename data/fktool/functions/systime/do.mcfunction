# set / reset
execute unless entity @e[type=minecraft:marker,tag=fktool.systime,limit=1] run schedule function fktool:systime/install 1t
execute at @e[type=minecraft:marker,tag=fktool.systime,limit=1] unless block ~ ~ ~ repeating_command_block run schedule function fktool:systime/install 1t

# get
execute as @e[type=minecraft:marker,tag=fktool.systime,limit=1] at @s run function fktool:systime/read
