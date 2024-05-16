# scores
scoreboard objectives add fktool dummy

# fkversion
scoreboard players set #FktoolVersion fktool 12006
execute store success score #tmp fktool run function fktool:fkversion
execute if score #tmp fktool matches 0 run return fail

# properties
function fktool:utils/set_constants

# modules
#function fktool:systime/get

# init
function fktool:difficulty/get
function fktool:mcv/get
function fktool:rng/get
function fktool:warnings/get
