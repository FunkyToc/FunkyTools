# scores
scoreboard objectives add fktool dummy

# const
scoreboard players set #-1 fktool -1
scoreboard players set #1 fktool 1
scoreboard players set #2 fktool 2
scoreboard players set #3 fktool 3
scoreboard players set #4 fktool 4
scoreboard players set #5 fktool 5
scoreboard players set #6 fktool 6
scoreboard players set #7 fktool 7
scoreboard players set #8 fktool 8
scoreboard players set #9 fktool 9
scoreboard players set #10 fktool 10
scoreboard players set #11 fktool 11
scoreboard players set #12 fktool 12
scoreboard players set #13 fktool 13
scoreboard players set #14 fktool 14
scoreboard players set #15 fktool 15
scoreboard players set #16 fktool 16
scoreboard players set #17 fktool 17
scoreboard players set #18 fktool 18
scoreboard players set #19 fktool 19
scoreboard players set #20 fktool 20
scoreboard players set #25 fktool 25
scoreboard players set #30 fktool 30
scoreboard players set #35 fktool 35
scoreboard players set #40 fktool 40
scoreboard players set #45 fktool 45
scoreboard players set #50 fktool 50
scoreboard players set #55 fktool 55
scoreboard players set #60 fktool 60
scoreboard players set #65 fktool 65
scoreboard players set #70 fktool 70
scoreboard players set #75 fktool 75
scoreboard players set #80 fktool 80
scoreboard players set #85 fktool 85
scoreboard players set #90 fktool 90
scoreboard players set #95 fktool 95
scoreboard players set #99 fktool 99
scoreboard players set #100 fktool 100
scoreboard players set #101 fktool 101
scoreboard players set #200 fktool 200
scoreboard players set #1000 fktool 1000

# timestamps
scoreboard players set #1min fktool 1200
scoreboard players set #2min fktool 2400
scoreboard players set #3min fktool 3600
scoreboard players set #4min fktool 4800
scoreboard players set #5min fktool 6000
scoreboard players set #10min fktool 12000
scoreboard players set #20min fktool 24000
scoreboard players set #30min fktool 36000
scoreboard players set #60min fktool 72000

# properties
execute unless score DmgModule fktool matches 0.. run scoreboard players set DmgModule fktool 0

# modules
execute if score DmgModule fktool matches 1 run function fktool:dmg/load
execute if score DmgModule fktool matches 0 run function fktool:dmg/uninstall

# check conflict
function fktool:conflict

# init
function fktool:mcv/get
function fktool:rng/get
function fktool:difficulty/get
