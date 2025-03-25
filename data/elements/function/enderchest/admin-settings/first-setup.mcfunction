execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s in elements:hub run place template elements:hub/01_start_repaired -30 93 -30
execute as @s run tellraw @a {"text": "01/x Spawne HUB","color": "yellow"}
execute as @s in elements:nether run place template elements:spawn/nether -23 94 -23
execute as @s run tellraw @a {"text": "02/x Spawne Nether-Spawn","color": "yellow"}
execute as @s in elements:stone run place template elements:spawn/stone -22 97 -22
execute as @s run tellraw @a {"text": "03/x Spawne Stone-Spawn ","color": "yellow"}
execute as @s in elements:sky run place template elements:spawn/sky -20 94 -20
execute as @s run tellraw @a {"text": "04/x Spawne Sky-Spawn","color": "yellow"}
execute as @s in elements:ocean run place template elements:spawn/ocean -20 56 -20
execute as @s run tellraw @a {"text": "05/x Spawne Ocean-Spawn","color": "yellow"}
execute as @s in elements:stage-1_bossroom run place template elements:boss_room/stage_1 -20 99 -20
execute as @s run tellraw @a {"text": "05/x Spawne Boss-Room Stage 1","color": "yellow"}
execute as @s in elements:stage-2_bossroom run place template elements:boss_room/stage_2 -20 98 -20
execute as @s run tellraw @a {"text": "05/x Spawne Boss-Room Stage 2","color": "yellow"}
execute as @s run scoreboard players set .server elements_stage 0
execute as @s run tellraw @a {"text": "06/x Setze Scores","color": "yellow"}
execute as @s run scoreboard players set .server elements_stats_lootbox 0
execute as @s run scoreboard players set .server elements_casino_stats_lvlinvestiert 0
execute as @s run scoreboard players set .server elements_casino_stats_lvlgewonnen 0
execute as @s run scoreboard players set .server elements_casino_stats_lvlverloren 0
execute as @s run scoreboard players set .server elements_casino_stats_lvlumsatz 0
execute as @s run scoreboard players set .server elements_casino_stats_game_horse 0
execute as @s run scoreboard players set .server elements_casino_stats_game_luckywheel 0
execute as @s run scoreboard players set .server elements_spawn_energiekern 0
execute as @s run scoreboard players set .server elements_stats_servermaxlevel 0
execute as @s run scoreboard players set .server elements_config_death_level 5
execute as @s run scoreboard players set .server elements_config_death_level_datenspeicher 15
execute as @s run scoreboard players set .server elements_stats_serverlevellost 0
execute as @s run scoreboard players set .server elements_stats_serverdeath 0
execute as @s run scoreboard players set .server elements_stats_playtime_h 0
execute as @s run scoreboard players set .server elements_stats_playtime_sec 0
execute as @s run scoreboard players set .server elements_stats_playtime_min 0
execute as @s run scoreboard players set .server elements_data_playerin_oceanblock 0
execute as @s run scoreboard players set .server elements_data_playerin_stoneblock 0
execute as @s run scoreboard players set .server elements_data_playerin_skyblock 0
execute as @s run scoreboard players set .server elements_data_playerin_netherblock 0
execute as @s run scoreboard players set .server elements_abgabe_start_steinmetz 0
execute as @s run scoreboard players set .server elements_abgabe_start_steinmetz_goal 512
execute as @s run scoreboard players set .server elements_abgabe_start_steinmetz_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_mitte_goal 32
execute as @s run scoreboard players set .server elements_abgabe_start_mitte_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_boden1_goal 48
execute as @s run scoreboard players set .server elements_abgabe_start_boden1_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_boden2_goal 48
execute as @s run scoreboard players set .server elements_abgabe_start_boden2_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_saeulen_goal 64
execute as @s run scoreboard players set .server elements_abgabe_start_saeulen_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_titus_goal 128
execute as @s run scoreboard players set .server elements_abgabe_shop_titus_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_clementius_goal 128
execute as @s run scoreboard players set .server elements_abgabe_shop_clementius_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_mystery_goal 256
execute as @s run scoreboard players set .server elements_abgabe_shop_mystery_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_leer_goal 256
execute as @s run scoreboard players set .server elements_abgabe_shop_leer_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_wood_level_goal 10000
execute as @s run scoreboard players set .server elements_abgabe_stage_wood_level_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_levelbaum_goal 200
execute as @s run scoreboard players set .server elements_abgabe_other_levelbaum_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_community-hub-main_goal 100000
execute as @s run scoreboard players set .server elements_abgabe_other_community-hub-main_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_angel-teich_goal 200
execute as @s run scoreboard players set .server elements_abgabe_other_angel-teich_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_recycler_goal 50000
execute as @s run scoreboard players set .server elements_abgabe_other_recycler_progress 0
execute as @s run scoreboard players set .server elements_recycler_stats_1 0
execute as @s run scoreboard players set .server elements_recycler_stats_2 0
execute as @s run scoreboard players set .server elements_recycler_stats_2_spawn 0
execute as @s run scoreboard players set .server elements_abgabe_general_abgabe-mode 2
execute as @s run scoreboard players set .server elements_spawn_shop_leer_timer_tick 0
execute as @s run scoreboard players set .server elements_spawn_shop_leer_timer-2_tick 0
execute as @s run scoreboard players set .server elements_spawn_shop_leer_number 1
execute as @s run scoreboard players set .server elements_spawn_levelbaum_task 0
execute as @s run scoreboard players set .server elements_spawn_levelbaum_enable 0
execute as @s run scoreboard players set .server elements_spawn_levelbaum_timer_tick 0
execute as @s run scoreboard players set .server elements_spawn_levelbaum_timer_min 30
execute as @s run scoreboard players set .server elements_enderchest_shop_ocean 0
execute as @s run scoreboard players set .server elements_enderchest_shop_stone 0
execute as @s run scoreboard players set .server elements_enderchest_shop_sky 0
execute as @s run scoreboard players set .server elements_enderchest_shop_nether 0
execute as @s run scoreboard players set .server elements_stage_1_portal_enable 0
execute as @s run scoreboard players set .server elements_stage_1_boss_status 0
execute as @s run scoreboard players set .server elements_stage_1_boss_melee_timer 0
execute as @s run scoreboard players set .server elements_stage_2_portal_enable 0
execute as @s run scoreboard players set .server elements_stage_2_boss_status 0
execute as @s run scoreboard players set .server elements_stage_2_boss_melee_timer 0
execute as @s run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
execute as @s run scoreboard players set .server elements_double-xp-event_active 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_h 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_min 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_sec 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_h 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_min 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_sec 0
execute as @s run scoreboard players set .server elements_admin_config_interface 1
#uniques
execute as @s run scoreboard players set .server elements_uniqueitem_collections_stone 0
execute as @s run scoreboard players set .server elements_uniqueitem_collections_wood 0
execute as @s run scoreboard players set .server elements_uniqueitem_other_datenspeicher 0

