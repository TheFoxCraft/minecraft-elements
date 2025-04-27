function elements:mana/regeneration
function elements:mana/main

function elements:custom-items/shop/ocean/bossfrucht/main_handling

#get login
execute as @s[scores={elements_get-login=1..}] run function elements:sonstiges/on_login
execute as @s[scores={elements_get-login=1..}] run scoreboard players set @s elements_get-login 0

execute as @s[nbt={SelectedItem:{id:"minecraft:bone"}}] run item modify entity @s weapon.mainhand {function:"set_components",components:{food:{nutrition:0,saturation:0,can_always_eat:true},consumable:{consume_seconds:99999}}}

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
function elements:sonstiges/set_max-health with storage elements_get_data
scoreboard players operation @s elements_maxhealth_old = @s elements_maxhealth
