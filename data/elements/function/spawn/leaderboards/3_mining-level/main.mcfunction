$execute if score $(name_5) elements_miningxp_mining_level > $(name_4) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_temp set from storage elements_leaderboard_id-3 name_4
$execute if score $(name_5) elements_miningxp_mining_level > $(name_4) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_4 set from storage elements_leaderboard_id-3 name_5
$execute if score $(name_5) elements_miningxp_mining_level > $(name_4) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_5 set from storage elements_leaderboard_id-3 name_temp

$execute if score $(name_4) elements_miningxp_mining_level > $(name_3) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_temp set from storage elements_leaderboard_id-3 name_3
$execute if score $(name_4) elements_miningxp_mining_level > $(name_3) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_3 set from storage elements_leaderboard_id-3 name_4
$execute if score $(name_4) elements_miningxp_mining_level > $(name_3) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_4 set from storage elements_leaderboard_id-3 name_temp

$execute if score $(name_3) elements_miningxp_mining_level > $(name_2) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_temp set from storage elements_leaderboard_id-3 name_2
$execute if score $(name_3) elements_miningxp_mining_level > $(name_2) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_2 set from storage elements_leaderboard_id-3 name_3
$execute if score $(name_3) elements_miningxp_mining_level > $(name_2) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_3 set from storage elements_leaderboard_id-3 name_temp

$execute if score $(name_2) elements_miningxp_mining_level > $(name_1) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_temp set from storage elements_leaderboard_id-3 name_1
$execute if score $(name_2) elements_miningxp_mining_level > $(name_1) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_1 set from storage elements_leaderboard_id-3 name_2
$execute if score $(name_2) elements_miningxp_mining_level > $(name_1) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_2 set from storage elements_leaderboard_id-3 name_temp

scoreboard players set @a elements_leaderboards_id-3_rang 6
scoreboard players set #empty elements_leaderboards_id-3_rang 6
$scoreboard players set $(name_5) elements_leaderboards_id-3_rang 5
$scoreboard players set $(name_4) elements_leaderboards_id-3_rang 4
$scoreboard players set $(name_3) elements_leaderboards_id-3_rang 3
$scoreboard players set $(name_2) elements_leaderboards_id-3_rang 2
$scoreboard players set $(name_1) elements_leaderboards_id-3_rang 1

$execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1},limit=1] if score .server elements_leaderboards_id-3_rang_enable matches 5 if score @s elements_miningxp_mining_level > $(name_5) elements_miningxp_mining_level run function elements:sonstiges/get_name/pull_name with entity @s
$execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1},limit=1] if score .server elements_leaderboards_id-3_rang_enable matches 5 if score @s elements_miningxp_mining_level > $(name_5) elements_miningxp_mining_level run scoreboard players set $(name_5) elements_leaderboards_id-3_rang 6
$execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1},limit=1] if score .server elements_leaderboards_id-3_rang_enable matches 5 if score @s elements_miningxp_mining_level > $(name_5) elements_miningxp_mining_level run data modify storage elements_leaderboard_id-3 name_5 set from storage elements_get-name name


execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 4 run function elements:sonstiges/get_name/pull_name with entity @s
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 4 run data modify storage elements_leaderboard_id-3 name_5 set from storage elements_get-name name
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 4 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 5


execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 3 run function elements:sonstiges/get_name/pull_name with entity @s
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 3 run data modify storage elements_leaderboard_id-3 name_4 set from storage elements_get-name name
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 3 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 4


execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 2 run function elements:sonstiges/get_name/pull_name with entity @s
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 2 run data modify storage elements_leaderboard_id-3 name_3 set from storage elements_get-name name
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 2 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 3

execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 1 run function elements:sonstiges/get_name/pull_name with entity @s
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 1 run data modify storage elements_leaderboard_id-3 name_2 set from storage elements_get-name name
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 1 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 2


execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 0 run function elements:sonstiges/get_name/pull_name with entity @s
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 0 run data modify storage elements_leaderboard_id-3 name_1 set from storage elements_get-name name
execute as @a[scores={elements_leaderboards_id-3_rang=6,elements_get-name_status=1}] if score .server elements_leaderboards_id-3_rang_enable matches 0 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 1


$execute unless score $(name_1) elements_leaderboards_id-3_rang matches 1 run data modify storage elements_leaderboard_id-3 name_1 set value "#empty"
$execute unless score $(name_2) elements_leaderboards_id-3_rang matches 2 run data modify storage elements_leaderboard_id-3 name_2 set value "#empty"
$execute unless score $(name_3) elements_leaderboards_id-3_rang matches 3 run data modify storage elements_leaderboard_id-3 name_3 set value "#empty"
$execute unless score $(name_4) elements_leaderboards_id-3_rang matches 4 run data modify storage elements_leaderboard_id-3 name_4 set value "#empty"
$execute unless score $(name_5) elements_leaderboards_id-3_rang matches 5 run data modify storage elements_leaderboard_id-3 name_5 set value "#empty"

execute if score #empty elements_leaderboards_id-3_rang matches 1 unless score .server elements_leaderboards_id-3_rang_enable matches 0 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 0
execute if score #empty elements_leaderboards_id-3_rang matches 2 unless score .server elements_leaderboards_id-3_rang_enable matches 1 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 1
execute if score #empty elements_leaderboards_id-3_rang matches 3 unless score .server elements_leaderboards_id-3_rang_enable matches 2 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 2
execute if score #empty elements_leaderboards_id-3_rang matches 4 unless score .server elements_leaderboards_id-3_rang_enable matches 3 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 3
execute if score #empty elements_leaderboards_id-3_rang matches 5 unless score .server elements_leaderboards_id-3_rang_enable matches 4 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 4
execute if score #empty elements_leaderboards_id-3_rang matches 6 unless score .server elements_leaderboards_id-3_rang_enable matches 5 run scoreboard players set .server elements_leaderboards_id-3_rang_enable 5
