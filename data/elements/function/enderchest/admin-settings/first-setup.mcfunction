execute as @s at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s in elements:hub run place template elements:hub/01_start_repaired -30 93 -30
execute as @s in elements:nether run place template elements:spawn/nether -23 94 -23
execute as @s in elements:stone run place template elements:spawn/stone -22 97 -22
execute as @s in elements:sky run place template elements:spawn/sky -20 94 -20
execute as @s in elements:ocean run place template elements:spawn/ocean -20 56 -20
execute as @s in elements:stage-1_bossroom run place template elements:boss_room/stage_1 -20 99 -20
execute as @s in elements:stage-2_bossroom run place template elements:boss_room/stage_2 -20 98 -20
execute as @s in elements:stage-3_bossroom run place template elements:boss_room/stage_3 -41 95 -32
execute as @s in elements:stage-4_bossroom run place template elements:boss_room/stage_4 -29 96 -27
execute as @s in elements:stage-5_bossroom run place template elements:boss_room/stage_5 -50 82 -49
execute as @s run scoreboard players set .server elements_stage 0
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
execute as @s run scoreboard players set .server elements_config_death_level_datenspeicher 50
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
execute as @s run scoreboard players set .server elements_abgabe_start_steinmetz_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_mitte_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_boden1_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_boden2_progress 0
execute as @s run scoreboard players set .server elements_abgabe_start_saeulen_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_titus_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_clementius_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_mystery_progress 0
execute as @s run scoreboard players set .server elements_abgabe_shop_leer_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_2_gang_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_2_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_3_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_4_gang_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_4_progress 0
execute as @s run scoreboard players set .server elements_abgabe_stage_5_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_levelbaum_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_community-hub-main_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_angel-teich_progress 0
execute as @s run scoreboard players set .server elements_abgabe_other_recycler_progress 0
execute as @s run scoreboard players set .server elements_recycler_stats_fish 0
execute as @s run scoreboard players set .server elements_recycler_stats_1 0
execute as @s run scoreboard players set .server elements_recycler_stats_2 0
execute as @s run scoreboard players set .server elements_recycler_stats_2_spawn 0
execute as @s run scoreboard players set .server elements_recycler_stats_3 0
execute as @s run scoreboard players set .server elements_recycler_stats_3_spawn 0
execute as @s run scoreboard players set .server elements_recycler_stats_4 0
execute as @s run scoreboard players set .server elements_recycler_stats_4_spawn 0
execute as @s run scoreboard players set .server elements_recycler_stats_5 0
execute as @s run scoreboard players set .server elements_recycler_stats_5_spawn 0
execute as @s run scoreboard players set .server elements_abgabe_general_abgabe-mode 2
execute as @s run scoreboard players set .server elements_spawn_shop_leer_timer_tick 0
execute as @s run scoreboard players set .server elements_spawn_shop_leer_timer_min 0
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
execute as @s run scoreboard players set .server elements_stage_3_portal_enable 0
execute as @s run scoreboard players set .server elements_stage_3_boss_status 0
execute as @s run scoreboard players set .server elements_stage_3_boss_melee_timer 0
execute as @s run scoreboard players set .server elements_stage_4_portal_enable 0
execute as @s run scoreboard players set .server elements_stage_4_boss_status 0
execute as @s run scoreboard players set .server elements_stage_4_boss_melee_timer 0
execute as @s run scoreboard players set .server elements_stage_5_portal_enable 0
execute as @s run scoreboard players set .server elements_stage_5_boss_status 0
execute as @s run scoreboard players set .server elements_stage_5_boss_melee_timer 0
execute as @s run scoreboard players set .server elements_custom-items_shop_boss-frucht_remain 0
execute as @s run scoreboard players set .server elements_double-xp-event_active 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_h 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_min 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_actual_sec 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_h 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_min 0
execute as @s run scoreboard players set .server elements_double-xp-event_timer_max_sec 0
execute as @s run scoreboard players set .server elements_admin_config_interface 1
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_offers_buyed 0
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_offers_created 0
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_offers_sold 0
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_tokens_spend 0
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_tokens_earned 0
execute as @s run scoreboard players set .server elements_enderchest_handelsplatz_stats_tokens_spend_for_fine 0
#uniques
execute as @s run scoreboard players set .server elements_uniqueitem_collections_rute_der_zuechtigung 0
execute as @s run scoreboard players set .server elements_uniqueitem_collections_bruchstueck_der_eismauer 0
execute as @s run scoreboard players set .server elements_uniqueitem_collections_auf_log 0
execute as @s run scoreboard players set .server elements_uniqueitem_collections_bug_abuser 0
execute as @s run scoreboard players set .server elements_uniqueitem_other_datenspeicher 0
execute as @s run scoreboard players set .server elements_uniqueitem_ork_schatz 0
execute as @s run scoreboard players set .server elements_uniqueitem_planetenkern 0
execute as @s run scoreboard players set .server elements_uniqueitem_wanderlachs 0
execute as @s run scoreboard players set .server elements_uniqueitem_fragment_der_himmelswarze 0
execute as @s run scoreboard players set .server elements_uniqueitem_other_rolex 0
execute as @s run scoreboard players set .server elements_uniqueitem_miningxp_digda_splitter 0
execute as @s run scoreboard players set .server elements_uniqueitem_miningxp_sparks_papageienfeder 0
execute as @s run scoreboard players set .server elements_uniqueitem_miningxp_nasser_klumpen 0
execute as @s run scoreboard players set .server elements_uniqueitem_miningxp_honiggolem_elixir 0
execute as @s run scoreboard players set .server elements_uniqueitem_bosse_taubenkacke 0
execute as @s run scoreboard players set .server elements_uniqueitem_bosse_tomorrowland_karte 0
execute as @s run scoreboard players set .server elements_uniqueitem_bosse_amboesse 0
execute as @s run scoreboard players set .server elements_uniqueitem_shop_hasenpfote 0
execute as @s run scoreboard players set .server elements_uniqueitem_shop_allium_ghg 0
execute as @s run scoreboard players set .server elements_uniqueitem_shop_jos_stoff 0
execute as @s run scoreboard players set .server elements_uniqueitem_shop_mosh_pit 0


