

# make items not pickupable

execute in elements:hub positioned 12 100 15 if data block ~ ~ ~ server_data.rewarded_players as @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_model_data":100},id:"minecraft:diorite"}}] run function elements:uniques/trigger/taubenkacke/get_data
execute in elements:hub positioned 57 100 9 if data block ~ ~ ~ server_data.rewarded_players as @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_model_data":100},id:"minecraft:map"}}] run function elements:uniques/trigger/tomorrowland_karte/get_data
execute in elements:hub positioned 57 100 -9 if data block ~ ~ ~ server_data.rewarded_players as @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_model_data":100},id:"minecraft:anvil"}}] run function elements:uniques/trigger/amboesse/get_data


#update rewarted players

scoreboard players add .server elements_spawn_vaults_refresh 1

execute if score .server elements_spawn_vaults_refresh matches 10.. if score .server elements_stage_1_portal_enable matches 1 in elements:hub unless data block 12 100 15 server_data.total_ejections_needed run data remove block 12 100 15 server_data.rewarded_players
execute if score .server elements_spawn_vaults_refresh matches 10.. if score .server elements_stage_2_portal_enable matches 1 in elements:hub unless data block 57 100 9 server_data.total_ejections_needed run data remove block 57 100 9 server_data.rewarded_players
execute if score .server elements_spawn_vaults_refresh matches 10.. if score .server elements_stage_3_portal_enable matches 1 in elements:hub unless data block 57 100 -9 server_data.total_ejections_needed run data remove block 57 100 -9 server_data.rewarded_players

execute if score .server elements_spawn_vaults_refresh matches 10.. run scoreboard players set .server elements_spawn_vaults_refresh 0

