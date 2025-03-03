advancement revoke @s only elements:items/shop/nether/hot_lava

execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=!adventure,predicate=!elements:sneaking,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run fill ~5 ~10 ~5 ~-5 ~ ~-5 air replace stone
execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=!adventure,predicate=elements:sneaking,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run fill ~5 ~10 ~5 ~-5 ~ ~-5 air destroy
execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add @s elements_custom-items_shop_hot-lava_damage_queue 1
execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=!adventure,predicate=!elements:sneaking,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run function elements:custom-items/shop/nether/hot_lava/main

execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=!adventure,nbt={Inventory:[{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1},Slot:-106b}]}] run tellraw @s ["",{"text": "[","color": "white"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "white"},{"text": "Bitte Halte das Item in der Mainhand","color": "red"}]
execute as @a[scores={elements_custom-items_shop_hot-lava_cooldown=0},gamemode=adventure] run tellraw @s ["",{"text": "[","color": "white"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "white"},{"text": "Du kannst das hier nicht verwenden!","color": "red"}]


scoreboard players set @s elements_custom-items_shop_hot-lava_cooldown 2