#add with every update
execute as @s run scoreboard players set .server elements_update_sequence_status 14

execute as @s run scoreboard players set .server elements_mystery_lootbox_jackpot 10000



function elements:spawn/leaderboards/reset-all



execute as @e[type=villager,tag=techniker,predicate=elements:is_in_oceanblock] run item replace entity @s armor.head with glass
execute as @s in elements:hub run summon villager 0.5 100.00 -16.5 {Invulnerable:1b,Tags:["start_steinmetz","follow"],HandItems:[{id:"minecraft:stone",count:1},{}],CustomName:'{"color":"gray","text":"Steinmetz"}',VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:plains"},Offers:{},NoAI:true}
execute as @s in elements:hub run summon villager 15.5 100.00 10.5 {Invulnerable:1b,NoAI:1b,Tags:["start_clementius","follow"],CustomName:'{"color":"gold","translate":"elements.villager.clementius.name"}',HandItems:[{id:"minecraft:anvil",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:taiga"},Offers:{}}
execute as @s in elements:hub run summon villager -14.5 100.00 10.5 {Invulnerable:1b,NoAI:1b,Tags:["start_titus","follow"],CustomName:'{"color":"gold","translate":"elements.villager.titus.name"}',HandItems:[{id:"minecraft:smithing_table",count:1},{}],VillagerData:{level:99,profession:"minecraft:weaponsmith",type:"minecraft:taiga"},Offers:{}}
execute as @s in elements:hub run summon villager -14.5 100.00 -9.5 {Invulnerable:1b,NoAI:1b,Tags:["start_mystery","follow"],CustomName:'{"color":"gold","translate":"elements.villager.mystery.name"}',HandItems:[{id:"minecraft:totem_of_undying",count:1},{}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{}}
execute as @s run function elements:spawn/leaderboards/reset-all
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
