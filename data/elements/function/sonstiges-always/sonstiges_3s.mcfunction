# No Too-Expensive
execute as @e[type=item,nbt={OnGround:1b}] store success score @s elements_sonstiges_no-too-expensive_success run data remove entity @s Item.components."minecraft:repair_cost"
execute as @e[type=item,scores={elements_sonstiges_no-too-expensive_success=1}] at @s run tellraw @a[distance=..5] ["",{"text":"[","color":"gray"},{"text":"Elements","color":"light_purple"},{"text":"] ","color":"gray"},{"text":"Deinem Item ","color":"white"},{"selector": "@s","color": "yellow"},{"text":" wurde die Repair-Cost erfolgreich resettet!","color":"white"}]


