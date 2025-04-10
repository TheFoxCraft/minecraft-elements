tellraw @a ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"translate": "elements.main.other.reload.message",\
"with":[{"text":"V-1.3.0.0","color": "gold"}]},{"translate": "elements.main.other.reload.credits","color": "gray","hoverEvent": {"action": "show_text","contents": {"translate":"elements.main.other.reload.credits.hover"}}}]
gamerule sendCommandFeedback false

execute in elements:hub run gamerule keepInventory true
execute in elements:hub run gamerule lavaSourceConversion true
execute in elements:hub run gamerule spawnRadius 0
execute in elements:hub run gamerule universalAnger true
execute in elements:hub run setworldspawn 0 128 0
execute in elements:hub run gamerule doFireTick false
execute in elements:hub run difficulty hard
execute in elements:hub run forceload add 0 0
execute in elements:hub run forceload add 10 -15
execute in elements:hub run gamerule doTraderSpawning false
execute in elements:hub run gamerule doPatrolSpawning false
execute in elements:hub run gamerule disableRaids true
execute in elements:hub run gamerule sendCommandFeedback false

execute in elements:ocean run gamerule keepInventory true
execute in elements:ocean run gamerule lavaSourceConversion true
execute in elements:ocean run gamerule spawnRadius 0
execute in elements:ocean run gamerule universalAnger true
execute in elements:ocean run gamerule doFireTick false
execute in elements:ocean run difficulty hard
execute in elements:ocean run forceload add 0 0
execute in elements:ocean run gamerule doTraderSpawning false
execute in elements:ocean run gamerule doPatrolSpawning false
execute in elements:ocean run gamerule disableRaids true
execute in elements:ocean run gamerule sendCommandFeedback false

execute in elements:stone run gamerule keepInventory true
execute in elements:stone run gamerule lavaSourceConversion true
execute in elements:stone run gamerule spawnRadius 0
execute in elements:stone run gamerule universalAnger true
execute in elements:stone run gamerule doFireTick false
execute in elements:stone run difficulty hard
execute in elements:stone run forceload add 0 0
execute in elements:stone run gamerule doTraderSpawning false
execute in elements:stone run gamerule doPatrolSpawning false
execute in elements:stone run gamerule disableRaids true
execute in elements:stone run gamerule sendCommandFeedback false

execute in elements:sky run gamerule keepInventory true
execute in elements:sky run gamerule lavaSourceConversion true
execute in elements:sky run gamerule spawnRadius 0
execute in elements:sky run gamerule universalAnger true
execute in elements:sky run gamerule doFireTick false
execute in elements:sky run difficulty hard
execute in elements:sky run forceload add 0 0
execute in elements:sky run gamerule doTraderSpawning false
execute in elements:sky run gamerule doPatrolSpawning false
execute in elements:sky run gamerule disableRaids true
execute in elements:sky run gamerule sendCommandFeedback false

execute in elements:nether run gamerule keepInventory true
execute in elements:nether run gamerule lavaSourceConversion true
execute in elements:nether run gamerule spawnRadius 0
execute in elements:nether run gamerule universalAnger true
execute in elements:nether run gamerule doFireTick false
execute in elements:nether run difficulty hard
execute in elements:nether run forceload add 0 0
execute in elements:nether run gamerule doTraderSpawning false
execute in elements:nether run gamerule doPatrolSpawning false
execute in elements:nether run gamerule disableRaids true
execute in elements:nether run gamerule sendCommandFeedback false

execute in elements:stage-1_bossroom run gamerule keepInventory true
execute in elements:stage-1_bossroom run gamerule lavaSourceConversion true
execute in elements:stage-1_bossroom run gamerule spawnRadius 0
execute in elements:stage-1_bossroom run gamerule universalAnger true
execute in elements:stage-1_bossroom run gamerule doFireTick false
execute in elements:stage-1_bossroom run difficulty hard
execute in elements:stage-1_bossroom run forceload add 0 0 -1 -1
execute in elements:stage-1_bossroom run gamerule doTraderSpawning false
execute in elements:stage-1_bossroom run gamerule doPatrolSpawning false
execute in elements:stage-1_bossroom run gamerule disableRaids true
execute in elements:stage-1_bossroom run gamerule sendCommandFeedback false

execute in elements:stage-2_bossroom run gamerule keepInventory true
execute in elements:stage-2_bossroom run gamerule lavaSourceConversion true
execute in elements:stage-2_bossroom run gamerule spawnRadius 0
execute in elements:stage-2_bossroom run gamerule universalAnger true
execute in elements:stage-2_bossroom run gamerule doFireTick false
execute in elements:stage-2_bossroom run difficulty hard
execute in elements:stage-2_bossroom run forceload add 0 0 -1 -1
execute in elements:stage-2_bossroom run gamerule doTraderSpawning false
execute in elements:stage-2_bossroom run gamerule doPatrolSpawning false
execute in elements:stage-2_bossroom run gamerule disableRaids true
execute in elements:stage-2_bossroom run gamerule sendCommandFeedback false

execute in elements:stage-3_bossroom run gamerule keepInventory true
execute in elements:stage-3_bossroom run gamerule lavaSourceConversion true
execute in elements:stage-3_bossroom run gamerule spawnRadius 0
execute in elements:stage-3_bossroom run gamerule universalAnger true
execute in elements:stage-3_bossroom run gamerule doFireTick false
execute in elements:stage-3_bossroom run difficulty hard
execute in elements:stage-3_bossroom run forceload add 0 0 -1 -1
execute in elements:stage-3_bossroom run gamerule doTraderSpawning false
execute in elements:stage-3_bossroom run gamerule doPatrolSpawning false
execute in elements:stage-3_bossroom run gamerule disableRaids true
execute in elements:stage-3_bossroom run gamerule sendCommandFeedback false


