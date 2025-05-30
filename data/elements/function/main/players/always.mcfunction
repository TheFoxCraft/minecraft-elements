


function elements:miningxp/miningxp
function elements:miningxp/forestingxp
function elements:miningxp/farmingxp
function elements:miningxp/fishingxp


function elements:sonstiges-always/level

execute as @s[nbt={SelectedItem:{id:"minecraft:gray_dye"}},predicate=!elements:is_in_hub] run function elements:custom-items/gravitystone/mainhand
execute as @s[nbt={Inventory:[{id:"minecraft:gray_dye",Slot:-106b}]},predicate=!elements:is_in_hub] run function elements:custom-items/gravitystone/offhand
execute as @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},gamemode=!adventure] run function elements:custom-items/rettungs-plattform/rettungs-plattform-always
clear @s melon_seeds




execute if score @s elements_autocompactor matches 1.. run function elements:sonstiges-always/autocompactor



#enderchest
execute as @s[scores={elements_rank_admin=1}] run function elements:enderchest/admin-settings/main
execute as @s[scores={elements_enderchest_interface_number=1}] run function elements:enderchest/main
execute as @s[scores={elements_enderchest_interface_number=2}] run function elements:enderchest/autocompact
execute as @s[scores={elements_enderchest_interface_number=3}] run function elements:enderchest/upgradeschmiede
execute as @s[scores={elements_enderchest_interface_number=4}] run function elements:enderchest/enderchest
execute as @s[scores={elements_enderchest_interface_number=5}] run function elements:enderchest/casino
execute as @s[scores={elements_enderchest_interface_number=6}] run function elements:enderchest/collections/menu
execute as @s[scores={elements_enderchest_interface_number=7}] run function elements:enderchest/settings
execute as @s[scores={elements_enderchest_interface_number=9}] run function elements:enderchest/shop/select_shop
execute as @s[scores={elements_enderchest_interface_number=10}] run function elements:enderchest/handelsplatz/main


execute if score @s elements_custom-items_shop_hot-lava_damage_queue matches 1 run function elements:custom-items/shop/nether/hot_lava/main


function elements:sonstiges-always/firstlogin
function elements:spawn/recycler




# item click cooldown
execute as @s[scores={elements_custom-items_item-click_cooldown=1..}] run scoreboard players remove @s elements_custom-items_item-click_cooldown 1

execute as @s[scores={elements_custom-items_zentrierer_rotation_lock=1}] run function elements:custom-items/mana-items/zentrierer/lock_rotation


execute at @s if entity @e[type=minecraft:interaction,tag=techniker,distance=..10] run function elements:villager/techniker
execute at @s if entity @e[type=minecraft:interaction,tag=clementius,distance=..10] run function elements:villager/clementius
execute at @s if entity @e[type=minecraft:interaction,tag=titus,distance=..10] run function elements:villager/titus
execute at @s if entity @e[type=minecraft:interaction,tag=mystery,distance=..10] run function elements:villager/mystery
execute at @s if entity @e[type=minecraft:interaction,tag=stage-2_mana,distance=..30] run function elements:villager/stage-2_mana
execute at @s if entity @e[type=minecraft:interaction,tag=stage-2_farm-slots,distance=..10] run function elements:villager/stage-2_farm-slots
execute at @s if entity @e[type=minecraft:interaction,tag=stage-3_mana,distance=..10] run function elements:villager/stage-3_mana
execute at @s if entity @e[type=minecraft:interaction,tag=stage-3_farm-slots,distance=..10] run function elements:villager/stage-3_farm-slots
execute at @s if entity @e[type=minecraft:interaction,tag=stage-4_mana,distance=..10] run function elements:villager/stage-4_mana
execute at @s if entity @e[type=minecraft:interaction,tag=stage-4_farm-slots,distance=..10] run function elements:villager/stage-4_farm-slots
execute at @s if entity @e[type=minecraft:interaction,tag=stage-5_mana,distance=..10] run function elements:villager/stage-5_mana
execute at @s if entity @e[type=minecraft:interaction,tag=stage-5_farm-slots,distance=..10] run function elements:villager/stage-5_farm-slots
execute at @s if entity @e[type=minecraft:interaction,tag=stage-6_mana,distance=..10] run function elements:villager/stage-6_mana
execute at @s if entity @e[type=minecraft:interaction,tag=stage-6_farm-slots,distance=..10] run function elements:villager/stage-6_farm-slots

execute as @s[scores={elements_choose_dimension=1..4}] run function elements:spawn/choose_dimension
execute as @s[scores={z_just-ignore=1001..1006}] run function elements:spawn/choose_dimension
execute as @s[scores={elements_death=1..}] run function elements:sonstiges/death

#load enderchest
execute unless score @s elements_enderchest_interface_number = @s elements_enderchest_interface_number_old run function elements:enderchest/load
scoreboard players operation @s elements_enderchest_interface_number_old = @s elements_enderchest_interface_number


