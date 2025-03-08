
tellraw @s ["",{"text": "[","color": "gray"},{"text": "Elements","color": "light_purple"},{"text": "] ","color": "gray"},{"text": "Dein Farmslot konnte nicht erkannt werden, bitte versuche es nochmal.","color": "red"}]
execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace spruce_sapling

loot give @s loot elements:items/farm_slots/stage_2

execute as @s at @s as @e[type=marker,distance=..15,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air run setblock ~ ~ ~ spruce_sapling