team add elements_ocean {"text": "[OCEAN] ","color": "dark_blue"}
team add elements_stone {"text": "[STONE] ","color": "gray"}
team add elements_sky {"text": "[SKY] ","color": "aqua"}
team add elements_nether {"text": "[NETHER] ","color": "red"}
team add elements_god_ocean {"text": "[ELEMENTS-GOD-OCEAN] ","color": "dark_blue"}
team add elements_god_stone {"text": "[ELEMENTS-GOD-STONE] ","color": "gray"}
team add elements_god_sky {"text": "[ELEMENTS-GOD-SKY] ","color": "aqua"}
team add elements_god_nether {"text": "[ELEMENTS-GOD-NETHER] ","color": "red"}

team modify elements_ocean prefix {"text": "[O] ","color": "dark_blue"}
team modify elements_stone prefix {"text": "[S] ","color": "gray"}
team modify elements_sky prefix {"text": "[S] ","color": "aqua"}
team modify elements_nether prefix {"text": "[N] ","color": "red"}
team modify elements_god_ocean prefix {"text": "[ELEMENTS-GOD] ","color": "dark_blue"}
team modify elements_god_stone prefix {"text": "[ELEMENTS-GOD] ","color": "gray"}
team modify elements_god_sky prefix {"text": "[ELEMENTS-GOD] ","color": "aqua"}
team modify elements_god_nether prefix {"text": "[ELEMENTS-GOD] ","color": "red"}


bossbar add elements:credits "%null%"
bossbar set elements:credits color purple
bossbar set elements:credits name [{"translate": "elements.main.elements_sign"}]
bossbar set elements:credits value 100
bossbar add elements:credits_hide "%null%"
bossbar set elements:credits_hide color purple
bossbar set elements:credits_hide name ""
bossbar set elements:credits_hide value 100
bossbar add elements:credits_small "%null%"
bossbar set elements:credits_small color purple
bossbar set elements:credits_small name [{"translate": "elements.main.elements_no_sign"}]
bossbar set elements:credits_small value 100
bossbar add elements:gruppenziel_total "%null%"
bossbar set elements:gruppenziel_total color green
bossbar set elements:gruppenziel_total name {"text": "Aktuell gibt es kein Gruppenziel","color": "white"}
bossbar add elements:gruppenziel_hub "%null%"
bossbar set elements:gruppenziel_hub color green
bossbar set elements:gruppenziel_hub name {"text": "Aktuell gibt es kein Gruppenziel","color": "white"}
bossbar add elements:stage-1_boss "%null%"
bossbar set elements:stage-1_boss color red
bossbar set elements:stage-1_boss name {"text": "Rießiger Silberfisch","color": "white"}
bossbar add elements:stage-2_boss "%null%"
bossbar set elements:stage-2_boss color red
bossbar set elements:stage-2_boss name {"text": "Plasma-Blaze","color": "white"}
bossbar add elements:stage-3_boss "%null%"
bossbar set elements:stage-3_boss color red
bossbar set elements:stage-3_boss name {"text": "Böser Hoglin","color": "white"}

