execute as @e[type=!#fktool:no_health,scores={fktool.dmg.global=1..},tag=!fktool.dmg.applied] run function fktool:dmg/entity/apply

schedule function fktool:dmg/tick 1t