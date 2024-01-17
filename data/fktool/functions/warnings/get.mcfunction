# dev tag
execute as FunkyToc unless entity @s[tag=dev] run tellraw FunkyToc [{"text":"[fktool] DEV tag not found ","color":"red"},{"text":"[add dev tag]","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/tag FunkyToc add dev"}}]

# tick
execute if score McVersion fktool matches 12004.. run function fktool:warnings/tick_rate