scoreboard objectives add elements_random dummy
scoreboard objectives add Dimension-Switch trigger
scoreboard objectives add elements_override_by_dd dummy
scoreboard objectives add z_just-ignore trigger
scoreboard objectives add elements_admin_config_clicked dummy
scoreboard objectives add elements_rank_admin dummy
scoreboard objectives add elements_rank_cam dummy
scoreboard objectives add elements_stage dummy
scoreboard objectives add elements_mainlevel dummy
scoreboard objectives add elements_tokens_random dummy
scoreboard objectives add elements_tokens_count dummy
scoreboard objectives add elements_techniker_level dummy
scoreboard objectives add elements_techniker_random_type dummy
scoreboard objectives add elements_techniker_random_message dummy
scoreboard objectives add elements_techniker_message_cooldown dummy
scoreboard objectives add elements_homedimension dummy
scoreboard objectives add elements_playtime minecraft.custom:minecraft.play_time
scoreboard objectives add elements_techniker_clicked dummy
scoreboard objectives add elements_inv_cobblestone dummy
scoreboard objectives add elements_inv_basalt dummy
scoreboard objectives add elements_inv_oaklog dummy
scoreboard objectives add elements_inv_bonemeal dummy
scoreboard objectives add elements_inv_stone_stage_1 dummy
scoreboard objectives add elements_enderchest_level dummy
scoreboard objectives add elements_start dummy
scoreboard objectives add elements_deathcount deathCount
scoreboard objectives add elements_death deathCount
scoreboard objectives add elements_dimension dummy
scoreboard objectives add elements_clementius_level dummy
scoreboard objectives add elements_clementius_clicked dummy
scoreboard objectives add elements_inv_compressed_cobblestone dummy
scoreboard objectives add elements_inv_compressed_wood dummy
scoreboard objectives add elements_inv_compressed_crimson_vines dummy
scoreboard objectives add elements_inv_crimson_vines dummy
scoreboard objectives add elements_enderchest_interface_number dummy
scoreboard objectives add elements_autocompactor dummy
scoreboard objectives add elements_inv_stone dummy
scoreboard objectives add elements_enderchest_interface_clear dummy
scoreboard objectives add elements_inv_sprucelog dummy
scoreboard objectives add elements_inv_dark_oaklog dummy
scoreboard objectives add elements_enderchest_upgradeschmiede_upgrade dummy
scoreboard objectives add elements_enderchest_upgradeschmiede_level dummy
scoreboard objectives add elements_enderchest_level_enderchest dummy
scoreboard objectives add elements_playerid dummy
scoreboard objectives add elements_enderchest_enderchest_load dummy
scoreboard objectives add elements_enderchest_enderchest_reload dummy
scoreboard objectives add elements_enderchest_level_stats dummy
scoreboard objectives add elements_enderchest_level_upgradeschmiede dummy
scoreboard objectives add elements_enderchest_level_autocompact dummy
scoreboard objectives add elements_enderchest_level_tp dummy
scoreboard objectives add elements_enderchest_stats_load dummy
scoreboard objectives add elements_stats_mininglevel dummy
scoreboard objectives add elements_stats_forestinglevel dummy
scoreboard objectives add elements_stats_harvestinglevel dummy
scoreboard objectives add elements_stats_maxlevel dummy
scoreboard objectives add elements_stats_servermaxlevel dummy
scoreboard objectives add elements_stats_levellost dummy
scoreboard objectives add elements_stats_serverlevellost dummy
scoreboard objectives add elements_stats_level_erhalten dummy
scoreboard objectives add elements_stats_level_erhalten_calc dummy
scoreboard objectives add elements_stats_level_erhalten_calc_get dummy
scoreboard objectives add elements_stats_level_erhalten_calc_get_old dummy
scoreboard objectives add elements_stats_level_ausgegeben dummy
scoreboard objectives add elements_stats_level_ausgegeben_calc dummy
scoreboard objectives add elements_stats_level_ausgegeben_calc_get dummy
scoreboard objectives add elements_stats_level_ausgegeben_calc_get_old dummy
scoreboard objectives add elements_stats_playtime_ticks dummy
scoreboard objectives add elements_stats_playtime_sec dummy
scoreboard objectives add elements_stats_playtime_min dummy
scoreboard objectives add elements_stats_playtime_h dummy
scoreboard objectives add elements_stats_eq dummy
scoreboard objectives add elements_stats_lootbox dummy
scoreboard objectives add elements_mystery_lootbox_jackpot dummy
scoreboard objectives add elements_mystery_lootbox_random dummy
scoreboard objectives add elements_sonstiges_actionbar_pause dummy







scoreboard objectives add elements_stats_stage_1_boss_spawned dummy
scoreboard objectives add elements_stats_stage_1_boss_killed dummy
scoreboard objectives add elements_stats_stage_2_boss_spawned dummy
scoreboard objectives add elements_stats_stage_2_boss_killed dummy
scoreboard objectives add elements_stats_stage_3_boss_spawned dummy
scoreboard objectives add elements_stats_stage_3_boss_killed dummy
scoreboard objectives add elements_stats_stage_0_boss_spawned dummy
scoreboard objectives add elements_stats_stage_0_boss_killed dummy


#miningxp
scoreboard objectives add elements_miningxp_mining_mine-get_stone minecraft.mined:minecraft.stone
scoreboard objectives add elements_miningxp_mining_mine-get_cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add elements_miningxp_mining_mine-get_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add elements_miningxp_foresting_mine-get_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add elements_miningxp_farming_mine-get_crimson_vines minecraft.mined:minecraft.weeping_vines
scoreboard objectives add elements_miningxp_farming_mine-get_crimson_vines_plant minecraft.mined:minecraft.weeping_vines_plant


scoreboard objectives add elements_miningxp_mining_xp dummy
scoreboard objectives add elements_miningxp_mining_level dummy
scoreboard objectives add elements_miningxp_mining_nextlevel dummy
scoreboard objectives add elements_miningxp_mining_loot dummy
scoreboard objectives add elements_miningxp_foresting_xp dummy
scoreboard objectives add elements_miningxp_foresting_level dummy
scoreboard objectives add elements_miningxp_foresting_nextlevel dummy
scoreboard objectives add elements_miningxp_foresting_loot dummy
scoreboard objectives add elements_miningxp_farming_xp dummy
scoreboard objectives add elements_miningxp_farming_level dummy
scoreboard objectives add elements_miningxp_farming_nextlevel dummy
scoreboard objectives add elements_miningxp_farming_loot dummy
scoreboard objectives add elements_miningxp_fishing_xp dummy
scoreboard objectives add elements_miningxp_fishing_level dummy
scoreboard objectives add elements_miningxp_fishing_nextlevel dummy
scoreboard objectives add elements_miningxp_fishing_loot dummy

scoreboard objectives add elements_config_death_level dummy
scoreboard objectives add elements_config_death_level_datenspeicher dummy
scoreboard objectives add elements_death_level dummy
scoreboard objectives add elements_fixed dummy
scoreboard objectives add elements_fixed-value_1 dummy
scoreboard objectives add elements_death_level_lost dummy
scoreboard objectives add elements_death_level_loose dummy
scoreboard objectives add elements_stats_serverlevel dummy
scoreboard objectives add elements_stats_serverdeath dummy
scoreboard objectives add elements_inv_bone dummy
scoreboard objectives add elements_inv_rotten_flesh dummy
scoreboard objectives add elements_inv_gunpowder dummy
scoreboard objectives add elements_inv_iron_ingot dummy
scoreboard objectives add elements_inv_copper_ingot dummy
scoreboard objectives add elements_inv_diamond dummy
scoreboard objectives add elements_inv_emerald dummy
scoreboard objectives add elements_inv_ancient_debris dummy
scoreboard objectives add elements_inv_elytra dummy


