#   !Leaderboard-Spawner nicht vergessen!

#recycler

execute if score .server elements_recycler_update matches 1 as @e[tag=recycler_sign_1_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_1"}}]'}
execute if score .server elements_recycler_update matches 1 as @e[tag=recycler_sign_2_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_2"}}]'}
execute if score .server elements_recycler_update matches 1 as @e[tag=recycler_sign_3_count] run data merge entity @s {text:'[{"score":{"name":".server","objective":"elements_recycler_stats_3"}}]'}

execute if score .server elements_recycler_update matches 1 run scoreboard players set .server elements_recycler_update 0


#abgabe
execute as @e[type=minecraft:interaction,tag=recycler_abgabe] at @s on target run tag @s add recycler_abgabe

# stage 1
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run xp add @s 16 levels
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add .server elements_recycler_stats_1 64
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run tag @s add recycler_abgabe_success
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_cobblestone=64..},nbt={SelectedItem:{id:"minecraft:cobbled_deepslate",components:{"minecraft:custom_model_data":1}}}] run clear @s cobbled_deepslate[custom_model_data=1] 64

# stage 2
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_wood=64..},nbt={SelectedItem:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] run xp add @s 32 levels
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_wood=64..},nbt={SelectedItem:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add .server elements_recycler_stats_2 64
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_wood=64..},nbt={SelectedItem:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] run tag @s add recycler_abgabe_success
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_wood=64..},nbt={SelectedItem:{id:"minecraft:oak_wood",components:{"minecraft:custom_model_data":1}}}] run clear @s oak_wood[custom_model_data=1] 64

# stage 3
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_crimson_vines=64..},nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run xp add @s 32 levels
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_crimson_vines=64..},nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add .server elements_recycler_stats_3 64
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_crimson_vines=64..},nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run tag @s add recycler_abgabe_success
execute as @a[tag=recycler_abgabe,scores={elements_inv_compressed_crimson_vines=64..},nbt={SelectedItem:{id:"minecraft:nether_wart_block",components:{"minecraft:custom_model_data":1}}}] run clear @s nether_wart_block[custom_model_data=1] 64


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
execute if score .server elements_stage matches 2.. if score .server elements_recycler_stats_2_spawn matches 0 in elements:hub run summon block_display -5.5 109.6 -59.5 {Tags:["recycler_sign_2_block","elements_recycler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:oak_wood",Properties:{axis:"y"}}}
execute if score .server elements_stage matches 2.. if score .server elements_recycler_stats_2_spawn matches 0 in elements:hub run summon text_display -4.5 109.5 -59.5 {Tags:["recycler_sign_2_count","elements_recycler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.3f,0.5f],scale:[1.8f,1.8f,1.8f]},alignment:"left",text:'[{"score":{"name":".server","objective":"elements_recycler_stats_2"}}]'}
execute if score .server elements_stage matches 2.. if score .server elements_recycler_stats_2_spawn matches 0 run scoreboard players set .server elements_recycler_stats_2_spawn 1
#stage 3
execute if score .server elements_stage matches 3.. if score .server elements_recycler_stats_3_spawn matches 0 in elements:hub run summon block_display -5.5 108.6 -59.5 {Tags:["recycler_sign_3_block","elements_recycler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},block_state:{Name:"minecraft:nether_wart_block"}}
execute if score .server elements_stage matches 3.. if score .server elements_recycler_stats_3_spawn matches 0 in elements:hub run summon text_display -4.5 108.5 -59.5 {Tags:["recycler_sign_3_count","elements_recycler"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[1.5f,0.3f,0.5f],scale:[1.8f,1.8f,1.8f]},alignment:"left",text:'[{"score":{"name":".server","objective":"elements_recycler_stats_3"}}]'}
execute if score .server elements_stage matches 3.. if score .server elements_recycler_stats_3_spawn matches 0 run scoreboard players set .server elements_recycler_stats_3_spawn 1