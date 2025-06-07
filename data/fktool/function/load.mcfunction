# scores
scoreboard objectives add fktool dummy

# fkversion
scoreboard players set #FktoolVersion fktool 12105
execute store success score #tmp fktool run function fktool:fkversion
scoreboard players reset #FktoolVersion fktool
execute if score #tmp fktool matches 0 run return run tellraw @a[tag=fkdev] [{"text":"[fktool] exit: error during update","color":"red"}]

# init
function fktool:utils/set_constants
function fktool:difficulty/get
function fktool:mcv/get
function fktool:rng/get
function fktool:warnings/get

# modules
#function fktool:systime/get