scoreboard objectives add elements_update_sequence_status dummy
scoreboard objectives add elements_titus_level dummy
scoreboard objectives add elements_titus_clicked dummy
scoreboard objectives add elements_mystery_clicked dummy
scoreboard objectives add elements_enderchest_level_casino dummy
scoreboard objectives add elements_enderchest_level_settings dummy
scoreboard objectives add elements_casino_interface dummy
scoreboard objectives add elements_casino_stats_lvlinvestiert dummy
scoreboard objectives add elements_casino_stats_lvlgewonnen dummy
scoreboard objectives add elements_casino_stats_lvlverloren dummy
scoreboard objectives add elements_casino_stats_lvlumsatz dummy
scoreboard objectives add elements_casino_stats_game_horse dummy
scoreboard objectives add elements_casino_game dummy
scoreboard objectives add elements_casino_game_einsatz dummy
scoreboard objectives add elements_casino_config_einsatz dummy
scoreboard objectives add elements_casino_interface_load dummy
scoreboard objectives add elements_casino_game_horse_load dummy
scoreboard objectives add elements_casino_game_horse_names dummy
scoreboard objectives add elements_casino_game_horse_pos_1 dummy
scoreboard objectives add elements_casino_game_horse_pos_2 dummy
scoreboard objectives add elements_casino_game_horse_pos_3 dummy
scoreboard objectives add elements_casino_game_horse_horse dummy
scoreboard objectives add elements_casino_game_horse_move dummy
scoreboard objectives add elements_casino_game_horse_timer dummy
scoreboard objectives add elements_casino_game_horse_winner dummy
scoreboard objectives add elements_casino_game_horse_winner_load dummy
scoreboard objectives add elements_casino_game_horse_win_timer dummy
scoreboard objectives add elements_casino_game_price dummy
scoreboard objectives add elements_casino_game_show_price dummy
scoreboard objectives add elements_casino_game_luckywheel_load dummy
scoreboard objectives add elements_casino_game_luckywheel_wheel dummy
scoreboard objectives add elements_casino_game_luckywheel_spin dummy
scoreboard objectives add elements_casino_game_luckywheel_speed dummy
scoreboard objectives add elements_casino_game_luckywheel_random dummy
scoreboard objectives add elements_casino_game_luckywheel_win_timer dummy
scoreboard objectives add elements_casino_game_luckywheel_win dummy
scoreboard objectives add elements_casino_stats_game_luckywheel dummy
scoreboard objectives add elements_aa_secret_01 dummy
scoreboard objectives add elements_aa_secret_02 dummy
scoreboard objectives add elements_aa_secret_03 dummy
scoreboard objectives add elements_aa_secret_04 dummy
scoreboard objectives add elements_aa_secret_05 dummy
scoreboard objectives add elements_aa_secret_06 dummy
scoreboard objectives add elements_aa_secret_07 dummy
scoreboard objectives add elements_aa_secret_08 dummy
scoreboard objectives add elements_aa_secret_09 dummy
scoreboard objectives add elements_aa_secret_10 dummy
scoreboard objectives add elements_aa_secret_11 dummy
scoreboard objectives add elements_aa_secret_12 dummy
scoreboard objectives add elements_aa_secret_13 dummy
scoreboard objectives add elements_aa_secret_14 dummy
scoreboard objectives add elements_aa_secret_15 dummy

#collections
scoreboard objectives add elements_enderchest_level_collections dummy
scoreboard objectives add elements_collections_interface dummy
# stage 1
scoreboard objectives add elements_collections_stone_collect dummy
scoreboard objectives add elements_collections_stats_stone_total dummy
scoreboard objectives add elements_collections_calc_stone minecraft.mined:stone
scoreboard objectives add elements_collections_calc_cobblestone minecraft.mined:cobblestone
scoreboard objectives add elements_collections_calc_basalt minecraft.mined:basalt
# stage 2
scoreboard objectives add elements_collections_wood_collect dummy
scoreboard objectives add elements_collections_stats_wood_total minecraft.mined:spruce_log
# stage 3
scoreboard objectives add elements_collections_crimson_vines_collect dummy
scoreboard objectives add elements_collections_stats_crimson_vines_total dummy
scoreboard objectives add elements_collections_calc_crimson_vines minecraft.mined:weeping_vines
scoreboard objectives add elements_collections_calc_crimson_vines_plant minecraft.mined:weeping_vines_plant

scoreboard objectives add elements_custom-items_fishing_rod_crafting_sticks_cooldown dummy


scoreboard objectives add elements_enderchest_interface_clicked dummy
scoreboard objectives add elements_used_inv_slots dummy


## UNIQUES
#collections
scoreboard objectives add elements_uniqueitem_collections_bruchstueck_der_eismauer dummy
scoreboard objectives add elements_uniqueitem_collections_auf_log dummy
#collection_farming
scoreboard objectives add elements_uniqueitem_planetenkern dummy
scoreboard objectives add elements_uniqueitem_ork_schatz dummy
#other
scoreboard objectives add elements_uniqueitem_other_datenspeicher dummy




