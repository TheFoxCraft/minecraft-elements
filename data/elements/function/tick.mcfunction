function elements:sonstiges-always/spawning
function elements:sonstiges-always/sonstiges
function elements:sonstiges-always/level {elements_level_stone:10,elements_level_wood:1}
function elements:villager/techniker
function elements:sonstiges-always/firstlogin
function elements:villager/clementius
function elements:sonstiges-always/autocompactor
function elements:sonstiges-always/special-items
function elements:miningxp/miningxp
function elements:miningxp/forestingxp
function elements:miningxp/fishingxp
function elements:miningxp/get_fishing/get_fishing
function elements:villager/titus
function elements:villager/mystery
function elements:villager/stage-2_mana
function elements:enderchest/casino/horse/horse
function elements:enderchest/casino/luckywheel/luckywheel
function elements:spawn/abgaben/main
function elements:spawn/gruppenziel
function elements:spawn/levelbaum
function elements:custom-items/mining-frucht/timer
function elements:custom-items/foraging-frucht/timer
function elements:custom-items/farming-frucht/timer
function elements:custom-items/fishing-frucht/timer
function elements:custom-items/small-heal-pot/main
function elements:stages/refresh-vaults
function elements:spawn/leaderboards/refresh-timer
function elements:mana/regernation
function elements:mana/main
function elements:mana/cooldown
function elements:spawn/community-hub



#enderchest
execute as @a[scores={elements_rank_admin=1}] run function elements:enderchest/admin-settings/main
execute as @a[scores={elements_enderchest_interface_number=1}] run function elements:enderchest/main
execute as @a[scores={elements_enderchest_interface_number=2}] run function elements:enderchest/autocompact
execute as @a[scores={elements_enderchest_interface_number=3}] run function elements:enderchest/upgradeschmiede
execute as @a[scores={elements_enderchest_interface_number=4}] run function elements:enderchest/enderchest
execute as @a[scores={elements_enderchest_interface_number=5}] run function elements:enderchest/casino
execute as @a[scores={elements_enderchest_interface_number=6}] run function elements:enderchest/collections/menu
execute as @a[scores={elements_enderchest_interface_number=7}] run function elements:enderchest/settings
execute as @a[scores={elements_enderchest_interface_number=8,elements_rank_admin=1}] run function elements:enderchest/admin-settings/abgaben
execute as @a[scores={elements_enderchest_interface_number=8,elements_rank_admin=1}] if score #server elements_setup matches 1.. run function elements:enderchest/admin-settings/teleporter
execute as @a[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_count=1,elements_enderchest_shop_ocean=1}] run function elements:enderchest/shop/ocean-shop
execute as @a[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_count=1,elements_enderchest_shop_stone=1}] run function elements:enderchest/shop/stone-shop
execute as @a[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_count=1,elements_enderchest_shop_sky=1}] run function elements:enderchest/shop/sky-shop
execute as @a[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_count=1,elements_enderchest_shop_nether=1}] run function elements:enderchest/shop/nether-shop
execute as @a[scores={elements_enderchest_interface_number=9,elements_enderchest_shop_count=2..4}] run function elements:enderchest/shop/select_shop


execute as @a[scores={elements_death=1..}] run function elements:sonstiges/death
function elements:sonstiges/spawn-management
execute as @a[scores={elements_choose_dimension=1..4}] run function elements:spawn/choose_dimension
execute as @a[scores={just-ignore=1001..1006}] run function elements:spawn/choose_dimension
execute if score #server elements_abgabe_shop_leer matches 2 run function elements:spawn/leer-shop
execute if score #server elements_stage_1_portal_enable matches 1 run function elements:stages/stage-1/portal
execute if score #server elements_stage_1_boss_status matches 1 run function elements:bosse/stage-1/main

execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},gamemode=!adventure] run function elements:custom-items/rettungs-plattform/rettungs-plattform-always
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_ice",count:1,components:{"minecraft:custom_model_data":1}},OnGround:1b}] at @s if block ~ ~ ~ fire if score #server elements_stage_1_portal_enable matches 0 run function elements:stages/stage-1/portal-enable




execute as @a[scores={elements_collections_interface=2}] run function elements:enderchest/collections/stone



execute as @a[scores={elements_get-name_status=1}] run function elements:sonstiges/get_name with entity @s
#leaderboards-spawning
execute as @e[tag=spawner_leaderboard_id-1] at @s run function elements:spawn/leaderboards/1_level-verloren/spawning
execute as @e[tag=spawner_leaderboard_id-2] at @s run function elements:spawn/leaderboards/2_death-count/spawning
execute as @e[tag=spawner_leaderboard_id-3] at @s run function elements:spawn/leaderboards/3_mining-level/spawning
execute as @e[tag=spawner_leaderboard_id-4] at @s run function elements:spawn/leaderboards/4_foraging-level/spawning
execute as @e[tag=spawner_leaderboard_id-5] at @s run function elements:spawn/leaderboards/5_farming-level/spawning
execute as @e[tag=spawner_leaderboard_id-6] at @s run function elements:spawn/leaderboards/6_fishing-level/spawning




##needs to be at the end!
function elements:custom-items/cooldown


#test
#function elements:test with storage elements_get-name

#save
#playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
#playsound ui.button.click master @s ~ ~ ~ 1
