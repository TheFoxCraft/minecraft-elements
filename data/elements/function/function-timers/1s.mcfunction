function elements:villager/spawning/main
function elements:sonstiges-always/double-xp-event
function elements:sonstiges-always/sonstiges_1s
function elements:stages/portals

execute as @a[scores={elements_mana_item_schrumpfstab_hit_others_timer=1}] run attribute @s scale modifier remove schrumpfstab_scale
execute as @a[scores={elements_mana_item_schrumpfstab_hit_others_timer=1..}] run scoreboard players remove @s elements_mana_item_schrumpfstab_hit_others_timer 1


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


execute as @a[nbt={SelectedItem:{id:"minecraft:bone"}}] run item modify entity @s weapon.mainhand {function:"set_components",components:{food:{nutrition:0,saturation:0,can_always_eat:true},consumable:{consume_seconds:99999}}}