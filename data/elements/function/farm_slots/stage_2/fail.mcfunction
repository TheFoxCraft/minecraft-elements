
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Dein Farmslot konnte nicht erkannt werden, bitte versuche es nochmal.","color": "red"}]
execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace spruce_sapling

function elements:sonstiges/savely_give_loot {id:"elements:items/farm_slots/stage_2"}

execute as @s at @s as @e[type=marker,distance=..15,tag=elements_farm-slot_stage-2] at @s if block ~ ~ ~ air if block ~ ~-1 ~ #dirt run setblock ~ ~ ~ spruce_sapling