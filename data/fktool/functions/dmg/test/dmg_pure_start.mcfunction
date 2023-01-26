# init
tellraw @s [{"text":"\n__________ Test Damage Start __________","bold":true,"color":"red"}]

#before
execute store result score #maximumHealth fktool.dmg run attribute @s generic.max_health get
execute store result score #currentHealth fktool.dmg run data get entity @s Health
scoreboard players operation #damagedHealth fktool.dmg = #currentHealth fktool.dmg
scoreboard players operation #damagedHealth fktool.dmg -= #6 fktool

tellraw @s [{"text":"Before: Health / Max health: "},{"score":{"name":"#currentHealth","objective":"fktool.dmg"},"color":"green"},{"text":" / "},{"score":{"name":"#maximumHealth","objective":"fktool.dmg"},"color":"green"}]
tellraw @s [{"text":"Test: Apply "},{"score":{"name":"#6","objective":"fktool"},"color":"green"},{"text":" pure damages, should lead to "},{"score":{"name":"#damagedHealth","objective":"fktool.dmg"}}]


# test
scoreboard players add @s fktool.dmg 2
function fktool:dmg/entity/apply/pure
scoreboard players add @s fktool.dmg 4
function fktool:dmg/entity/apply/pure

# result
tag @s add dmg_pure_tested
schedule function fktool:dmg/test/dmg_pure_result 5t
