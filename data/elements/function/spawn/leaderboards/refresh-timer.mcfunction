scoreboard players add .server elements_leaderboards_refresh-timer 1


execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/refresh_main
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/refresh_show

