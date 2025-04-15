execute store result score @s elements_element_shards_count run clear @s amethyst_shard[custom_model_data=1] 0
execute store result score @s elements_element_shards_block_count run clear @s amethyst_block[custom_model_data=1] 0

scoreboard players set @s elements_element_shards_value 64
scoreboard players operation @s elements_element_shards_value *= @s elements_element_shards_block_count
scoreboard players operation @s elements_element_shards_value += @s elements_element_shards_count

execute unless score @s elements_element_shards_value matches 64.. run return fail
execute store result score @s elements_random run random value 1..100
execute if score @s elements_random matches 1 run function elements:sonstiges/element_shards/lucky_drops/common

execute unless score @s elements_element_shards_value matches 128.. run return fail
execute store result score @s elements_random run random value 1..500
execute if score @s elements_random matches 1 run function elements:sonstiges/element_shards/lucky_drops/rare

execute unless score @s elements_element_shards_value matches 192.. run return fail
execute store result score @s elements_random run random value 1..2000
execute if score @s elements_random matches 1 run function elements:sonstiges/element_shards/lucky_drops/epic

execute unless score @s elements_element_shards_value matches 256.. run return fail
execute store result score @s elements_random run random value 1..10000
execute if score @s elements_random matches 1 run function elements:sonstiges/element_shards/lucky_drops/legendary