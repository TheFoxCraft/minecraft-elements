# anti cheat stage 2
execute as @a[scores={elements_level_wood_spruce_placed=1..,elements_mainlevel=0}] if score .server elements_stage matches 2.. run damage @s 5
execute as @a[scores={elements_level_wood_spruce_placed=1..}] if score .server elements_stage matches 2.. run xp add @s -1 levels
execute as @a[scores={elements_level_wood_spruce_placed=1..}] run scoreboard players remove @s elements_level_wood_spruce_placed 1

#levels in tab
execute as @a store result score @s elements_mainlevel run xp query @s levels






# STAGE 1

execute as @a[scores={elements_level_stone_cobblestone=1..}] run function elements:sonstiges-always/level/stage_1_cobblestone
execute as @a[scores={elements_level_stone_basalt=1..}] run function elements:sonstiges-always/level/stage_1_basalt
execute as @a[scores={elements_level_stone_stone=1..}] run function elements:sonstiges-always/level/stage_1_stone
#leveltrank
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run xp add @s 10 points
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-1=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-1 10


# STAGE 2

execute as @a[scores={elements_level_wood_spruce=1..}] run function elements:sonstiges-always/level/stage_2
#levetrank
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run xp add @s 1 levels
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-2 10


# STAGE 3

#include plant
execute as @a[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players add @s elements_level_crimson_vines 1
execute as @a[scores={elements_level_crimson_vines_plant=1..}] run scoreboard players remove @s elements_level_crimson_vines_plant 1
#main
execute as @a[scores={elements_level_crimson_vines=1..}] run function elements:sonstiges-always/level/stage_3
#levetrank
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run xp add @s 2 levels
execute as @a[scores={elements_custom-items_shop_leveltrank_counter_stage-2=10..}] run scoreboard players remove @s elements_custom-items_shop_leveltrank_counter_stage-2 10