scoreboard objectives add elements_spawn_energiekern dummy
scoreboard objectives add elements_spawn_energiekern_manage_rotation dummy
scoreboard objectives add elements_spawn_start dummy
scoreboard objectives add elements_spawn_energiekern_particle_settings dummy
scoreboard objectives add elements_spawn_energiekern_show dummy
scoreboard objectives add elements_spawn_energiekern-activate dummy
scoreboard objectives add elements_spawn_energiekern-activate_timer dummy
scoreboard objectives add elements_spawn_energiekern_entity-count dummy
scoreboard objectives add elements_enderchest_settings_tp-mode dummy
scoreboard objectives add elements_enderchest_settings_dimension dummy
scoreboard objectives add elements_enderchest_settings_rotation_nether dummy
scoreboard objectives add elements_enderchest_settings_rotation_stone dummy
scoreboard objectives add elements_enderchest_settings_rotation_sky dummy
scoreboard objectives add elements_enderchest_settings_rotation_ocean dummy
scoreboard objectives add elements_enderchest_settings_rotation_hub dummy
scoreboard objectives add elements_enderchest_settings_interface dummy
scoreboard objectives add elements_settings_credits dummy
scoreboard objectives add elements_setup dummy
scoreboard objectives add elements_setup_timer dummy
scoreboard objectives add elements_setup_temp dummy
scoreboard objectives add elements_setup_storage dummy
scoreboard objectives add elements_data_playerin_oceanblock dummy
scoreboard objectives add elements_data_playerin_stoneblock dummy
scoreboard objectives add elements_data_playerin_skyblock dummy
scoreboard objectives add elements_data_playerin_netherblock dummy
scoreboard objectives add elements_choose_dimension dummy
scoreboard objectives add elements_is-assigned-to-dimension dummy
scoreboard objectives add elements_update-sign_timer dummy
scoreboard objectives add elements_playercount dummy
#abgaben
scoreboard objectives add elements_abgabe_start_steinmetz dummy
scoreboard objectives add elements_abgabe_start_steinmetz_progress dummy
scoreboard objectives add elements_abgabe_start_steinmetz_goal dummy
scoreboard objectives add elements_abgabe_start_steinmetz_abgabe-mode dummy
scoreboard objectives add elements_abgabe_start_mitte dummy
scoreboard objectives add elements_abgabe_start_mitte_progress dummy
scoreboard objectives add elements_abgabe_start_mitte_goal dummy
scoreboard objectives add elements_abgabe_start_mitte_abgabe-mode dummy
scoreboard objectives add elements_abgabe_start_boden1 dummy
scoreboard objectives add elements_abgabe_start_boden1_progress dummy
scoreboard objectives add elements_abgabe_start_boden1_goal dummy
scoreboard objectives add elements_abgabe_start_boden1_abgabe-mode dummy
scoreboard objectives add elements_abgabe_start_boden2 dummy
scoreboard objectives add elements_abgabe_start_boden2_progress dummy
scoreboard objectives add elements_abgabe_start_boden2_goal dummy
scoreboard objectives add elements_abgabe_start_boden2_abgabe-mode dummy
scoreboard objectives add elements_abgabe_start_saeulen dummy
scoreboard objectives add elements_abgabe_start_saeulen_progress dummy
scoreboard objectives add elements_abgabe_start_saeulen_goal dummy
scoreboard objectives add elements_abgabe_start_saeulen_abgabe-mode dummy
scoreboard objectives add elements_abgabe_shop_titus dummy
scoreboard objectives add elements_abgabe_shop_titus_progress dummy
scoreboard objectives add elements_abgabe_shop_titus_goal dummy
scoreboard objectives add elements_abgabe_shop_titus_abgabe-mode dummy
scoreboard objectives add elements_abgabe_shop_clementius dummy
scoreboard objectives add elements_abgabe_shop_clementius_progress dummy
scoreboard objectives add elements_abgabe_shop_clementius_goal dummy
scoreboard objectives add elements_abgabe_shop_clementius_abgabe-mode dummy
scoreboard objectives add elements_abgabe_shop_mystery dummy
scoreboard objectives add elements_abgabe_shop_mystery_progress dummy
scoreboard objectives add elements_abgabe_shop_mystery_goal dummy
scoreboard objectives add elements_abgabe_shop_mystery_abgabe-mode dummy
scoreboard objectives add elements_abgabe_shop_leer dummy
scoreboard objectives add elements_abgabe_shop_leer_progress dummy
scoreboard objectives add elements_abgabe_shop_leer_goal dummy
scoreboard objectives add elements_abgabe_shop_leer_abgabe-mode dummy
scoreboard objectives add elements_abgabe_stage_2_gang dummy
scoreboard objectives add elements_abgabe_stage_2_gang_progress dummy
scoreboard objectives add elements_abgabe_stage_2_gang_goal dummy
scoreboard objectives add elements_abgabe_stage_2_gang_abgabe-mode dummy
scoreboard objectives add elements_abgabe_stage_2 dummy
scoreboard objectives add elements_abgabe_stage_2_progress dummy
scoreboard objectives add elements_abgabe_stage_2_goal dummy
scoreboard objectives add elements_abgabe_stage_2_abgabe-mode dummy
scoreboard objectives add elements_abgabe_stage_3 dummy
scoreboard objectives add elements_abgabe_stage_3_progress dummy
scoreboard objectives add elements_abgabe_stage_3_goal dummy
scoreboard objectives add elements_abgabe_stage_3_abgabe-mode dummy
scoreboard objectives add elements_abgabe_other_levelbaum dummy
scoreboard objectives add elements_abgabe_other_levelbaum_progress dummy
scoreboard objectives add elements_abgabe_other_levelbaum_goal dummy
scoreboard objectives add elements_abgabe_other_levelbaum_abgabe-mode dummy
scoreboard objectives add elements_abgabe_other_community-hub-main dummy
scoreboard objectives add elements_abgabe_other_community-hub-main_progress dummy
scoreboard objectives add elements_abgabe_other_community-hub-main_goal dummy
scoreboard objectives add elements_abgabe_other_community-hub-main_abgabe-mode dummy
scoreboard objectives add elements_abgabe_other_recycler dummy
scoreboard objectives add elements_abgabe_other_recycler_progress dummy
scoreboard objectives add elements_abgabe_other_recycler_goal dummy
scoreboard objectives add elements_abgabe_other_recycler_abgabe-mode dummy
scoreboard objectives add elements_abgabe_other_angel-teich dummy
scoreboard objectives add elements_abgabe_other_angel-teich_progress dummy
scoreboard objectives add elements_abgabe_other_angel-teich_goal dummy
scoreboard objectives add elements_abgabe_other_angel-teich_abgabe-mode dummy

