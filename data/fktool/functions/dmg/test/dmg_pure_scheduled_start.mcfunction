# init
tag @p[tag=fktool.tester] add dmg_pure_schedule_tested
tellraw @p[tag=dmg_pure_schedule_tested] [{"text":"\n______ Test Scheduled Damage Start ______","bold":true,"color":"red"}]

#before
execute store result score #maximumHealth fktool.dmg run attribute @p[tag=dmg_pure_schedule_tested] generic.max_health get
execute store result score #currentHealth fktool.dmg run data get entity @p[tag=dmg_pure_schedule_tested] Health
scoreboard players operation #damagedHealth fktool.dmg = #currentHealth fktool.dmg
scoreboard players operation #damagedHealth fktool.dmg -= #3 fktool
scoreboard players operation #damagedHealth2 fktool.dmg = #damagedHealth fktool.dmg
scoreboard players operation #damagedHealth2 fktool.dmg -= #9 fktool

tellraw @p[tag=dmg_pure_schedule_tested] [{"text":"Before: Health / Max health: "},{"score":{"name":"#currentHealth","objective":"fktool.dmg"},"color":"green"},{"text":" / "},{"score":{"name":"#maximumHealth","objective":"fktool.dmg"},"color":"green"}]
tellraw @p[tag=dmg_pure_schedule_tested] [{"text":"Test: Apply "},{"score":{"name":"#3","objective":"fktool"},"color":"green"},{"text":" pure damages (first tick), should lead to "},{"score":{"name":"#damagedHealth","objective":"fktool.dmg"}}]
tellraw @p[tag=dmg_pure_schedule_tested] [{"text":"Test: Apply "},{"score":{"name":"#9","objective":"fktool"},"color":"green"},{"text":" pure damages (second tick), should lead to "},{"score":{"name":"#damagedHealth2","objective":"fktool.dmg"}}]

# test
scoreboard players add @p[tag=dmg_pure_schedule_tested] fktool.dmg 1
function fktool:dmg/entity/apply/pure
scoreboard players add @p[tag=dmg_pure_schedule_tested] fktool.dmg 2
function fktool:dmg/entity/apply/pure

schedule function fktool:dmg/test/dmg_pure_scheduled_1t 1t