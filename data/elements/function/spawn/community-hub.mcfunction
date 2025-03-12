#   !Leaderboard-Spawner nicht vergessen!

#recycler

execute if score .server elements_recycler_update matches 1 as @e[tag=recycler_sign_1_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_1"}}]'}

execute if score .server elements_recycler_update matches 1 run scoreboard players set .server elements_recycler_update 0


#abgabe
execute as @e[type=minecraft:interaction,tag=recycler_abgabe] at @s on target run tag @s add recycler_abgabe
# stage 1

execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run xp add @s 16 levels
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add .server elements_recycler_stats_1 64
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run tag @s add recycler_abgabe_success
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run clear @s cobbled_deepslate[custom_model_data=1] 64

execute as @e[type=minecraft:interaction] at @s if entity @a[tag=recycler_abgabe] run data remove entity @s interaction
execute as @a[tag=!recycler_abgabe_success,tag=recycler_abgabe] run tellraw @s ["",{"text": "Server: ","color": "yellow"},{"text":"Du kannst hier Komprimiertes Material abgeben. Halte dazu das abzugegebene Material in der Hand. Du brauchst mindestens 64"}]
execute as @a[tag=!recycler_abgabe_success,tag=recycler_abgabe] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0

execute as @a[tag=recycler_abgabe_success] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2
execute if entity @a[tag=recycler_abgabe_success] run scoreboard players set .server elements_recycler_update 1
tag @a remove recycler_abgabe_success

tag @a remove recycler_abgabe
