execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] run item replace entity @s enderchest.22 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=1] 1



execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:red_dye[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_autocompactor 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:stone[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_autocompactor 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:spruce_log[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_autocompactor 2
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_autocompact=3..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:weeping_vines[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_autocompactor 3
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_autocompact=4..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:sweet_berries[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_autocompactor 4
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0

execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:composter[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players add @s elements_autorecycler 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless score @s elements_autorecycler matches 1..2 run scoreboard players set @s elements_autorecycler 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0


execute as @s[scores={elements_enderchest_interface_number=2}] unless score .server elements_abgabe_other_recycler matches 2 run item replace entity @s enderchest.4 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] if score .server elements_abgabe_other_recycler matches 2 unless score @s elements_autorecycler matches 1 run item replace entity @s enderchest.4 with composter[custom_name='{"color":"red","text":"Auto-Recycler","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}','""','{"text": "Recycelt autmatisch die Unten ausgewählte Ressource.","color": "gray","italic": false}','{"text": "Gibt allerdings keine Token","color": "gray","italic": false}'],custom_model_data=2] 1
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] if score .server elements_abgabe_other_recycler matches 2 if score @s elements_autorecycler matches 1 run item replace entity @s enderchest.4 with composter[custom_name='{"color":"green","text":"Auto-Recycler","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}','""','{"text": "Recycelt autmatisch die Unten ausgewählte Ressource.","color": "gray","italic": false}','{"text": "Gibt allerdings keine Token","color": "gray","italic": false}'],custom_model_data=2,enchantment_glint_override=true] 1


kill @e[type=item,nbt={Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:spruce_log",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:weeping_vines",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:sweet_berries",count:1,components:{"minecraft:custom_model_data":2}}}]


execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] unless score @s elements_autocompactor matches 1 run item replace entity @s enderchest.9 with stone[custom_name='{"color":"red","text":"Stone Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=1] 1
execute as @s[scores={elements_enderchest_level_autocompact=1..,elements_enderchest_interface_number=2}] if score @s elements_autocompactor matches 1 run item replace entity @s enderchest.9 with red_dye[custom_name='{"color":"green","text":"Stone Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1

execute as @s[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2}] unless score @s elements_autocompactor matches 2 run item replace entity @s enderchest.10 with spruce_log[custom_name='{"color":"red","text":"Holz Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=1] 1
execute as @s[scores={elements_enderchest_level_autocompact=2..,elements_enderchest_interface_number=2}] if score @s elements_autocompactor matches 2 run item replace entity @s enderchest.10 with red_dye[custom_name='{"color":"green","text":"Holz Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1

execute as @s[scores={elements_enderchest_level_autocompact=3..,elements_enderchest_interface_number=2}] unless score @s elements_autocompactor matches 3 run item replace entity @s enderchest.11 with weeping_vines[custom_name='{"color":"red","text":"Weeping Vines Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=1] 1
execute as @s[scores={elements_enderchest_level_autocompact=3..,elements_enderchest_interface_number=2}] if score @s elements_autocompactor matches 3 run item replace entity @s enderchest.11 with red_dye[custom_name='{"color":"green","text":"Weeping Vines Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1

execute as @s[scores={elements_enderchest_level_autocompact=4..,elements_enderchest_interface_number=2}] unless score @s elements_autocompactor matches 4 run item replace entity @s enderchest.12 with sweet_berries[custom_name='{"color":"red","text":"Sweet Berries Auto-Compactor","italic": false}',lore=['{"color":"green","text":"Klicke zum Aktivieren","italic": false}'],custom_model_data=2] 1
execute as @s[scores={elements_enderchest_level_autocompact=4..,elements_enderchest_interface_number=2}] if score @s elements_autocompactor matches 4 run item replace entity @s enderchest.12 with red_dye[custom_name='{"color":"green","text":"Sweet Berries Auto-Compactor","italic": false}',lore=['{"color":"red","text":"Klicke zum Deaktivieren","italic": false}'],custom_model_data=1] 1



clear @s minecraft:black_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.0 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.1 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.2 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.3 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.5 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.6 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.7 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.8 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.18 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.19 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.20 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.21 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.23 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.24 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.25 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=2}] run item replace entity @s enderchest.26 with black_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1

