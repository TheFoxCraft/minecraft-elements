execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_foresting_xp 4
execute as @a[scores={elements_custom-items_shop_foraging-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_foraging-frucht_counter 3



execute as @a if score @s elements_miningxp_fishing_xp >= @s elements_miningxp_fishing_nextlevel run function elements:miningxp/fishingxp/levelup