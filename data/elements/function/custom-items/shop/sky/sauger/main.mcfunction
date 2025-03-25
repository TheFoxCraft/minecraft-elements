execute as @s store result score @s elements_custom-items_shop_sauger_damage run data get entity @s SelectedItem.components.minecraft:damage
execute as @s run scoreboard players operation @s elements_custom-items_shop_sauger_damage += .server elements_fixed-value_1
execute as @s[scores={elements_custom-items_shop_sauger_damage=..49}] store result storage elements_custom-items_shop_sauger_damage damage int 1 run scoreboard players get @s elements_custom-items_shop_sauger_damage
execute as @s[scores={elements_custom-items_shop_sauger_damage=..49}] run function elements:custom-items/shop/sky/sauger/set_damage with storage elements_custom-items_shop_sauger_damage
execute as @s[scores={elements_custom-items_shop_sauger_damage=..49}] at @s run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 100 2
execute as @s[scores={elements_custom-items_shop_sauger_damage=50..}] at @s run playsound entity.item.break
execute as @s[scores={elements_custom-items_shop_sauger_damage=50..}] run item replace entity @s weapon.mainhand with air


