# anti cheat stage 2
execute as @s[scores={elements_level_wood_spruce_placed=1..,elements_mainlevel=0}] if score .server elements_stage matches 2.. run damage @s 5
execute as @s[scores={elements_level_wood_spruce_placed=1..}] if score .server elements_stage matches 2.. run xp add @s -1 levels
execute as @s[scores={elements_level_wood_spruce_placed=1..}] run scoreboard players remove @s elements_level_wood_spruce_placed 1

#levels in tab
execute as @s store result score @s elements_mainlevel run xp query @s levels






# STAGE 1

execute as @s[scores={elements_level_stone_cobblestone=1..}] run function elements:sonstiges-always/level/stage_1_cobblestone
execute as @s[scores={elements_level_stone_basalt=1..}] run function elements:sonstiges-always/level/stage_1_basalt
execute as @s[scores={elements_level_stone_stone=1..}] run function elements:sonstiges-always/level/stage_1_stone


# STAGE 2

execute as @s[scores={elements_level_wood_spruce=1..}] run function elements:sonstiges-always/level/stage_2


# STAGE 3

#include plant
execute as @s[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players add @s elements_level_crimson_vines 1
execute as @s[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players remove @s elements_level_crimson_vines_plant 1
#main
execute as @s[scores={elements_level_crimson_vines=1..}] run function elements:sonstiges-always/level/stage_3

# STAGE 4

#main
execute as @s[scores={elements_level_sweet_berries=1..}] run function elements:sonstiges-always/level/stage_4
