execute at @s if score @s elements_element_shards_music_timer_common matches 1 run function elements:sonstiges/element_shards/lucky_drops/music_common/0
execute at @s if score @s elements_element_shards_music_timer_common matches 6 run function elements:sonstiges/element_shards/lucky_drops/music_common/1
execute at @s if score @s elements_element_shards_music_timer_common matches 11 run function elements:sonstiges/element_shards/lucky_drops/music_common/2
execute at @s if score @s elements_element_shards_music_timer_common matches 16 run function elements:sonstiges/element_shards/lucky_drops/music_common/3
execute at @s if score @s elements_element_shards_music_timer_common matches 21 run function elements:sonstiges/element_shards/lucky_drops/music_common/4
execute at @s if score @s elements_element_shards_music_timer_common matches 26 run function elements:sonstiges/element_shards/lucky_drops/music_common/4
execute at @s if score @s elements_element_shards_music_timer_common matches 31 run function elements:sonstiges/element_shards/lucky_drops/music_common/6


scoreboard players add @s elements_element_shards_music_timer_common 1
execute if score @s elements_element_shards_music_timer_common matches 31.. run scoreboard players set @s elements_element_shards_music_timer_common 0
