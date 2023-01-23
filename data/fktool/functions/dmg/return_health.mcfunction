#tellraw @a [{"text":"Health back to : "},{"score":{"name":"@s","objective":"fktool.hp_base"}}]
scoreboard players operation #tmp fktool.hp_base = @s fktool.hp_base
scoreboard players reset @s fktool.hp_base
function fktool:dmg/set_hp