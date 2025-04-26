


#-------------------------------------ALWAYS-------------------------------------ALWAYS-----------------------------------ALWAYS----------------------------------#




function elements:miningxp/miningxp
function elements:miningxp/forestingxp
function elements:miningxp/farmingxp
function elements:miningxp/fishingxp
function elements:miningxp/get_fishing/get_fishing


#players
execute as @a[gamemode=!spectator] run function elements:main/players/always
execute as @a[tag=elements_boss_spectator] at @s run function elements:bosse/spectator
execute as @a[tag=!elements_boss_spectator] run scoreboard players reset @s leave


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


#maybe geht da noch mehr
function elements:stages/refresh-vaults




# needs to be done -----------------------







# Farmslots
function elements:farm_slots/stage_2/calc_main
function elements:farm_slots/stage_3/calc_main
function elements:farm_slots/stage_4/calc_main




function elements:sonstiges-always/sonstiges



execute as @a at @s if entity @e[type=minecraft:interaction,tag=techniker,distance=..10] run function elements:villager/techniker
execute as @a at @s if entity @e[type=minecraft:interaction,tag=clementius,distance=..10] run function elements:villager/clementius

execute as @a at @s if entity @e[type=minecraft:interaction,tag=titus,distance=..10] run function elements:villager/titus
execute as @a at @s if entity @e[type=minecraft:interaction,tag=mystery,distance=..10] run function elements:villager/mystery
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-2_mana,distance=..30] run function elements:villager/stage-2_mana
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-2_farm-slots,distance=..10] run function elements:villager/stage-2_farm-slots
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-3_mana,distance=..10] run function elements:villager/stage-3_mana
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-3_farm-slots,distance=..10] run function elements:villager/stage-3_farm-slots
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-4_mana,distance=..10] run function elements:villager/stage-4_mana
execute as @a at @s if entity @e[type=minecraft:interaction,tag=stage-4_farm-slots,distance=..10] run function elements:villager/stage-4_farm-slots









function elements:custom-items/element_fishing_rod/crafting_main
#function elements:sonstiges-always/update_sequence/main







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



execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},gamemode=!adventure] run function elements:custom-items/rettungs-plattform/rettungs-plattform-always











#save
#playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
#playsound ui.button.click master @s ~ ~ ~ 1
#playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9