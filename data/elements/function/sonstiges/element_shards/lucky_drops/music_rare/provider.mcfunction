execute at @s if score @s elements_element_shards_music_timer_rare matches 1 run function elements:sonstiges/element_shards/lucky_drops/music_rare/0
execute at @s if score @s elements_element_shards_music_timer_rare matches 4 run function elements:sonstiges/element_shards/lucky_drops/music_rare/1
execute at @s if score @s elements_element_shards_music_timer_rare matches 7 run function elements:sonstiges/element_shards/lucky_drops/music_rare/2
execute at @s if score @s elements_element_shards_music_timer_rare matches 10 run function elements:sonstiges/element_shards/lucky_drops/music_rare/3
execute at @s if score @s elements_element_shards_music_timer_rare matches 13 run function elements:sonstiges/element_shards/lucky_drops/music_rare/4
execute at @s if score @s elements_element_shards_music_timer_rare matches 16 run function elements:sonstiges/element_shards/lucky_drops/music_rare/5
execute at @s if score @s elements_element_shards_music_timer_rare matches 19 run function elements:sonstiges/element_shards/lucky_drops/music_rare/6
execute at @s if score @s elements_element_shards_music_timer_rare matches 22 run function elements:sonstiges/element_shards/lucky_drops/music_rare/7
execute at @s if score @s elements_element_shards_music_timer_rare matches 25 run function elements:sonstiges/element_shards/lucky_drops/music_rare/8
execute at @s if score @s elements_element_shards_music_timer_rare matches 28 run function elements:sonstiges/element_shards/lucky_drops/music_rare/9
execute at @s if score @s elements_element_shards_music_timer_rare matches 31 run function elements:sonstiges/element_shards/lucky_drops/music_rare/10
execute at @s if score @s elements_element_shards_music_timer_rare matches 34 run function elements:sonstiges/element_shards/lucky_drops/music_rare/11
execute at @s if score @s elements_element_shards_music_timer_rare matches 37 run function elements:sonstiges/element_shards/lucky_drops/music_rare/12
execute at @s if score @s elements_element_shards_music_timer_rare matches 40 run function elements:sonstiges/element_shards/lucky_drops/music_rare/13
execute at @s if score @s elements_element_shards_music_timer_rare matches 43 run function elements:sonstiges/element_shards/lucky_drops/music_rare/14
execute at @s if score @s elements_element_shards_music_timer_rare matches 46 run function elements:sonstiges/element_shards/lucky_drops/music_rare/15
execute at @s if score @s elements_element_shards_music_timer_rare matches 49 run function elements:sonstiges/element_shards/lucky_drops/music_rare/16
execute at @s if score @s elements_element_shards_music_timer_rare matches 52 run function elements:sonstiges/element_shards/lucky_drops/music_rare/17
execute at @s if score @s elements_element_shards_music_timer_rare matches 55 run function elements:sonstiges/element_shards/lucky_drops/music_rare/18
execute at @s if score @s elements_element_shards_music_timer_rare matches 58 run function elements:sonstiges/element_shards/lucky_drops/music_rare/19
execute at @s if score @s elements_element_shards_music_timer_rare matches 61 run function elements:sonstiges/element_shards/lucky_drops/music_rare/20
execute at @s if score @s elements_element_shards_music_timer_rare matches 64 run function elements:sonstiges/element_shards/lucky_drops/music_rare/21
execute at @s if score @s elements_element_shards_music_timer_rare matches 67 run function elements:sonstiges/element_shards/lucky_drops/music_rare/22
execute at @s if score @s elements_element_shards_music_timer_rare matches 70 run function elements:sonstiges/element_shards/lucky_drops/music_rare/23

scoreboard players add @s elements_element_shards_music_timer_rare 1
execute if score @s elements_element_shards_music_timer_rare matches 70.. run scoreboard players set @s elements_element_shards_music_timer_rare 0
