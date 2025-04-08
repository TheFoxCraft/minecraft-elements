
#recycler

execute if score .server elements_recycler_update matches 1 run function elements:spawn/recycler/update

#abgabe
execute as @e[type=minecraft:interaction,tag=recycler_abgabe] at @s on target run tag @s add recycler_abgabe

# stage 1
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run function elements:spawn/recycler/abgabe_stage_1

# stage 2
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_wood=64..},nbt={SelectedItem:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] run function elements:spawn/recycler/abgabe_stage_2

# stage 3
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_crimson_vines=64..},nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run function elements:spawn/recycler/abgabe_stage_3

#other
execute as @e[type=minecraft:interaction] at @s if entity @a[tag=recycler_abgabe] run data remove entity @s interaction
execute as @a[tag=!recycler_abgabe_success,tag=recycler_abgabe] run tellraw @s ["",{"translate":"elements.main.other.server","color": "yellow"},{"text":"Du kannst hier Komprimiertes Material abgeben. Halte dazu das abzugegebene Material in der Hand. Du brauchst mindestens 64."}]
execute as @a[tag=!recycler_abgabe_success,tag=recycler_abgabe] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0

execute as @a[tag=recycler_abgabe_success] at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 2
execute if entity @a[tag=recycler_abgabe_success] run scoreboard players set .server elements_recycler_update 1
tag @a remove recycler_abgabe_success
tag @a remove recycler_abgabe


#recycler spawning
#stage 2
execute if score .server elements_stage matches 2.. if score .server elements_recycler_stats_2_spawn matches 0 if score .server elements_abgabe_other_recycler matches 2 run function elements:spawn/recycler/spawning_stage_2
#stage 3
execute if score .server elements_stage matches 3.. if score .server elements_recycler_stats_3_spawn matches 0 if score .server elements_abgabe_other_recycler matches 2 run function elements:spawn/recycler/spawning_stage_3