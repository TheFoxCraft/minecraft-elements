#main
execute as @a run attribute @s luck modifier remove wanderlachs_luck
execute as @a[nbt={Inventory:[{id:"minecraft:salmon",components:{"minecraft:custom_model_data":2}}]}] run attribute @s luck modifier add wanderlachs_luck 100 add_value

execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Es wurde bei dir Im Handelsmarkt eingekauft!"},{"text": " +","color": "gold"},{"score": {"name": "@s","objective": "elements_enderchest_handelsplatz_tokens_to_give"},"color": "gold"},{"text": " Token!","color": "gold"}]
execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run scoreboard players operation @s elements_tokens_count += @s elements_enderchest_handelsplatz_tokens_to_give
execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run scoreboard players set @s elements_enderchest_handelsplatz_tokens_to_give 0


#leaderboards-spawning
execute as @e[tag=spawner_leaderboard_id-0] at @s run function elements:spawn/leaderboards/0_server-stats/spawning
execute as @e[tag=spawner_leaderboard_id-1] at @s run function elements:spawn/leaderboards/1_level-verloren/spawning
execute as @e[tag=spawner_leaderboard_id-2] at @s run function elements:spawn/leaderboards/2_death-count/spawning
execute as @e[tag=spawner_leaderboard_id-3] at @s run function elements:spawn/leaderboards/3_mining-level/spawning
execute as @e[tag=spawner_leaderboard_id-4] at @s run function elements:spawn/leaderboards/4_foraging-level/spawning
execute as @e[tag=spawner_leaderboard_id-5] at @s run function elements:spawn/leaderboards/5_farming-level/spawning
execute as @e[tag=spawner_leaderboard_id-6] at @s run function elements:spawn/leaderboards/6_fishing-level/spawning
execute as @e[tag=spawner_leaderboard_id-7] at @s run function elements:spawn/leaderboards/7_hoechst_level/spawning
execute as @e[tag=spawner_leaderboard_id-8] at @s run function elements:spawn/leaderboards/8_ausgegebene-level/spawning
execute as @e[tag=spawner_leaderboard_id-9] at @s run function elements:spawn/leaderboards/9_erhaltene-level/spawning



schedule function elements:function-timers/5s 100