scoreboard players add .server elements_leaderboards_refresh-timer 1


execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/1_level-verloren/refresh with storage elements_leaderboard_id-1
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/1_level-verloren/main with storage elements_leaderboard_id-1
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/2_death-count/refresh with storage elements_leaderboard_id-2
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/2_death-count/main with storage elements_leaderboard_id-2
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/3_mining-level/refresh with storage elements_leaderboard_id-3
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/3_mining-level/main with storage elements_leaderboard_id-3
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/4_foraging-level/refresh with storage elements_leaderboard_id-4
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/4_foraging-level/main with storage elements_leaderboard_id-4
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/5_farming-level/refresh with storage elements_leaderboard_id-5
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/5_farming-level/main with storage elements_leaderboard_id-5
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/6_fishing-level/refresh with storage elements_leaderboard_id-6
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/6_fishing-level/main with storage elements_leaderboard_id-6


execute if score .server elements_leaderboards_refresh-timer matches 40 run scoreboard players set .server elements_leaderboards_refresh-timer 0