
# tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_1.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":1}}}]
item replace entity @s enderchest.9 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["1"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["ersten"],"color": "gray","italic": false}'],custom_model_data=1] 1

# tipp 2
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_2.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":2}}}]
item replace entity @s enderchest.10 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["2"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["zweiten"],"color": "gray","italic": false}'],custom_model_data=2] 1

# tipp 3
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=3]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_3.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":3}}}]
item replace entity @s enderchest.11 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["3"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["dritten"],"color": "gray","italic": false}'],custom_model_data=3] 1

# tipp 4
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_4.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":4}}}]
item replace entity @s enderchest.12 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["4"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["vierten"],"color": "gray","italic": false}'],custom_model_data=4] 1

# tipp 5
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_5.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":5}}}]
item replace entity @s enderchest.13 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["5"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["fünften"],"color": "gray","italic": false}'],custom_model_data=5] 1

# tipp 6
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.tipp_6.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":6}}}]
item replace entity @s enderchest.14 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.tipp.name","with": ["6"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.tipp.description","with": ["sechsten"],"color": "gray","italic": false}'],custom_model_data=6] 1

# lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s flower_banner_pattern[custom_model_data=7]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.stage_4.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:flower_banner_pattern",count:1,components:{"minecraft:custom_model_data":7}}}]
item replace entity @s enderchest.15 with flower_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.solution.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.solution.description","color": "gray","italic": false}'],custom_model_data=7] 1
