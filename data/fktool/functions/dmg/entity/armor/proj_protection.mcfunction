##################################
# Formula
#  2 #reduction = max(80,   #reduction   )%
#  1 #reduction = max(80,  ( 8 × level ) )%
##################################

execute store result score #helm fktool.dmg run data get storage fktool:dmg/main temp.Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
execute store result score #chest fktool.dmg run data get storage fktool:dmg/main temp.Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
execute store result score #legs fktool.dmg run data get storage fktool:dmg/main temp.Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl
execute store result score #boots fktool.dmg run data get storage fktool:dmg/main temp.Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:projectile_protection"}].lvl

# 0 (add up level)
scoreboard players operation #reduction fktool.dmg = #helm fktool.dmg
scoreboard players operation #reduction fktool.dmg += #chest fktool.dmg
scoreboard players operation #reduction fktool.dmg += #legs fktool.dmg
scoreboard players operation #reduction fktool.dmg += #boots fktool.dmg

# 1
scoreboard players operation #reduction fktool.dmg *= #8 fktool

# 2
scoreboard players operation #reduction fktool.dmg < #80 fktool

# Let's calculate the damage to remove
scoreboard players operation #protection fktool.dmg = @s fktool.dmg
scoreboard players operation #protection fktool.dmg *= #reduction fktool.dmg
scoreboard players operation #protection fktool.dmg /= #100 fktool

scoreboard players operation @s fktool.dmg -= #protection fktool.dmg
