execute at @s run summon armor_stand ~ ~ ~ {Tags:["elements_upgradeschmiede_copy_data"],Invisible:1b,Invulnerable:1b}
execute at @s run item replace entity @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data] weapon.mainhand from entity @s enderchest.12
execute at @s run item replace entity @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data] weapon.offhand from entity @s enderchest.14
execute at @s run data modify entity @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data] HandItems[1].components."minecraft:enchantments" set from entity @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data] HandItems[0].components."minecraft:enchantments"
execute at @s run item replace entity @s enderchest.14 from entity @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data] weapon.offhand
execute at @s run kill @n[type=armor_stand,tag=elements_upgradeschmiede_copy_data]