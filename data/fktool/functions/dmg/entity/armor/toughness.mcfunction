##################################
# Main Formula
# 10  @s
# 9   @s  = @s / 25
# 8   @s  = #damage *         @s          / 25   
# 7   @s  = #damage * (250 - #armor_calc) / 25
# 6   @s  = #damage * (250 - (min(200,        #armor_calc           )) / 25
# 1   @s  = #damage * (250 - (min(200, max( #armor_calc   , #10ATF ))) / 25
#
#  damage = #damage * (250 - (min(200, max( 10armor ÷ 5   , #10ATF ))) / 25
##################################

##################################
# ATF Formula
# 5   #10ATF
# 4   #10ATF = (10armor - #damage_toughness
# 3   #10ATF = (10armor - (400 * #damage_toughness          )
# 2   #10ATF = (10armor - (400 * damage / (#toughness_calc ))
# 
#     #10ATF = (10armor - (400 * damage / (80 + 10toughness))
##################################

# 1
scoreboard players operation #armor_calc fktool.dmg = #10armor fktool.dmg
scoreboard players operation #armor_calc fktool.dmg /= #5 fktool

# tellraw @s ["1 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "fktool.dmg"}, "color": "light_purple"}]

# 2 (ATF)
scoreboard players operation #toughness_calc fktool.dmg = #10toughness fktool.dmg
scoreboard players add #toughness_calc fktool.dmg 80

# tellraw @s ["2 #toughness_calc: ", {"score": {"name": "#toughness_calc", "objective": "fktool.dmg"}, "color": "yellow"}]

# 3
scoreboard players operation #damage_toughness fktool.dmg = #damage fktool.dmg
scoreboard players operation #damage_toughness fktool.dmg *= #100 fktool
scoreboard players operation #damage_toughness fktool.dmg /= #toughness_calc fktool.dmg

# tellraw @s ["3 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "fktool.dmg"}, "color": "light_purple"}]

# 4
scoreboard players operation #damage_toughness fktool.dmg *= #4 fktool

# tellraw @s ["4 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "fktool.dmg"}, "color": "yellow"}]

# 5
scoreboard players operation #10ATF fktool.dmg = #10armor fktool.dmg
scoreboard players operation #10ATF fktool.dmg -= #damage_toughness fktool.dmg

# tellraw @s ["5 #10ATF: ", {"score": {"name": "#10ATF", "objective": "fktool.dmg"}, "color": "light_purple"}]

# 6
scoreboard players operation #armor_calc fktool.dmg > #10ATF fktool.dmg

# tellraw @s ["6 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "fktool.dmg"}, "color": "yellow"}]

# 7
scoreboard players operation #armor_calc fktool.dmg < #200 fktool

# tellraw @s ["7 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "fktool.dmg"}, "color": "light_purple"}]

# 8
scoreboard players set @s fktool.dmg 250
scoreboard players operation @s fktool.dmg -= #armor_calc fktool.dmg

# tellraw @s ["8 @s: ", {"score": {"name": "@s", "objective": "fktool.dmg"}, "color": "yellow"}]

# 9
scoreboard players operation @s fktool.dmg *= #damage fktool.dmg

# tellraw @s ["9 @s: ", {"score": {"name": "@s", "objective": "fktool.dmg"}, "color": "light_purple"}]

# 10
scoreboard players operation @s fktool.dmg /= #25 fktool

# tellraw @s ["10 @s: ", {"score": {"name": "@s", "objective": "fktool.dmg"}, "color": "yellow"}]
