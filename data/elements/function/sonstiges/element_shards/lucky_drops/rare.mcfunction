title @s title ["",{"text": "ccc","color": "light_purple","obfuscated": true},{"text": " Lucky Drop ","color": "light_purple"},{"text": "ccc","color": "light_purple","obfuscated": true}]
title @s subtitle ["",{"translate": "elements.main.rarities.rare","color": "dark_blue"}," - ",{"text": "500 Level","color": "green"}]
xp add @s 500 levels
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Lucky Drop! ",{"translate": "elements.main.rarities.rare"}," - ",{"text": "500 Level","color": "green"}]
execute at @s run playsound elements:luckydrop.rare