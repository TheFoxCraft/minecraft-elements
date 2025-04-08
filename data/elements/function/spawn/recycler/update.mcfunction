execute as @e[tag=recycler_sign_1_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_1"}}]'}
execute as @e[tag=recycler_sign_2_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_2"}}]'}
execute as @e[tag=recycler_sign_3_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_3"}}]'}
scoreboard players set .server elements_recycler_update 0
