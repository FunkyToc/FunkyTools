# test 2
execute as @p[tag=dmg_pure_schedule_tested] run scoreboard players add @s fktool.dmg 9
execute as @p[tag=dmg_pure_schedule_tested] run function fktool:dmg/entity/apply/pure

# result
schedule function fktool:dmg/test/dmg_pure_scheduled_result 5t
