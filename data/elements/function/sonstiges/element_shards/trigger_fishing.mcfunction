execute store result score @s elements_element_shards_count run clear @s amethyst_shard[custom_model_data=1] 0
execute store result score @s elements_element_shards_block_count run clear @s amethyst_block[custom_model_data=1] 0

scoreboard players set @s elements_element_shards_value 64
scoreboard players operation @s elements_element_shards_value *= @s elements_element_shards_block_count
scoreboard players operation @s elements_element_shards_value += @s elements_element_shards_count





execute if score @s elements_element_shards_value matches ..15 run return fail
execute if score @s elements_element_shards_value matches 16..31 run function elements:sonstiges/element_shards/lucky_drops/common {rate:40,chance:1}
execute if score @s elements_element_shards_value matches 32..47 run function elements:sonstiges/element_shards/lucky_drops/common {rate:40,chance:2}
execute if score @s elements_element_shards_value matches 48..63 run function elements:sonstiges/element_shards/lucky_drops/common {rate:40,chance:3}
execute if score @s elements_element_shards_value matches 64.. run function elements:sonstiges/element_shards/lucky_drops/common {rate:40,chance:4}

execute if score @s elements_element_shards_value matches ..79 run return fail
execute if score @s elements_element_shards_value matches 80..95 run function elements:sonstiges/element_shards/lucky_drops/rare {rate:200,chance:1}
execute if score @s elements_element_shards_value matches 96..111 run function elements:sonstiges/element_shards/lucky_drops/rare {rate:200,chance:2}
execute if score @s elements_element_shards_value matches 112..127 run function elements:sonstiges/element_shards/lucky_drops/rare {rate:200,chance:3}
execute if score @s elements_element_shards_value matches 128.. run function elements:sonstiges/element_shards/lucky_drops/rare {rate:200,chance:4}

execute if score @s elements_element_shards_value matches ..143 run return fail
execute if score @s elements_element_shards_value matches 144..159 run function elements:sonstiges/element_shards/lucky_drops/epic {rate:800,chance:1}
execute if score @s elements_element_shards_value matches 160..175 run function elements:sonstiges/element_shards/lucky_drops/epic {rate:800,chance:2}
execute if score @s elements_element_shards_value matches 176..191 run function elements:sonstiges/element_shards/lucky_drops/epic {rate:800,chance:3}
execute if score @s elements_element_shards_value matches 192.. run function elements:sonstiges/element_shards/lucky_drops/epic {rate:800,chance:4}

execute if score @s elements_element_shards_value matches ..207 run return fail
execute if score @s elements_element_shards_value matches 208..223 run function elements:sonstiges/element_shards/lucky_drops/legendary {rate:4000,chance:1}
execute if score @s elements_element_shards_value matches 224..239 run function elements:sonstiges/element_shards/lucky_drops/legendary {rate:4000,chance:2}
execute if score @s elements_element_shards_value matches 240..255 run function elements:sonstiges/element_shards/lucky_drops/legendary {rate:4000,chance:3}
execute if score @s elements_element_shards_value matches 256.. run function elements:sonstiges/element_shards/lucky_drops/legendary {rate:4000,chance:4}



