# after
execute as @p[tag=dmg_pure_schedule_tested] store result score #maximumHealth fktool.dmg run attribute @s generic.max_health get
execute as @p[tag=dmg_pure_schedule_tested] store result score #currentHealth fktool.dmg run data get entity @s Health
execute as @p[tag=dmg_pure_schedule_tested] run tellraw @s [{"text":"After: Health / Max health: "},{"score":{"name":"#currentHealth","objective":"fktool.dmg"},"color":"green"},{"text":" / "},{"score":{"name":"#maximumHealth","objective":"fktool.dmg"},"color":"green"}]

# result
execute as @p[tag=dmg_pure_schedule_tested] if score #currentHealth fktool.dmg = #damagedHealth2 fktool.dmg run tellraw @s [{"text":"Result: Health is correct \u2714","color":"green"}]
execute as @p[tag=dmg_pure_schedule_tested] unless score #currentHealth fktool.dmg = #damagedHealth2 fktool.dmg run tellraw @s [{"text":"Result: Health is false \u2716","color":"red"}]

#reset
scoreboard players reset #maximumHealth fktool.dmg
scoreboard players reset #currentHealth fktool.dmg
scoreboard players reset #damagedHealth fktool.dmg
scoreboard players reset #damagedHealth2 fktool.dmg

execute as @p[tag=dmg_pure_schedule_tested] run tellraw @s [{"text":"______ Test Scheduled Damage End ______\n","bold":true,"color":"red"}]
execute as @p[tag=dmg_pure_schedule_tested] run effect give @s minecraft:instant_health 1 24
execute as @p[tag=dmg_pure_schedule_tested] run tag @s remove dmg_pure_schedule_tested
