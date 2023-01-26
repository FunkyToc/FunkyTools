execute store result score $maximumHealth fktool.dmg run attribute @s generic.max_health get
execute store result score $currentHealth fktool.dmg run data get entity @s Health
scoreboard players operation @s fktool.dmg.global += $maximumHealth fktool.dmg
scoreboard players operation @s fktool.dmg.global -= $currentHealth fktool.dmg