scoreboard objectives add elements_abgabe_general_goal dummy
scoreboard objectives add elements_abgabe_refresh_timer dummy
scoreboard objectives add elements_abgabe_general_abgabe-mode dummy
scoreboard objectives add elements_total-reset_temp-id dummy
scoreboard objectives add elements_abgabe_gruppenziel_progress dummy
scoreboard objectives add elements_abgabe_gruppenziel_goal dummy
scoreboard objectives add elements_settings_gruppengoal_show dummy
scoreboard objectives add elements_spawn_shop_leer_timer_min dummy
scoreboard objectives add elements_spawn_shop_leer_timer_tick dummy
scoreboard objectives add elements_spawn_shop_leer_timer-2_tick dummy
scoreboard objectives add elements_spawn_shop_leer_number dummy
scoreboard objectives add elements_spawn_levelbaum_task dummy
scoreboard objectives add elements_spawn_levelbaum_enable dummy
scoreboard objectives add elements_spawn_levelbaum_timer_tick dummy
scoreboard objectives add elements_spawn_levelbaum_timer_min dummy
scoreboard objectives add elements_spawn_levelbaum_allay-count dummy
scoreboard objectives add elements_enderchest_level_shop dummy
scoreboard objectives add elements_enderchest_shop_interface dummy
scoreboard objectives add elements_enderchest_shop_count dummy
scoreboard objectives add elements_enderchest_shop_ocean dummy
scoreboard objectives add elements_enderchest_shop_stone dummy
scoreboard objectives add elements_enderchest_shop_sky dummy
scoreboard objectives add elements_enderchest_shop_nether dummy
scoreboard objectives add elements_enderchest_stats_addition dummy

# all item cooldowns unnecessary (REPLACE)
scoreboard objectives add elements_custom-items_item-click_cooldown dummy


scoreboard objectives add elements_custom-items_shop_rettungs-plattform_cooldown dummy
scoreboard objectives add elements_custom-items_shop_rettungs-plattform_damage dummy
scoreboard objectives add elements_custom-items_shop_rettungs-plattform_cooldown_show dummy
scoreboard objectives add elements_custom-items_shop_rettungs-plattform_block-count dummy
scoreboard objectives add elements_custom-items_shop_rettungs-plattform_block-need dummy
scoreboard objectives add elements_custom-items_shop_rettungs-plattform_block-need_count dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_counter dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_timer_h dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_timer_min dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_enable dummy
scoreboard objectives add elements_custom-items_shop_mining-frucht_cooldown dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_counter dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_timer_h dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_timer_min dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_enable dummy
scoreboard objectives add elements_custom-items_shop_foraging-frucht_cooldown dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_counter dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_timer_h dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_timer_min dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_enable dummy
scoreboard objectives add elements_custom-items_shop_farming-frucht_cooldown dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_counter dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_timer_h dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_timer_min dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_enable dummy
scoreboard objectives add elements_custom-items_shop_fishing-frucht_cooldown dummy
scoreboard objectives add elements_custom-items_shop_small-heal-potion_cooldown dummy
scoreboard objectives add elements_custom-items_shop_big-heal-potion_cooldown dummy
scoreboard objectives add elements_custom-items_shop_boss-frucht_cooldown dummy
scoreboard objectives add elements_custom-items_shop_boss-frucht_remain dummy
scoreboard objectives add elements_custom-items_shop_boss-frucht_current_stage dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_cooldown dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_counter_stage-1 dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_counter_stage-2 dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_enable dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_timer_h dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_timer_min dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_leveltrank_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_cooldown dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_enable dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_timer_h dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_timer_min dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_hastetrank_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_cooldown dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_enable dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_timer_h dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_timer_min dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_water-breathing_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_luck-potion_enable dummy
scoreboard objectives add elements_custom-items_shop_luck-potion_timer_h dummy
scoreboard objectives add elements_custom-items_shop_luck-potion_timer_min dummy
scoreboard objectives add elements_custom-items_shop_luck-potion_timer_sec dummy
scoreboard objectives add elements_custom-items_shop_luck-potion_timer_tick dummy
scoreboard objectives add elements_custom-items_shop_hot-lava_cooldown dummy
scoreboard objectives add elements_custom-items_shop_hot-lava_damage_queue dummy
scoreboard objectives add elements_custom-items_shop_hot-lava_damage dummy
scoreboard objectives add elements_custom-items_shop_sauger_damage dummy
scoreboard objectives add elements_custom-items_shop_sauger_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add elements_custom-items_shop_manatrank_cooldown dummy
scoreboard objectives add elements_custom-items_shop_magisches-wasser_cooldown dummy
scoreboard objectives add elements_custom-items_shop_magisches-wasser_damage dummy
scoreboard objectives add elements_custom-items_shop_magisches-wasser_distance dummy
scoreboard objectives add elements_custom-items_shop_magisches-wasser_is_block dummy
scoreboard objectives add elements_custom-items_mystery_tp-schwert_cooldown dummy
scoreboard objectives add elements_custom-items_mystery_barriere-stab_cooldown dummy
scoreboard objectives add elements_custom-items_mystery_barriere-stab_particle_x dummy
scoreboard objectives add elements_custom-items_mystery_barriere-stab_particle_y dummy
scoreboard objectives add elements_custom-items_mystery_excalibur_cooldown dummy
scoreboard objectives add elements_custom-items_mystery_excalibur_sword_despawn dummy
scoreboard objectives add elements_custom-items_mystery_excalibur_sword_random dummy
scoreboard objectives add elements_custom-items_mystery_zerberster_cooldown dummy



