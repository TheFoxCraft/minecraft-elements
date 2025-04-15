title @s title ["",{"text": "ccc","color": "light_purple","obfuscated": true},{"text": " Lucky Drop ","color": "light_purple"},{"text": "ccc","color": "light_purple","obfuscated": true}]
title @s subtitle ["",{"translate": "elements.main.rarities.epic","color": "dark_purple"}," - ",{"text": "2.000 Level","color": "green"}]
xp add @s 2000 levels
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Lucky Drop! ",{"translate": "elements.main.rarities.epic"}," - ",{"text": "2.000 Level","color": "green"}]
scoreboard players set @s elements_element_shards_music_timer_epic 1