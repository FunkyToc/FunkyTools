execute store result score TickRate fktool run tick query
execute unless score TickRate fktool matches 20 run tellraw @a[tag=dev] [{"text":"[fktool] Modified tick_rate (","color":"red"},{"score":{"name":"TickRate","objective":"fktool"},"color":"white"},{"text":")","color":"red"}]