scoreboard objectives add elements_stage_1_portal_enable dummy
scoreboard objectives add elements_stage_1_boss_status dummy
scoreboard objectives add elements_stage_1_boss_loot_count dummy
scoreboard objectives add elements_stage_1_boss_melee_timer dummy
scoreboard objectives add elements_stage_1_boss_spawn-player dummy
scoreboard objectives add elements_stage_1_boss_players_in_arena dummy
scoreboard objectives add elements_stage_1_boss_spectator_in_arena dummy
scoreboard objectives add elements_stage_2_portal_enable dummy
scoreboard objectives add elements_stage_2_boss_status dummy
scoreboard objectives add elements_stage_2_boss_loot_count dummy
scoreboard objectives add elements_stage_2_boss_melee_timer dummy
scoreboard objectives add elements_stage_2_boss_spawn-player dummy
scoreboard objectives add elements_stage_2_boss_players_in_arena dummy
scoreboard objectives add elements_stage_2_boss_spectator_in_arena dummy
scoreboard objectives add elements_stage_3_portal_enable dummy
scoreboard objectives add elements_stage_3_boss_status dummy
scoreboard objectives add elements_stage_3_boss_loot_count dummy
scoreboard objectives add elements_stage_3_boss_melee_timer dummy
scoreboard objectives add elements_stage_3_boss_spawn-player dummy
scoreboard objectives add elements_stage_3_boss_players_in_arena dummy
scoreboard objectives add elements_stage_3_boss_spectator_in_arena dummy

scoreboard objectives add elements_stage_3_portal_enable_fungus_timer dummy

scoreboard objectives add elements_spawn_vaults_refresh dummy
scoreboard objectives add elements_leaderboards_refresh-timer dummy
scoreboard objectives add elements_get-name_status dummy
scoreboard objectives add elements_get-name_progress dummy
scoreboard objectives add elements_villager_stage-2_mana_clicked dummy
scoreboard objectives add elements_villager_stage-2_mana_level dummy
scoreboard objectives add elements_villager_stage-2_farm-slots_clicked dummy
scoreboard objectives add elements_villager_stage-2_farm-slots_level dummy
scoreboard objectives add elements_villager_stage-3_mana_clicked dummy
scoreboard objectives add elements_villager_stage-3_mana_level dummy
scoreboard objectives add elements_villager_stage-3_farm-slots_clicked dummy
scoreboard objectives add elements_villager_stage-3_farm-slots_level dummy
scoreboard objectives add elements_stage-2_mana_activate_timer_tick dummy
scoreboard objectives add elements_stage-2_mana_activate_timer_sec dummy
scoreboard objectives add elements_mana_mana-count dummy
scoreboard objectives add elements_mana_mana-max dummy
scoreboard objectives add elements_mana_regeneration_timer dummy
scoreboard objectives add elements_mana_regeneration-per-sec dummy
scoreboard objectives add elements_mana_item_messstab_cooldown dummy
scoreboard objectives add elements_mana_item_magische-schale_cooldown dummy
scoreboard objectives add elements_recycler_update dummy
scoreboard objectives add elements_recycler_stats_1 dummy
scoreboard objectives add elements_recycler_stats_2 dummy
scoreboard objectives add elements_recycler_stats_2_spawn dummy
scoreboard objectives add elements_recycler_stats_3 dummy
scoreboard objectives add elements_recycler_stats_3_spawn dummy
scoreboard objectives add elements_function_timer_1m dummy
scoreboard objectives add elements_function_timer_10s dummy
scoreboard objectives add elements_function_timer_5s dummy
scoreboard objectives add elements_function_timer_3s dummy
scoreboard objectives add elements_function_timer_1s dummy
scoreboard objectives add elements_sonstiges_no-too-expensive_success dummy
scoreboard objectives add elements_admin_config_interface dummy
scoreboard objectives add elements_admin_config_tipps_interface dummy
scoreboard objectives add elements_maxhealth dummy
scoreboard objectives add elements_maxhealth_old dummy
scoreboard objectives add elements_maxhealth_update_queue dummy
scoreboard objectives add elements_custom-items_lebensfrucht_cooldown dummy
scoreboard objectives add elements_inv_small_heal_pot dummy
scoreboard objectives add elements_inv_big_heal_pot dummy
scoreboard objectives add elements_inv_manatrank dummy
scoreboard objectives add elements_inv_fish dummy
scoreboard objectives add elements_custom_doubleclick_cooldown dummy
scoreboard objectives add leave trigger
scoreboard objectives add elements_stats_fish_caught dummy
scoreboard objectives add elements_get-login minecraft.custom:minecraft.leave_game
scoreboard objectives add elements_get-login_cooldown dummy



