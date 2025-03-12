
execute as @s run scoreboard players set @s elements_enderchest_shop_ocean 0
execute as @s run scoreboard players set @s elements_enderchest_shop_stone 0
execute as @s run scoreboard players set @s elements_enderchest_shop_sky 0
execute as @s run scoreboard players set @s elements_enderchest_shop_nether 0
execute as @s[scores={elements_homedimension=1}] run scoreboard players set @s elements_enderchest_shop_ocean 1
execute as @s[scores={elements_homedimension=2}] run scoreboard players set @s elements_enderchest_shop_stone 1
execute as @s[scores={elements_homedimension=3}] run scoreboard players set @s elements_enderchest_shop_sky 1
execute as @s[scores={elements_homedimension=4}] run scoreboard players set @s elements_enderchest_shop_nether 1
execute if score .server elements_enderchest_shop_ocean matches 1 run scoreboard players set @s[scores={elements_rank_admin=1}] elements_enderchest_shop_ocean 1
execute if score .server elements_enderchest_shop_stone matches 1 run scoreboard players set @s[scores={elements_rank_admin=1}] elements_enderchest_shop_stone 1
execute if score .server elements_enderchest_shop_sky matches 1 run scoreboard players set @s[scores={elements_rank_admin=1}] elements_enderchest_shop_sky 1
execute if score .server elements_enderchest_shop_nether matches 1 run scoreboard players set @s[scores={elements_rank_admin=1}] elements_enderchest_shop_nether 1
execute if score .server elements_enderchest_shop_ocean matches 2 run scoreboard players set @s elements_enderchest_shop_ocean 1
execute if score .server elements_enderchest_shop_stone matches 2 run scoreboard players set @s elements_enderchest_shop_stone 1
execute if score .server elements_enderchest_shop_sky matches 2 run scoreboard players set @s elements_enderchest_shop_sky 1
execute if score .server elements_enderchest_shop_nether matches 2 run scoreboard players set @s elements_enderchest_shop_nether 1


execute as @s run scoreboard players set @s elements_enderchest_shop_interface 0



execute as @s run scoreboard players set @s elements_enderchest_shop_count 0
execute as @s run scoreboard players operation @s elements_enderchest_shop_count += @s elements_enderchest_shop_ocean
execute as @s run scoreboard players operation @s elements_enderchest_shop_count += @s elements_enderchest_shop_stone
execute as @s run scoreboard players operation @s elements_enderchest_shop_count += @s elements_enderchest_shop_sky
execute as @s run scoreboard players operation @s elements_enderchest_shop_count += @s elements_enderchest_shop_nether



