scoreboard players add .server elements_spawn_vaults_refresh 1

execute if score .server elements_spawn_vaults_refresh matches 2.. if score .server elements_stage_1_portal_enable matches 1 in elements:hub run data remove block 12 100 15 server_data.rewarded_players
execute if score .server elements_spawn_vaults_refresh matches 2.. if score .server elements_stage_2_portal_enable matches 1 in elements:hub run data remove block 57 100 9 server_data.rewarded_players
execute if score .server elements_spawn_vaults_refresh matches 2.. if score .server elements_stage_3_portal_enable matches 1 in elements:hub run data remove block 57 100 -9 server_data.rewarded_players

execute if score .server elements_spawn_vaults_refresh matches 2.. run scoreboard players set .server elements_spawn_vaults_refresh 0