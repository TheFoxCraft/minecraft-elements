execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.8 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1


execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:name_tag[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run say neu
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:name_tag",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.0 with name_tag[custom_name='{"color":"gold","text": "Neues Angebot","italic": false}',custom_model_data=1] 1

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:oak_hanging_sign[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast "},{"translate": "elements.main.tokens.name","with": [{"color": "gold","score": {"name": "@s","objective": "elements_tokens_count"}}]}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.3 with oak_hanging_sign[custom_name='{"color":"gold","text": "Handelsplatz","italic": false}',lore=['{"text": "Du kannst hier eigene Items verkaufen,","color": "gray","italic": false}','{"text":"oder die Items der anderen Kaufen.","color": "gray","italic": false}','""','{"text":"Um dein Eigenes Item zu verkaufen klicke auf \\"Neues Angebot\\",","color": "gray","italic": false}','{"text":"lege dort dein Item in den Slot und lege einen Preis fest.","color": "gray","italic": false}','{"text":"Du musst 10% des Preises als Gebühr bezahlen.","color": "gray","italic": false}','""','{"text":"Zum Kaufen klicke dich einfach durch die Seiten","color": "gray","italic": false}','{"text":"Angebote für die du genügend Tokens hast kannst du mit einem Klick kaufen.","color": "gray","italic": false}'],custom_model_data=1] 1

execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run clear @s minecraft:blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.4 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[hide_tooltip={},custom_model_data=1] 1

# pages
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:player_head[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run say Nächste Seite
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page < .server elements_enderchest_handelsplatz_page_count run item replace entity @s enderchest.6 with minecraft:player_head[minecraft:custom_name='{"text":"Nächste Seite","color":"gold","italic":false}',profile={id:[I;-720120218,160580295,-1700338408,-1472328904],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTliZjMyOTJlMTI2YTEwNWI1NGViYTcxM2FhMWIxNTJkNTQxYTFkODkzODgyOWM1NjM2NGQxNzhlZDIyYmYifX19"}]},custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page >= .server elements_enderchest_handelsplatz_page_count run item replace entity @s enderchest.6 with minecraft:player_head[minecraft:custom_name='{"text":"Nächste Seite","color":"gray","italic":false}',profile={id:[I;-720120218,160580295,-1700338408,-1472328904],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTliZjMyOTJlMTI2YTEwNWI1NGViYTcxM2FhMWIxNTJkNTQxYTFkODkzODgyOWM1NjM2NGQxNzhlZDIyYmYifX19"}]},custom_model_data=1] 1


execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:player_head[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run say Vorherige Seite
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page matches 1.. run item replace entity @s enderchest.5 with minecraft:player_head[minecraft:custom_name='{"text":"Vorherige Seite","color":"gold","italic":false}',profile={id:[I;596759859,-1425456307,-1719620177,-566208605],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ2OWUwNmU1ZGFkZmQ4NGU1ZjNkMWMyMTA2M2YyNTUzYjJmYTk0NWVlMWQ0ZDcxNTJmZGM1NDI1YmMxMmE5In19fQ=="}]},custom_model_data=2] 1
execute as @s[scores={elements_enderchest_interface_number=10,elements_enderchest_handelsplatz_interface=0}] if score @s elements_enderchest_handelsplatz_page matches 0 run item replace entity @s enderchest.5 with minecraft:player_head[minecraft:custom_name='{"text":"Vorherige Seite","color":"gray","italic":false}',profile={id:[I;596759859,-1425456307,-1719620177,-566208605],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ2OWUwNmU1ZGFkZmQ4NGU1ZjNkMWMyMTA2M2YyNTUzYjJmYTk0NWVlMWQ0ZDcxNTJmZGM1NDI1YmMxMmE5In19fQ=="}]},custom_model_data=2] 1
