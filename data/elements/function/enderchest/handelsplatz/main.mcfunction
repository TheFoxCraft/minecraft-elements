execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.8 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1


execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:name_tag[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if items entity @s enderchest.0 * run item replace entity @s player.cursor from entity @s enderchest.0
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_interface 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price 100
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_handelsplatz_new_offer_price_fine 10
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/new_offer/build_price_buttons
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:name_tag",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.0 with name_tag[custom_name='{"color":"gold","text": "Neues Angebot","italic": false}',custom_model_data=1] 1

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:oak_hanging_sign[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast "},{"translate": "elements.main.tokens.name","with": [{"color": "gold","score": {"name": "@s","objective": "elements_tokens_count"}}]}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:oak_hanging_sign",Slot:3b,components:{"minecraft:custom_model_data":1}}]}] run function elements:enderchest/handelsplatz/stats

execute as @s[scores={elements_enderchest_interface_number=10}] run clear @s minecraft:blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.4 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1

# pages
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:player_head[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page >= .server elements_enderchest_handelsplatz_page_count at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page < .server elements_enderchest_handelsplatz_page_count at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page < .server elements_enderchest_handelsplatz_page_count run scoreboard players add @s elements_enderchest_handelsplatz_page 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/load
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page < .server elements_enderchest_handelsplatz_page_count run item replace entity @s enderchest.6 with minecraft:player_head[minecraft:custom_name='{"text":"Nächste Seite","color":"gold","italic":false}',profile={id:[I;-720120218,160580295,-1700338408,-1472328904],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTliZjMyOTJlMTI2YTEwNWI1NGViYTcxM2FhMWIxNTJkNTQxYTFkODkzODgyOWM1NjM2NGQxNzhlZDIyYmYifX19"}]},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page >= .server elements_enderchest_handelsplatz_page_count run item replace entity @s enderchest.6 with minecraft:player_head[minecraft:custom_name='{"text":"Nächste Seite","color":"gray","italic":false}',profile={id:[I;-720120218,160580295,-1700338408,-1472328904],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTliZjMyOTJlMTI2YTEwNWI1NGViYTcxM2FhMWIxNTJkNTQxYTFkODkzODgyOWM1NjM2NGQxNzhlZDIyYmYifX19"}]},custom_model_data=1] 1


execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:player_head[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page matches 0 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page matches 1.. at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] if score @s elements_enderchest_handelsplatz_page matches 1.. run scoreboard players remove @s elements_enderchest_handelsplatz_page 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/handelsplatz/load
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page matches 1.. run item replace entity @s enderchest.5 with minecraft:player_head[minecraft:custom_name='{"text":"Vorherige Seite","color":"gold","italic":false}',profile={id:[I;596759859,-1425456307,-1719620177,-566208605],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ2OWUwNmU1ZGFkZmQ4NGU1ZjNkMWMyMTA2M2YyNTUzYjJmYTk0NWVlMWQ0ZDcxNTJmZGM1NDI1YmMxMmE5In19fQ=="}]},custom_model_data=2] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page matches 0 run item replace entity @s enderchest.5 with minecraft:player_head[minecraft:custom_name='{"text":"Vorherige Seite","color":"gray","italic":false}',profile={id:[I;596759859,-1425456307,-1719620177,-566208605],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ2OWUwNmU1ZGFkZmQ4NGU1ZjNkMWMyMTA2M2YyNTUzYjJmYTk0NWVlMWQ0ZDcxNTJmZGM1NDI1YmMxMmE5In19fQ=="}]},custom_model_data=2] 1

#buy
execute store success score @s elements_enderchest_handelsplatz_buy run clear @s *[custom_data~{handelsmarkt_item:true}] 0
execute as @s[scores={elements_enderchest_handelsplatz_buy=1}] run function elements:enderchest/handelsplatz/buy/main
clear @s *[custom_data~{handelsmarkt_item:true}]







#interfaces
# 0: Main
# 1: New Offer
execute as @s[scores={elements_enderchest_handelsplatz_interface=1}] run function elements:enderchest/handelsplatz/new_offer