scoreboard objectives add elements_custom-items_boss-keks_stage-1_cooldown dummy
scoreboard objectives add elements_custom-items_boss-keks_stage-2_cooldown dummy
scoreboard objectives add elements_custom-items_boss-keks_stage-3_cooldown dummy


#double-xp Event
scoreboard objectives add elements_double-xp-event_active dummy
scoreboard objectives add elements_double-xp-event_timer_max_h dummy
scoreboard objectives add elements_double-xp-event_timer_max_min dummy
scoreboard objectives add elements_double-xp-event_timer_max_sec dummy
scoreboard objectives add elements_double-xp-event_timer_max_all dummy
scoreboard objectives add elements_double-xp-event_timer_actual_h dummy
scoreboard objectives add elements_double-xp-event_timer_actual_min dummy
scoreboard objectives add elements_double-xp-event_timer_actual_sec dummy
scoreboard objectives add elements_double-xp-event_timer_actual_all dummy
scoreboard objectives add elements_double-xp-event_calc_var dummy
scoreboard objectives add elements_double-xp-event_get_timer_data dummy
bossbar add elements:double-xp-event_timer "%null%"
bossbar set elements:double-xp-event_timer color yellow

#leaderboards
scoreboard objectives add elements_leaderboards_id-1_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-1_rang dummy
scoreboard objectives add elements_leaderboards_id-2_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-2_rang dummy
scoreboard objectives add elements_leaderboards_id-3_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-3_rang dummy
scoreboard objectives add elements_leaderboards_id-4_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-4_rang dummy
scoreboard objectives add elements_leaderboards_id-5_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-5_rang dummy
scoreboard objectives add elements_leaderboards_id-6_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-6_rang dummy
scoreboard objectives add elements_leaderboards_id-7_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-7_rang dummy
scoreboard objectives add elements_leaderboards_id-8_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-8_rang dummy
scoreboard objectives add elements_leaderboards_id-9_rang_enable dummy
scoreboard objectives add elements_leaderboards_id-9_rang dummy

#farmslots
scoreboard objectives add elements_farm-slots_stage-2_placed dummy
scoreboard objectives add elements_farm-slots_stage-2_broken minecraft.mined:spruce_sapling
scoreboard objectives add elements_farm-slots_stage-2_slots dummy
scoreboard objectives add elements_farm-slots_stage-2_max-slots dummy
scoreboard objectives add elements_farm-slots_stage-2_correct_UUID dummy
scoreboard objectives add elements_farm-slots_stage-2_broken_slots dummy

scoreboard objectives add elements_farm-slots_stage-3_placed dummy
scoreboard objectives add elements_farm-slots_stage-3_broken minecraft.mined:weeping_vines
scoreboard objectives add elements_farm-slots_stage-3_broken_plant minecraft.mined:weeping_vines_plant
scoreboard objectives add elements_farm-slots_stage-3_slots dummy
scoreboard objectives add elements_farm-slots_stage-3_max-slots dummy
scoreboard objectives add elements_farm-slots_stage-3_correct_UUID dummy
scoreboard objectives add elements_farm-slots_stage-3_broken_slots dummy


scoreboard objectives setdisplay list elements_mainlevel


scoreboard objectives add elements_level_stone_cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add elements_level_stone_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add elements_level_stone_stone minecraft.mined:minecraft.stone

scoreboard objectives add elements_level_wood_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add elements_level_wood_spruce_placed minecraft.used:minecraft.spruce_log

scoreboard objectives add elements_level_crimson_vines minecraft.mined:minecraft.weeping_vines
scoreboard objectives add elements_level_crimson_vines_plant minecraft.mined:minecraft.weeping_vines_plant



##set values at start

execute unless score .server elements_playerid matches 0.. run scoreboard players set .server elements_playerid 0
execute unless score .server elements_stats_servermaxlevel matches 1.. run scoreboard players set .server elements_stats_servermaxlevel 0
execute unless score .server elements_config_death_level matches 1.. run scoreboard players set .server elements_config_death_level 5
execute unless score .server elements_stats_serverlevellost matches 1.. run scoreboard players set .server elements_stats_serverlevellost 0
execute unless score .server elements_stats_serverdeath matches 1.. run scoreboard players set .server elements_stats_serverdeath 0
execute unless score .server elements_stats_playtime_h matches 1.. run scoreboard players set .server elements_stats_playtime_h 0
execute unless score .server elements_stats_playtime_sec matches 1.. run scoreboard players set .server elements_stats_playtime_sec 0
execute unless score .server elements_stats_playtime_min matches 1.. run scoreboard players set .server elements_stats_playtime_min 0


#check for dasdatapack
scoreboard players set .server elements_override_by_dd 0
function dasdatapack:elements/check_for_install

#set fixed values
scoreboard players set .server elements_fixed-value_1 1