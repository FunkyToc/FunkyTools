# install
tellraw @a[gamemode=creative] {"text":"fktool.systime installed. Please, do it again.","color":"red"}

# remove prev
function fktool:systime/unset

# summon new
execute positioned ~.5 -63.5 ~.5 run setblock ~ ~ ~ repeating_command_block{auto:1b,Command:"help me",TrackOutput:1b}
execute positioned ~.5 -63.5 ~.5 run summon marker ~ ~ ~ {Tags: ["fktool.systime"]}
