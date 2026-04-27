function elements:mana/regeneration
function elements:mana/main

function elements:custom-items/shop/ocean/bossfrucht/main_handling

#get login
execute as @s[scores={elements_get-login=1..}] run function elements:sonstiges/on_login
execute as @s[scores={elements_get-login=1..}] run scoreboard players set @s elements_get-login 0

execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] run item modify entity @s weapon.mainhand {function:"set_components",components:{food:{nutrition:0,saturation:0,can_always_eat:true},consumable:{consume_seconds:99999}}}
execute as @s[nbt={SelectedItem:{id:"minecraft:melon"}}] run item modify entity @s weapon.mainhand {function:"set_components","components":{"attribute_modifiers": {"show_in_tooltip": false,"modifiers": [{"amount": -1,"id": "stage_5_melon","operation": "add_multiplied_base","type": "block_interaction_range","slot": "any"}]}}}


execute as @s[tag=!elements_boss_spectator] run scoreboard players reset @s leave

execute as @s[scores={elements_mana_item_schrumpfstab_hit_others_timer=1}] run attribute @s scale modifier remove schrumpfstab_scale
execute as @s[scores={elements_mana_item_schrumpfstab_hit_others_timer=1}] run scoreboard players set @s elements_mana_item_schrumpfstab_stufe 1
execute as @s[scores={elements_mana_item_schrumpfstab_hit_others_timer=1..}] run scoreboard players remove @s elements_mana_item_schrumpfstab_hit_others_timer 1


#früchte
execute if score @s elements_custom-items_shop_mining-frucht_enable matches 1 run function elements:custom-items/mining-frucht/timer
execute if score @s elements_custom-items_shop_foraging-frucht_enable matches 1 run function elements:custom-items/foraging-frucht/timer
execute if score @s elements_custom-items_shop_farming-frucht_enable matches 1 run function elements:custom-items/farming-frucht/timer
execute if score @s elements_custom-items_shop_fishing-frucht_enable matches 1 run function elements:custom-items/fishing-frucht/timer
execute if score @s elements_custom-items_shop_luck-potion_enable matches 1 run function elements:custom-items/shop/ocean/luck-potion/timer
execute if score @s elements_custom-items_shop_leveltrank_enable matches 1 run function elements:custom-items/shop/stone/leveltrank/timer
execute if score @s elements_custom-items_shop_hastetrank_enable matches 1 run function elements:custom-items/shop/stone/hastetrank/timer
execute if score @s elements_custom-items_shop_water-breathing_enable matches 1 run function elements:custom-items/shop/ocean/water-breathing/timer


#herzenmanagement
execute unless score @s elements_maxhealth = @s elements_maxhealth_old store result storage elements_get_data maxhealth int 1 run scoreboard players get @s elements_maxhealth
execute unless score @s elements_maxhealth = @s elements_maxhealth_old store result storage elements_get_data maxhealth int 1 run function elements:sonstiges/set_max-health with storage elements_get_data
scoreboard players operation @s elements_maxhealth_old = @s elements_maxhealth


scoreboard players enable @s z_fix_Enderchest
execute as @a[scores={z_fix_Enderchest=1..}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Enderchest neu Berechnet!"]
execute as @a[scores={z_fix_Enderchest=1..}] run function elements:sonstiges/enderchest_return_after_close/main
execute as @a[scores={z_fix_Enderchest=1..}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @a[scores={z_fix_Enderchest=1..}] run scoreboard players set @s elements_enderchest_interface_number_old -1
execute as @a[scores={z_fix_Enderchest=1..}] run scoreboard players set @s z_fix_Enderchest 0


#kaktus koenig abfall
#trigger
execute if score .server elements_uniqueitem_other_kaktus_koenig_abfall matches 0 if score @s elements_mainlevel matches 1000000.. run function elements:uniques/trigger/kaktus_koenig_abfall
# function
execute if entity @s[nbt={Inventory:[{id:"minecraft:green_dye",components:{"minecraft:custom_model_data":1}}]}] if predicate elements:50_50 run xp add @s 1 levels