


#-------------------------------------ALWAYS-------------------------------------ALWAYS-----------------------------------ALWAYS----------------------------------#


function elements:miningxp/get_fishing/get_fishing

# Farmslots
function elements:farm_slots/stage_2/calc_main
function elements:farm_slots/stage_3/calc_main
function elements:farm_slots/stage_4/calc_main
function elements:farm_slots/stage_5/calc_main


#players
execute as @a[gamemode=!spectator] run function elements:main/players/always
execute as @a[tag=elements_boss_spectator] at @s run function elements:bosse/spectator

# 1s etc managed in main 1s functions

#server optimized --------------------------


execute unless score .server elements_spawn_levelbaum_enable matches 1 run function elements:spawn/levelbaum/task
execute if score .server elements_spawn_levelbaum_enable matches 1 run function elements:spawn/levelbaum/enabled


#leaderboards refresh timer
scoreboard players add .server elements_leaderboards_refresh-timer 1
execute if score .server elements_leaderboards_refresh-timer matches 30 run function elements:spawn/leaderboards/refresh_main
execute if score .server elements_leaderboards_refresh-timer matches 40 run function elements:spawn/leaderboards/refresh_show

function elements:spawn/abgaben/main

#rätsel
execute if score .server elements_stage_1_portal_enable matches 0 if score .server elements_stage matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}},OnGround:1b}] at @s if block ~ ~ ~ lava if score .server elements_stage_1_portal_enable matches 0 run function elements:stages/stage-1/portal-enable
execute if score .server elements_stage_2_portal_enable matches 0 if score .server elements_stage matches 2.. as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",components:{"minecraft:custom_model_data":1}},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_log"},OnGround:1b},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:charcoal"},OnGround:1b},distance=..0.3,] if score .server elements_stage_2_portal_enable matches 0 run function elements:stages/stage-2/portal-enable
execute if score .server elements_stage_3_portal_enable matches 0 if score .server elements_stage matches 3.. run function elements:stages/stage-3/portal-enable/main
execute if score .server elements_stage_4_portal_enable matches 0 if score .server elements_stage matches 4.. run function elements:stages/stage-4/portal-enable/main


#maybe geht da noch mehr
function elements:stages/refresh-vaults




# needs to be done -----------------------







function elements:sonstiges-always/sonstiges






function elements:custom-items/element_fishing_rod/crafting_main



#Dringend verbessern
function elements:sonstiges/spawn-management
execute if score .server elements_abgabe_shop_leer matches 2 run function elements:spawn/leer-shop
execute if score .server elements_stage_1_portal_enable matches 1 run function elements:stages/stage-1/portal
execute if score .server elements_stage_2_portal_enable matches 1 run function elements:stages/stage-2/portal
execute if score .server elements_stage_3_portal_enable matches 1 run function elements:stages/stage-3/portal
execute if score .server elements_stage_4_portal_enable matches 1 run function elements:stages/stage-4/portal
execute if score .server elements_stage_1_boss_status matches 1 run function elements:bosse/stage-1/main
execute if score .server elements_stage_2_boss_status matches 1 run function elements:bosse/stage-2/main
execute if score .server elements_stage_3_boss_status matches 1 run function elements:bosse/stage-3/main
execute if score .server elements_stage_4_boss_status matches 1 run function elements:bosse/stage-4/main


#enderchest
function elements:enderchest/kill_items


#save
#playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
#playsound ui.button.click master @s ~ ~ ~ 1
#playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9