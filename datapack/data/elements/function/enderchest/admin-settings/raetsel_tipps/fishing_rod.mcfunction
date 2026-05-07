
# Introduction Tipp
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=1]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.introduction.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":1}}}]
item replace entity @s enderchest.9 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.introduction.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=1] 1


# string tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.string.tipp.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":2}}}]
item replace entity @s enderchest.10 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.string.tipp.name","with": ["1"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=2] 1

# string finale Lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=3]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.string.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":3}}}]
item replace entity @s enderchest.11 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.string.solution.name","with": ["2"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=3] 1


# Sticks tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=4]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.sticks.tipp.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":4}}}]
item replace entity @s enderchest.12 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.sticks.tipp.name","with": ["3"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=4] 1

# Sticks Finale Lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=5]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.sticks.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":5}}}]
item replace entity @s enderchest.13 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.sticks.solution.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=5] 1


# Hook tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=6]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.hook.tipp.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":6}}}]
item replace entity @s enderchest.14 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.hook.tipp.name","with": ["3"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=6] 1

# Hook Finale Lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=7]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.hook.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":7}}}]
item replace entity @s enderchest.15 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.hook.solution.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=7] 1


# Finales Crafting tipp 1
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=8]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.crafting.tipp.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":8}}}]
item replace entity @s enderchest.16 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.crafting.tipp.name","with": ["3"],"italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=8] 1

# Finales Crafting Finale Lösung
execute store result score @s elements_enderchest_interface_clicked run clear @s globe_banner_pattern[custom_model_data=9]
execute as @s[scores={elements_enderchest_interface_clicked=1}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] run tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.crafting.solution.message"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:globe_banner_pattern",count:1,components:{"minecraft:custom_model_data":9}}}]
item replace entity @s enderchest.17 with globe_banner_pattern[custom_name='{"color":"gold","translate": "elements.enderchest.admin_settings.tipps.fishing_rod.crafting.solution.name","italic": false}',lore=['{"translate": "elements.enderchest.admin_settings.tipps.fishing_rod.description","color": "gray","italic": false}'],custom_model_data=9] 1
