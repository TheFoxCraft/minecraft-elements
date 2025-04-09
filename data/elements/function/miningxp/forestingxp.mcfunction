
execute as @a[scores={elements_miningxp_foresting_mine-get_spruce=1..}] run function elements:miningxp/foragingxp/spruce

execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_foresting_xp 3
execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_counter 3



execute as @a if score @s elements_miningxp_foresting_xp >= @s elements_miningxp_foresting_nextlevel run function elements:miningxp/foragingxp/levelup