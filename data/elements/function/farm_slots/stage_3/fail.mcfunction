
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Dein Farmslot konnte nicht erkannt werden, bitte versuche es nochmal.","color": "red"}]
execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace nether_wart_block

loot give @s loot elements:items/compressed/crimson_vines

