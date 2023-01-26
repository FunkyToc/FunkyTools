##################################
# Formula
#  1 #reduction = #amplifier * 20%
##################################

scoreboard players set #reduction fktool.dmg 0

# First, lets grab the values
execute if data storage fktool:dmg/main temp.ActiveEffects[{Id: 11}] store result score #reduction fktool.dmg run data get storage fktool:dmg/main temp.ActiveEffects[{Id: 11}].Amplifier
execute if data storage fktool:dmg/main temp.ActiveEffects[{Id: 11}] if score #reduction fktool.dmg matches ..-1 run scoreboard players set #reduction fktool.dmg 4
execute if data storage fktool:dmg/main temp.ActiveEffects[{Id: 11}] run scoreboard players add #reduction fktool.dmg 1

# 1
scoreboard players operation #reduction fktool.dmg *= #20 fktool

# tellraw @s ["#resist %: ", {"score": {"name": "#reduction", "objective": "fktool.dmg"}, "color": "blue"}]

# Let's calculate the damage to remove
scoreboard players operation #resistance fktool.dmg = @s fktool.dmg
scoreboard players operation #resistance fktool.dmg *= #reduction fktool.dmg
scoreboard players operation #resistance fktool.dmg /= #100 fktool

# tellraw @s ["#resistance: ", {"score": {"name": "#resistance", "objective": "fktool.dmg"}, "color": "blue"}]

scoreboard players operation @s fktool.dmg -= #resistance fktool.dmg
