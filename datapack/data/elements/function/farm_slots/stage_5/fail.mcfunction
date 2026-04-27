
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Dein Farmslot konnte nicht erkannt werden, bitte versuche es nochmal.","color": "red"}]
execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace green_wool

function elements:sonstiges/savely_give_loot {id:"elements:items/compressed/melon"}

