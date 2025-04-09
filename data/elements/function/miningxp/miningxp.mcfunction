
execute as @a[scores={elements_miningxp_mining_mine-get_stone=1..}] run function elements:miningxp/miningxp/stone
execute as @a[scores={elements_miningxp_mining_mine-get_cobblestone=1..}] run function elements:miningxp/miningxp/cobblestone
execute as @a[scores={elements_miningxp_mining_mine-get_basalt=1..}] run function elements:miningxp/miningxp/basalt


execute as @a[scores={elements_custom-items_shop_mining-frucht_counter=3..}] run scoreboard players add @s elements_miningxp_mining_xp 1
execute as @a[scores={elements_custom-items_shop_mining-frucht_counter=3..}] run scoreboard players remove @s elements_custom-items_shop_mining-frucht_counter 3



#levelup
execute as @a if score @s elements_miningxp_mining_xp >= @s elements_miningxp_mining_nextlevel run function elements:miningxp/miningxp/levelup



# exponential function: 1000000 * 1.01^x-99