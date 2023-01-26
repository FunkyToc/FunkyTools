# init
execute store result score #10armor fktool.dmg run attribute @s minecraft:generic.armor get 10
execute store result score #10toughness fktool.dmg run attribute @s minecraft:generic.armor_toughness get 10
scoreboard players operation #damage fktool.dmg = @s fktool.dmg
data modify storage fktool:dmg/main temp set from entity @s

# modifiers
function fktool:dmg/entity/armor/toughness
function fktool:dmg/entity/armor/protection
function fktool:dmg/entity/armor/resistance

# add to the pool
scoreboard players operation @s fktool.dmg /= #10 fktool
scoreboard players operation @s fktool.dmg.global += @s fktool.dmg
scoreboard players reset @s fktool.dmg
