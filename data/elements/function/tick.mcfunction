#timers
scoreboard players add .server elements_function_timer_1m 1
scoreboard players add .server elements_function_timer_10s 1
scoreboard players add .server elements_function_timer_5s 1
scoreboard players add .server elements_function_timer_3s 1
scoreboard players add .server elements_function_timer_1s 1

execute if score .server elements_function_timer_1m matches 1200.. run function elements:function-timers/1m
execute if score .server elements_function_timer_1m matches 1200.. run scoreboard players set .server elements_function_timer_1m 0
execute if score .server elements_function_timer_10s matches 200.. run function elements:function-timers/10s
execute if score .server elements_function_timer_10s matches 200.. run scoreboard players set .server elements_function_timer_10s 0
execute if score .server elements_function_timer_5s matches 100.. run function elements:function-timers/5s
execute if score .server elements_function_timer_5s matches 100.. run scoreboard players set .server elements_function_timer_5s 0
execute if score .server elements_function_timer_3s matches 60.. run function elements:function-timers/3s
execute if score .server elements_function_timer_3s matches 60.. run scoreboard players set .server elements_function_timer_3s 0
execute if score .server elements_function_timer_1s matches 20.. run function elements:function-timers/1s
execute if score .server elements_function_timer_1s matches 20.. run scoreboard players set .server elements_function_timer_1s 0




#-------------------------------------ALWAYS-------------------------------------ALWAYS-----------------------------------ALWAYS----------------------------------#

# Farmslots
function elements:farm_slots/stage_2/calc_main
function elements:farm_slots/stage_3/calc_main
function elements:farm_slots/stage_4/calc_main




function elements:sonstiges-always/sonstiges

function elements:sonstiges-always/level
function elements:sonstiges-always/firstlogin

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


function elements:sonstiges-always/autocompactor
function elements:spawn/abgaben/main
function elements:spawn/levelbaum
execute as @a[scores={elements_custom-items_shop_mining-frucht_enable=1}] run function elements:custom-items/mining-frucht/timer
execute as @a[scores={elements_custom-items_shop_foraging-frucht_enable=1}] run function elements:custom-items/foraging-frucht/timer
execute as @a[scores={elements_custom-items_shop_farming-frucht_enable=1}] run function elements:custom-items/farming-frucht/timer
execute as @a[scores={elements_custom-items_shop_fishing-frucht_enable=1}] run function elements:custom-items/fishing-frucht/timer
execute as @a[scores={elements_custom-items_shop_luck-potion_enable=1}] run function elements:custom-items/shop/ocean/luck-potion/timer
execute as @a[scores={elements_custom-items_shop_leveltrank_enable=1}] run function elements:custom-items/shop/stone/leveltrank/timer
execute as @a[scores={elements_custom-items_shop_hastetrank_enable=1}] run function elements:custom-items/shop/stone/hastetrank/timer
execute as @a[scores={elements_custom-items_shop_water-breathing_enable=1}] run function elements:custom-items/shop/ocean/water-breathing/timer
execute as @a[scores={elements_custom-items_shop_hot-lava_damage_queue=1}] run function elements:custom-items/shop/nether/hot_lava/main
function elements:spawn/leaderboards/refresh-timer
function elements:mana/regeneration
function elements:mana/main
function elements:mana/cooldown
function elements:spawn/community-hub
function elements:stages/refresh-vaults
function elements:sonstiges-always/special-items






function elements:miningxp/miningxp
function elements:miningxp/forestingxp
function elements:miningxp/farmingxp
function elements:miningxp/fishingxp
function elements:miningxp/get_fishing/get_fishing




function elements:custom-items/shop/ocean/bossfrucht/main_handling
function elements:custom-items/element_fishing_rod/crafting_main
function elements:sonstiges-always/update_sequence/main
function elements:uniques/main

