data modify storage fktool:systime int_array set value ["9","8","8","7","7","7","6","6","6","6","5","5","5","5","5","4","4","4","4","4","4","3","3","3","3","3","3","3","2","2","2","2","2","2","2","2","1","1","1","1","1","1","1","1","1","0","0","0","0","0","0","0","0","0","0"]
execute store result score #int fktool run data modify storage fktool:systime int_array[] set from storage fktool:systime input
scoreboard players remove #int fktool 45