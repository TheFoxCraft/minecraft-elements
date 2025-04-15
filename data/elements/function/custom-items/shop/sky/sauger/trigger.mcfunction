#advancement revoke @s only elements:items/shop/sky/sauger

execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1}}}] at @s run fill ~4 ~9 ~4 ~-4 ~ ~-4 air replace water
execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1}}}] run function elements:custom-items/shop/sky/sauger/main

execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=!adventure,nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1},Slot:-106b}]}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Bitte Halte das Item in der Mainhand","color": "red"}]
execute as @s[scores={elements_custom-items_item-click_cooldown=0},gamemode=adventure,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_model_data":1}}}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "white"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "white"},{"text": "Du kannst das hier nicht verwenden!","color": "red"}]


scoreboard players set @s elements_custom-items_item-click_cooldown 2