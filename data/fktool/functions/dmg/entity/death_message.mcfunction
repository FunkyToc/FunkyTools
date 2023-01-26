# Death messages happen when a player is killed via the custom [damage](apply.md),
# you can add death messages by adding your function to the tag `#fktool:dmg/player/on_death_message`
# 
# ### Example Implementation
# `function: example:damage_player`
# ```mcfunction
# tag @s add my_attack                          # Add a tag so that we can tell that it was
#                                               # our damage that killed the player
# scoreboard players set @s fktool.dmg 5
# function #fktool:dmg/entity/apply/armor
# tag @s remove my_attack                       # Remove tag
# ```
# `function: example:death_message`
# ```mcfunction
# # Check to make sure the entity has our tag
# execute
#   if entity @s[tag=my_attack]
#   run tellraw @a [{"selector":"@s"}, {"text": " got bloingo'ed"}]
# ```
# `tag: #fktool:dmg/player/on_death_message`
# ```json
# {
#   "values": [
#       "example:death_message"
#   ]    
# }
# ```

execute store result score $temp fktool.dmg run gamerule showDeathMessages
execute if score $temp fktool.dmg matches 1 run gamerule showDeathMessages false
execute if score $temp fktool.dmg matches 1 run function #fktool:dmg/player/on_death_message
kill @s
execute if score $temp fktool.dmg matches 1 run gamerule showDeathMessages true
