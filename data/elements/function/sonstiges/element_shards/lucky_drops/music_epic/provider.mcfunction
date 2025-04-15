execute at @s if score @s elements_element_shards_music_timer_epic matches 1 run function elements:sonstiges/element_shards/lucky_drops/music_epic/0
execute at @s if score @s elements_element_shards_music_timer_epic matches 4 run function elements:sonstiges/element_shards/lucky_drops/music_epic/1
execute at @s if score @s elements_element_shards_music_timer_epic matches 7 run function elements:sonstiges/element_shards/lucky_drops/music_epic/2
execute at @s if score @s elements_element_shards_music_timer_epic matches 10 run function elements:sonstiges/element_shards/lucky_drops/music_epic/3
execute at @s if score @s elements_element_shards_music_timer_epic matches 13 run function elements:sonstiges/element_shards/lucky_drops/music_epic/4
execute at @s if score @s elements_element_shards_music_timer_epic matches 16 run function elements:sonstiges/element_shards/lucky_drops/music_epic/5
execute at @s if score @s elements_element_shards_music_timer_epic matches 19 run function elements:sonstiges/element_shards/lucky_drops/music_epic/6
execute at @s if score @s elements_element_shards_music_timer_epic matches 22 run function elements:sonstiges/element_shards/lucky_drops/music_epic/7
execute at @s if score @s elements_element_shards_music_timer_epic matches 25 run function elements:sonstiges/element_shards/lucky_drops/music_epic/8
execute at @s if score @s elements_element_shards_music_timer_epic matches 28 run function elements:sonstiges/element_shards/lucky_drops/music_epic/9
execute at @s if score @s elements_element_shards_music_timer_epic matches 31 run function elements:sonstiges/element_shards/lucky_drops/music_epic/10
execute at @s if score @s elements_element_shards_music_timer_epic matches 34 run function elements:sonstiges/element_shards/lucky_drops/music_epic/11
execute at @s if score @s elements_element_shards_music_timer_epic matches 37 run function elements:sonstiges/element_shards/lucky_drops/music_epic/12
execute at @s if score @s elements_element_shards_music_timer_epic matches 40 run function elements:sonstiges/element_shards/lucky_drops/music_epic/13
execute at @s if score @s elements_element_shards_music_timer_epic matches 43 run function elements:sonstiges/element_shards/lucky_drops/music_epic/14
execute at @s if score @s elements_element_shards_music_timer_epic matches 46 run function elements:sonstiges/element_shards/lucky_drops/music_epic/15

scoreboard players add @s elements_element_shards_music_timer_epic 1
execute if score @s elements_element_shards_music_timer_epic matches 46.. run scoreboard players set @s elements_element_shards_music_timer_epic 0
