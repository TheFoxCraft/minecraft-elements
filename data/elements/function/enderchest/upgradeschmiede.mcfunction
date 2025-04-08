execute as @s[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:magenta_glazed_terracotta[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:12b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:12b}]}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Input-Slot!","color": "red"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Output-Slot!","color": "red"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] run scoreboard players set @s elements_enderchest_interface_number 1
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={EnderItems:[{Slot:12b}]}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] run function elements:enderchest/enderchest-clear
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_glazed_terracotta",count:1,components:{"minecraft:custom_model_data":2}}}]
execute as @s[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] run item replace entity @s enderchest.22 with magenta_glazed_terracotta[custom_name='{"color":"red","translate":"elements.enderchest.zurueck","italic": false}',custom_model_data=2] 1



execute as @s[scores={elements_enderchest_level_upgradeschmiede=1,elements_enderchest_interface_number=3}] store result score @s elements_enderchest_interface_clicked run clear @s minecraft:anvil[custom_model_data=2]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Achtung! Du hast noch ein Item im Output-Slot!","color": "red"}]
execute as @s[scores={elements_enderchest_interface_clicked=1}] if entity @s[nbt={EnderItems:[{Slot:14b}]}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_enderchest_interface_clicked=1}] unless entity @s[nbt={EnderItems:[{Slot:14b}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 3
#open-finish

# |-----------------------------------------ADD HERE-----------------------------------------|


#element pickaxe
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/rare
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_pickaxe/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#element axe
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/rare
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_axe/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#element sword
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/rare
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_sword/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#element armor
#helmet
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_helmet",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_helmet/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_helmet",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels
#chestplate
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_chestplate",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_helmet/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_chestplate",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels
#leggings
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_leggings",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_helmet/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_leggings",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels
#boots
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_boots",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_helmet/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_boots",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels


#photon
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/photon/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -750000 levels

#element fishing-rod
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/rare
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -10000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run loot replace entity @s enderchest.14 loot elements:items/element_fishing_rod/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run xp add @s -750000 levels

#photon
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/epic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run xp add @s -50000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/legendary
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run xp add @s -250000 levels

execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run loot replace entity @s enderchest.14 loot elements:items/customs/gravity-stone/mythic
execute as @s[scores={elements_enderchest_upgradeschmiede_upgrade=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run xp add @s -750000 levels

# |-----------------------------------------\ADD HERE END-----------------------------------------|


#close-finish
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_upgradeschmiede_upgrade=3}] run function elements:enderchest/upgradeschmiede_copy_data
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_upgradeschmiede_upgrade=3}] run item replace entity @s enderchest.12 with air
execute as @s[scores={elements_enderchest_interface_clicked=1,elements_enderchest_upgradeschmiede_upgrade=3}] at @s run playsound minecraft:block.anvil.use master @s
execute as @s[scores={elements_enderchest_interface_clicked=1}] run scoreboard players set @s elements_enderchest_interface_clicked 0



scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 0


# |-----------------------------------------ADD HERE-----------------------------------------|

#element pickaxe
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_pickaxe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_pickaxe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element axe
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_axe",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_axe",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element sword
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:iron_sword",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:diamond_sword",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element armor
#helmet
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_helmet",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_helmet",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4
#chestplate
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_chestplate",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_chestplate",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4
#leggings
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_leggings",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_leggings",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4
#boots
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_boots",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:netherite_boots",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4


#photon
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:ghast_tear",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#element fishing-rod
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:fishing_rod",components:{"minecraft:custom_model_data":4}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

#gravity stone
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":1}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 2
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":2}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 3
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 1
execute as @s[scores={elements_enderchest_interface_number=3},nbt={EnderItems:[{Slot:12b,id:"minecraft:gray_dye",components:{"minecraft:custom_model_data":3}}]}] run scoreboard players set @s elements_enderchest_upgradeschmiede_level 4

# |-----------------------------------------\ADD HERE END-----------------------------------------|

execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=1,elements_mainlevel=10000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=2,elements_mainlevel=50000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=3,elements_mainlevel=250000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2
execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_level=4,elements_mainlevel=750000..,elements_enderchest_upgradeschmiede_upgrade=1}] run scoreboard players set @s elements_enderchest_upgradeschmiede_upgrade 2


execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=0}] run item replace entity @s enderchest.13 with damaged_anvil[custom_name='{"color":"red","strikethrough":true,"text":"Upgrade!","italic": false}',lore=['{"color":"red","text":"Ungültiges Item!","italic": false}'],custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=1}] run item replace entity @s enderchest.13 with chipped_anvil[custom_name='{"color":"red","strikethrough":true,"text":"Upgrade!","italic": false}',lore=['{"color":"red","text":"Zu wenig Level!","italic": false}'],custom_model_data=1] 1
execute as @s[scores={elements_enderchest_interface_number=3,elements_enderchest_upgradeschmiede_upgrade=2}] run item replace entity @s enderchest.13 with anvil[custom_name='{"color":"gold","text":"Upgrade!","italic": false}',custom_model_data=2] 1
clear @s minecraft:damaged_anvil[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:damaged_anvil",count:1,components:{"minecraft:custom_model_data":1}}}]
clear @s minecraft:chipped_anvil[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:chipped_anvil",count:1,components:{"minecraft:custom_model_data":1}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":2}}}]





clear @s minecraft:blue_stained_glass_pane[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_stained_glass_pane",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.0 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.1 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.2 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.3 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.5 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.6 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.7 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.8 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.9 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.10 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.11 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.15 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.16 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.17 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.18 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.19 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.20 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.21 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.23 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.24 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.25 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.26 with blue_stained_glass_pane[custom_name='{"translate":"elements.main.other.space"}',custom_model_data=1,hide_tooltip={}] 1
clear @s minecraft:oak_hanging_sign[custom_model_data=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_hanging_sign",count:1,components:{"minecraft:custom_model_data":1}}}]
execute as @s[scores={elements_enderchest_interface_number=3}] run item replace entity @s enderchest.4 with oak_hanging_sign[custom_name='{"color":"blue","text":"Upgrade-Station Info:","italic": false}',lore=['{"text":"Element Equipment Upgrades:","italic": false}','{"translate":"elements.main.other.space"}','[{"bold":true,"color":"blue","text":"Rare:            ","italic": false},{"bold":false,"color":"green","text":"10.000 Level","italic": false}]','[{"bold":true,"color":"dark_purple","text":"Epic:             ","italic": false},{"bold":false,"color":"green","text":"50.000 Level","italic": false}]','[{"bold":true,"color":"gold","text":"Legendary:    ","italic": false},{"bold":false,"color":"green","text":"250.000 Level","italic": false}]','[{"bold":true,"color":"light_purple","text":"Mythic:         ","italic": false},{"bold":false,"color":"green","text":"750.000 Level","italic": false}]'],custom_model_data=1] 1