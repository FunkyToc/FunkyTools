## check fktool versions 
# only update if this version is the most recent one, dealing with multiple fktool folders

# unknown fktool version
execute unless score #FktoolVersion fktool matches 11300.. run tellraw @a[tag=fkdev] [{"text":"[fktool] exit: undefined score #FktoolVersion","color":"red"}]
execute unless score #FktoolVersion fktool matches 11300.. run return fail

# newer fktool already applied
execute if score FktoolVersion fktool > #FktoolVersion fktool run tellraw @a[tag=fkdev] [{"text":"[fktool] exit: a newer Fktool is already applied","color":"red"}]
execute if score FktoolVersion fktool > #FktoolVersion fktool run return fail

# update current fktool
execute if score FktoolVersion fktool < #FktoolVersion fktool run tellraw @a[tag=fkdev] [{"text":"[fktool] updating Fktool with ","color":"red"},{"score":{"name":"#FktoolVersion","objective":"fktool"},"color":"white"}]

# update
scoreboard players operation FktoolVersion fktool = #FktoolVersion fktool

# reset
scoreboard players reset #FktoolVersion fktool
