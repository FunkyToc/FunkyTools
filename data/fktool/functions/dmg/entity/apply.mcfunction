# Use:
# scoreboard players set @s fktool.dmg 3
# function #fktool:dmg/entity/apply/pure

execute if entity @s[type=player] run function fktool:dmg/entity/health/calculate_modifier
execute if entity @s[type=!player] run function fktool:dmg/entity/health/get_entity_health
execute if score @s fktool.dmg.global >= $maximumHealth fktool.dmg run function fktool:dmg/entity/on_death
execute if score @s fktool.dmg.global < $maximumHealth fktool.dmg run function fktool:dmg/entity/health/update
scoreboard players reset @s fktool.dmg.global
