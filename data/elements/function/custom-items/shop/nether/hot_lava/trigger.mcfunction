advancement revoke @s only elements:items/shop/nether/hot_lava

execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run fill ~5 ~10 ~5 ~-5 ~ ~-5 air replace stone
execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run scoreboard players add @s elements_custom-items_shop_hot-lava_damage_queue 1
execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1}}}] run function elements:custom-items/shop/nether/hot_lava/main

execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={Inventory:[{id:"minecraft:magma_block",components:{"minecraft:custom_model_data":1},Slot:-106b}]}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Bitte Halte das Item in der Mainhand","color": "red"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=adventure] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Du kannst das hier nicht verwenden!","color": "red"}]


scoreboard players set @s elements_custom-items_item-click_cooldown 2