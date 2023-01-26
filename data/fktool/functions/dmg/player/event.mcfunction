# Player damage events happen when a player is damaged.
# You can add damage events by adding your function to the tag #fktool:dmg/player/on_damage.  
# This library tracks the type of damage dealt to the player and stores it as a string in data storage `fktool:dmg/main io.damage.type`.
# The following damage types are as follows:
# * `'generic'`
# * `'bypass_armor'`
# * `'bypasses_invulnerability'`
# * `'bypasses_magic'`
# * `'is_explosion'`
# * `'is_fire'`
# * `'is_lightning'`
# * `'is_magic'`
# 
# ### Example Implementation
# `function: example:damage_event`
# ```mcfunction
# # give players with the fireproof tag fire resistance if they took damage by fire
# execute
#   if entity @s[tag=fireproof]
#   if data storage fktool:dmg/main {io.damage.type: 'is_fire'}
#   run effect give @s fire_resistance 10 0 true
# ```
# `tag: #fktool:dmg/player/on_damage`
# ```json
# {
#   "values": [
#       "example:damage_event"
#   ]    
# }
# ```

advancement revoke @s only fktool:dmg/player/event

execute if entity @s[advancements={fktool:dmg/player/event={generic=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'generic'
execute if entity @s[advancements={fktool:dmg/player/event={bypass_armor=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'bypass_armor'
execute if entity @s[advancements={fktool:dmg/player/event={bypasses_invulnerability=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'bypasses_invulnerability'
execute if entity @s[advancements={fktool:dmg/player/event={bypasses_magic=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'bypasses_magic'
execute if entity @s[advancements={fktool:dmg/player/event={is_explosion=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'is_explosion'
execute if entity @s[advancements={fktool:dmg/player/event={is_fire=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'is_fire'
execute if entity @s[advancements={fktool:dmg/player/event={is_lightning=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'is_lightning'
execute if entity @s[advancements={fktool:dmg/player/event={is_magic=true}}] run data modify storage fktool:dmg/main io.damage.type set value 'is_magic'

function #fktool:dmg/player/on_damage