execute as @s run scoreboard players set .server elements_update_sequence_status 0
execute as @s run scoreboard players set .server elements_mystery_lootbox_jackpot 10000



function elements:spawn/leaderboards/reset-all


execute as @s run tellraw @a {"text": "22/x Spawne Techniker","color": "yellow"}
execute as @e[type=villager,tag=techniker,predicate=elements:is_in_oceanblock] run item replace entity @s armor.head with glass
execute as @s in elements:hub run summon villager 0.5 100.00 -16.5 {Invulnerable:1b,Tags:["start_steinmetz","follow"],HandItems:[{id:"minecraft:stone",count:1},{}],CustomName:'{"color":"gray","text":"Steinmetz"}',VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:plains"},Offers:{},NoAI:true}
execute as @s run tellraw @a {"text": "15/x Spawne Fake-Steinmetz","color": "yellow"}
execute as @s in elements:hub run summon villager 15.5 100.00 10.5 {Invulnerable:1b,NoAI:1b,Tags:["start_clementius","follow"],CustomName:'{"color":"gold","text":"Clementius"}',HandItems:[{id:"minecraft:anvil",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:taiga"},Offers:{}}
execute as @s run tellraw @a {"text": "16/x Spawne Fake-Clementius","color": "yellow"}
execute as @s in elements:hub run summon villager -14.5 100.00 10.5 {Invulnerable:1b,NoAI:1b,Tags:["start_titus","follow"],CustomName:'{"color":"gold","text":"Titus"}',HandItems:[{id:"minecraft:smithing_table",count:1},{}],VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:taiga"},Offers:{}}
execute as @s run tellraw @a {"text": "17/x Spawne Fake-Titus","color": "yellow"}
execute as @s in elements:hub run summon villager -14.5 100.00 -9.5 {Invulnerable:1b,NoAI:1b,Tags:["start_mystery","follow"],CustomName:'{"color":"gold","text":"Mystery"}',HandItems:[{id:"minecraft:totem_of_undying",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{}}
execute as @s run tellraw @a {"text": "18/x Spawne Fake-Mystery","color": "yellow"}
execute as @s run function elements:spawn/leaderboards/reset-all
execute as @s run tellraw @a {"text": "19/x Starte Leaderboards","color": "yellow"}
execute as @s run tellraw @a {"text": "Minecraft Elements Setup erfolgreich abgeschlossen!","color": "green"}
execute as @s in elements:hub run tp @a 0 101 0

#summon unique item placeholders

execute in elements:hub run summon marker 28.5 101.5 24.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 18.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 12.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 6.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 -5.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 -11.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 -17.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 28.5 101.5 -23.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}

execute in elements:hub run summon marker -27.5 101.5 24.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 18.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 12.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 6.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 -5.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 -11.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 -17.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -27.5 101.5 -23.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}

execute in elements:hub run summon marker 24.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 18.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 12.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 6.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -5.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -11.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -17.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -23.5 101.5 28.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}

execute in elements:hub run summon marker 24.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 18.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 12.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker 6.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -5.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -11.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -17.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}
execute in elements:hub run summon marker -23.5 101.5 -27.5 {Tags:["elements_unique_placeholder",elements_unique_placeholder_empty]}


execute as @s run scoreboard players set .server elements_setup 1
execute as @s run scoreboard players set @s elements_enderchest_interface_clicked 0
