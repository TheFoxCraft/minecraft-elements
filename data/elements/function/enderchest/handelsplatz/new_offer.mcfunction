execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless data entity @s EnderItems[{Slot:10b}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless data entity @s EnderItems[{Slot:10b}] run scoreboard players set @s elements_enderchest_handelsplatz_interface 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless data entity @s EnderItems[{Slot:10b}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless data entity @s EnderItems[{Slot:10b}] run scoreboard players set @s elements_enderchest_handelsplatz_page 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless data entity @s EnderItems[{Slot:10b}] run function elements:enderchest/handelsplatz/load
execute as @s[scores={elements_enderchest_interface_clicked=1}] if data entity @s EnderItems[{Slot:10b}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if data entity @s EnderItems[{Slot:10b}] run tellraw @s ["",{"text": "Achtung! Du hast noch ein Item im Trade Slot!","color": "red"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.26 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.11 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.14 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.16 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.22 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1



execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:oak_hanging_sign[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast "},{"translate": "elements.main.tokens.name","with": [{"color": "gold","score": {"name": "@s","objective": "elements_tokens_count"}}]}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"gold","text": "Neues Angebot","italic": false}',lore=['{"text": "Lege dein Item in den Slot und lege einen Preis fest.","color": "gray","italic": false}','""','{"text":"Du musst 10% des Preises als Gebür zum einstellen bezahlen.","color": "gray","italic": false}','""','{"text":"Du kannst auch ganze Stacks verkaufen","color": "gray","italic": false}'],custom_model_data=1] 1

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:copper_ingot[custom_model_data=20]
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_handelsplatz_new_offer_price_fine=..1}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_handelsplatz_new_offer_price_fine=2..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_handelsplatz_new_offer_price_fine=2..}] run scoreboard players remove @s elements_enderchest_handelsplatz_new_offer_price_fine 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players operation @s elements_enderchest_handelsplatz_new_offer_price *= @s elements_enderchest_handelsplatz_new_offer_price_fine
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/new_offer/build_price_buttons
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:1,components:{"minecraft:custom_model_data":20}}}]

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:copper_ingot[custom_model_data=21]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_enderchest_handelsplatz_new_offer_price_fine 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players operation @s elements_enderchest_handelsplatz_new_offer_price *= @s elements_enderchest_handelsplatz_new_offer_price_fine
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/new_offer/build_price_buttons
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:1,components:{"minecraft:custom_model_data":21}}}]


execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:copper_ingot[custom_model_data=22]
execute as @s[scores={elements_enderchest_interface_clicked=1}] store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/new_offer/create_offer with storage elements_getid
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",count:1,components:{"minecraft:custom_model_data":22}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=1}] run item replace entity @s enderchest.15 with copper_ingot[custom_name='{"color":"gold","text": "Angebot veröffentlichen","italic": false}',custom_model_data=22] 1
