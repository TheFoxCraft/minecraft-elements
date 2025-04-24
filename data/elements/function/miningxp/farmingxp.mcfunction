#wrong

execute as @a[scores={elements_miningxp_farming_mine-get_crimson_vines_plant=1..}] run scoreboard players add @s elements_miningxp_farming_mine-get_crimson_vines 1
execute as @a[scores={elements_miningxp_farming_mine-get_crimson_vines_plant=1..}] run scoreboard players remove @s elements_miningxp_farming_mine-get_crimson_vines_plant 1
execute as @a[scores={elements_miningxp_farming_mine-get_crimson_vines=1..}] run function elements:miningxp/farmingxp/crimson_vines

# hier collections einfügen

execute as @a[scores={elements_miningxp_farming_mine-get_sweet_berries=1..}] run function elements:miningxp/farmingxp/sweet_berries




execute as @a if score @s elements_miningxp_farming_xp >= @s elements_miningxp_farming_nextlevel run function elements:miningxp/farmingxp/levelup
