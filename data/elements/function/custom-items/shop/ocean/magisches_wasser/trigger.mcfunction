advancement revoke @s only elements:items/shop/ocean/magisches_wasser

execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},gamemode=adventure] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Du kannst das hier nicht verwenden!","color": "red"}]
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={Inventory:[{id:"minecraft:potion",Slot:-106b,components:{"minecraft:custom_model_data":13}}]},gamemode=!adventure] run tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Bitte verwende das Item nur in der Mainhand","color": "#ff8800"}]


execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] store result score @s elements_custom-items_shop_magisches-wasser_damage run data get entity @s SelectedItem.components."minecraft:damage"
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] run scoreboard players operation @s elements_custom-items_shop_magisches-wasser_damage += .server elements_fixed-value_1
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] at @s run function elements_retina:traverse/setup
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] store result score @s elements_custom-items_shop_magisches-wasser_is_block if data storage elements_retina:output PlacingPosition
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] store result score @s elements_custom-items_shop_magisches-wasser_distance run data get storage elements_retina:output Distance 100
execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0,elements_custom-items_shop_magisches-wasser_distance=..450,elements_custom-items_shop_magisches-wasser_is_block=1},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] run function elements:custom-items/shop/ocean/magisches_wasser/place_pre
#debug
#execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0,elements_custom-items_shop_magisches-wasser_distance=..450,elements_custom-items_shop_magisches-wasser_is_block=1},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] run say check
#execute as @a[scores={elements_custom-items_shop_magisches-wasser_cooldown=0,elements_custom-items_shop_magisches-wasser_distance=451..,elements_custom-items_shop_magisches-wasser_is_block=0},nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:custom_model_data":13}}},gamemode=!adventure] run say fail




scoreboard players set @s elements_custom-items_shop_magisches-wasser_cooldown 2