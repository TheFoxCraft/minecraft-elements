execute as @e[tag=recycler_sign_1_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_1"}}]'}
execute as @e[tag=recycler_sign_2_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_2"}}]'}
execute as @e[tag=recycler_sign_3_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_3"}}]'}
execute as @e[tag=recycler_sign_4_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_4"}}]'}
execute as @e[tag=recycler_sign_5_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_5"}}]'}
execute as @e[tag=recycler_sign_6_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_6"}}]'}
execute as @e[tag=recycler_sign_fish_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_fish"}}]'}
scoreboard players set .server elements_recycler_update 0
