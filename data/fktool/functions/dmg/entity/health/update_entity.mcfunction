execute store result score $temp fktool.dmg run data get entity @s Health 100
scoreboard players operation @s fktool.dmg.global *= #100 fktool
scoreboard players operation $temp fktool.dmg -= @s fktool.dmg.global
execute store result entity @s Health float 0.01 run scoreboard players get $temp fktool.dmg

effect give @s[type=#fktool:dmg/undead] instant_health 1 127 true
effect give @s[type=!#fktool:dmg/undead] instant_damage 1 127 true