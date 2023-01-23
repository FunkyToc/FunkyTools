execute as @e[type=!#fktool:no_health,scores={fktool.hp_base=1..}] run function fktool:dmg/return_health
execute as @e[type=!#fktool:no_health,scores={fktool.dmg=1..}] run function fktool:dmg/deal_damage

execute if score DmgModule fktool matches 1 run schedule function fktool:dmg/tick 1t