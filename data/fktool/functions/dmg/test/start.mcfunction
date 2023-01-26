tellraw @s [{"text":"\n__________ Start Tests __________","bold":true,"color":"aqua"}]
tag @s add fktool.tester
function fktool:dmg/test/dmg_pure_start
schedule function fktool:dmg/test/dmg_pure_scheduled_start 2s
