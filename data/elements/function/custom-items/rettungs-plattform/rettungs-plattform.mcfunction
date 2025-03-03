advancement revoke @s only elements:rettungs-plattform
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] store result score @s elements_custom-items_shop_rettungs-plattform_damage run data get entity @s SelectedItem.components.minecraft:damage
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] run scoreboard players set @s elements_custom-items_shop_rettungs-plattform_cooldown_show 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] run scoreboard players add @s elements_custom-items_shop_rettungs-plattform_damage 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] store result score @s elements_custom-items_shop_rettungs-plattform_block-count if blocks ~3 ~-1 ~3 ~-3 ~-1 ~-3 ~-3 ~-1 ~-3 masked
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] run scoreboard players set @s elements_custom-items_shop_rettungs-plattform_block-need 49
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] run scoreboard players operation @r elements_custom-items_shop_rettungs-plattform_block-need -= @s elements_custom-items_shop_rettungs-plattform_block-count
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}},scores={elements_custom-items_shop_rettungs-plattform_cooldown=0}] run function elements:custom-items/rettungs-plattform/rettungs-plattform-blockplace with entity @s Inventory[{Slot:-106b}]

execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pressure_plate",components:{"minecraft:custom_model_data":1}}}] run scoreboard players set @s elements_custom-items_shop_rettungs-plattform_cooldown 2