#get login
execute as @a[scores={elements_get-login=1..}] run scoreboard players set @s elements_get-login_cooldown 20
execute as @a[scores={elements_get-login=1..}] run scoreboard players set @s elements_get-login 0
execute as @a[scores={elements_get-login_cooldown=1..}] run scoreboard players remove @s elements_get-login_cooldown 1
execute as @a[scores={elements_get-login_cooldown=1}] run function elements:sonstiges/on_login


#enderchest
execute as @a[scores={elements_rank_admin=1}] run function elements:enderchest/admin-settings/main
execute as @a[scores={elements_enderchest_interface_number=1}] run function elements:enderchest/main
execute as @a[scores={elements_enderchest_interface_number=2}] run function elements:enderchest/autocompact
execute as @a[scores={elements_enderchest_interface_number=3}] run function elements:enderchest/upgradeschmiede
execute as @a[scores={elements_enderchest_interface_number=4}] run function elements:enderchest/enderchest
execute as @a[scores={elements_enderchest_interface_number=5}] run function elements:enderchest/casino
execute as @a[scores={elements_enderchest_interface_number=6}] run function elements:enderchest/collections/menu
execute as @a[scores={elements_enderchest_interface_number=7}] run function elements:enderchest/settings
execute as @a[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/select_shop
execute as @a[scores={elements_enderchest_interface_number=10}] run function elements:enderchest/handelsplatz/main


execute as @a[scores={elements_death=1..}] run function elements:sonstiges/death
function elements:sonstiges/spawn-management
execute as @a[scores={elements_choose_dimension=1..4}] run function elements:spawn/choose_dimension
execute as @a[scores={z_just-ignore=1001..1006}] run function elements:spawn/choose_dimension
execute if score .server elements_abgabe_shop_leer matches 2 run function elements:spawn/leer-shop
execute if score .server elements_stage_1_portal_enable matches 1 run function elements:stages/stage-1/portal
execute if score .server elements_stage_2_portal_enable matches 1 run function elements:stages/stage-2/portal
execute if score .server elements_stage_3_portal_enable matches 1 run function elements:stages/stage-3/portal
execute if score .server elements_stage_4_portal_enable matches 1 run function elements:stages/stage-4/portal
execute if score .server elements_stage_1_boss_status matches 1 run function elements:bosse/stage-1/main
execute if score .server elements_stage_2_boss_status matches 1 run function elements:bosse/stage-2/main
#execute if score .server elements_stage_3_boss_status matches 1 run function elements:bosse/stage-3/main

execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},gamemode=!adventure] run function elements:custom-items/rettungs-plattform/rettungs-plattform-always
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_ice",components:{"minecraft:custom_model_data":1}},OnGround:1b}] at @s if block ~ ~ ~ lava if score .server elements_stage_1_portal_enable matches 0 run function elements:stages/stage-1/portal-enable
execute as @e[type=item,nbt={Item:{id:"minecraft:dark_oak_sapling",components:{"minecraft:custom_model_data":1}},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:spruce_log"},OnGround:1b},distance=..0.3] if entity @e[type=item,nbt={Item:{id:"minecraft:charcoal"},OnGround:1b},distance=..0.3,] if score .server elements_stage_2_portal_enable matches 0 run function elements:stages/stage-2/portal-enable
execute if score .server elements_stage_3_portal_enable matches 0 if score .server elements_stage matches 3.. run function elements:stages/stage-3/portal-enable/main

execute as @a[tag=elements_boss_spectator] at @s run function elements:bosse/spectator
execute as @a[tag=!elements_boss_spectator] run scoreboard players reset @s leave





execute as @a[scores={elements_get-name_status=0}] run function elements:sonstiges/get_name/get_name with entity @s







##needs to be at the end!
function elements:custom-items/cooldown


#test
#function elements:test with storage elements_get-name

#save
#playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
#playsound ui.button.click master @s ~ ~ ~ 1
#playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 100 0.9