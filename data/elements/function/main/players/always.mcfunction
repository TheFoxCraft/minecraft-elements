
#früchte
execute if score @s elements_custom-items_shop_mining-frucht_enable matches 1 run function elements:custom-items/mining-frucht/timer
execute if score @s elements_custom-items_shop_foraging-frucht_enable matches 1 run function elements:custom-items/foraging-frucht/timer
execute if score @s elements_custom-items_shop_farming-frucht_enable matches 1 run function elements:custom-items/farming-frucht/timer
execute if score @s elements_custom-items_shop_fishing-frucht_enable matches 1 run function elements:custom-items/fishing-frucht/timer
execute if score @s elements_custom-items_shop_luck-potion_enable matches 1 run function elements:custom-items/shop/ocean/luck-potion/timer
execute if score @s elements_custom-items_shop_leveltrank_enable matches 1 run function elements:custom-items/shop/stone/leveltrank/timer
execute if score @s elements_custom-items_shop_hastetrank_enable matches 1 run function elements:custom-items/shop/stone/hastetrank/timer
execute if score @s elements_custom-items_shop_water-breathing_enable matches 1 run function elements:custom-items/shop/ocean/water-breathing/timer
execute if score @s elements_custom-items_shop_hot-lava_damage_queue matches 1 run function elements:custom-items/shop/nether/hot_lava/main






function elements:sonstiges-always/level

execute as @s[nbt={SelectedItem:{id:"minecraft:gray_dye"}},predicate=!elements:is_in_hub] run function elements:custom-items/gravitystone/mainhand
execute as @s[nbt={Inventory:[{id:"minecraft:gray_dye",Slot:-106b}]},predicate=!elements:is_in_hub] run function elements:custom-items/gravitystone/offhand


execute if score @s elements_autocompactor matches 1.. run function elements:sonstiges-always/autocompactor


#enderchest
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




function elements:sonstiges-always/firstlogin
function elements:spawn/recycler


execute as @s[scores={elements_choose_dimension=1..4}] run function elements:spawn/choose_dimension
execute as @s[scores={z_just-ignore=1001..1006}] run function elements:spawn/choose_dimension
execute as @s[scores={elements_death=1..}] run function elements:sonstiges/death

# item click cooldown
execute as @s[scores={elements_custom-items_item-click_cooldown=1..}] run scoreboard players remove @s elements_custom-items_item-click_cooldown 1

