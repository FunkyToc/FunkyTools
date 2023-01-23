# set hp max attr
execute store result score @s fktool.hp_base run attribute @s minecraft:generic.max_health base get
execute store result score @s fktool.hp run data get entity @s Health
scoreboard players operation #tmp fktool.hp_base = @s fktool.hp
scoreboard players operation #tmp fktool.hp_base -= @s fktool.dmg
#tellraw @a [{"text":"Dmg to : "},{"score":{"name":"#tmp","objective":"fktool.hp_base"}},{"text":" / "},{"score":{"name":"@s","objective":"fktool.hp_base"}}]
function fktool:dmg/set_hp

# force hp update
execute if entity @s[type=!#fktool:undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[type=#fktool:undead] run effect give @s minecraft:instant_damage 1 0 true
scoreboard players reset @s fktool.hp
scoreboard players reset @s fktool.dmg