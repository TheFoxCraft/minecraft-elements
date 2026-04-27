$setblock $(x) $(y) $(z) water

$item modify entity @s weapon.mainhand [{"function": "minecraft:set_lore","entity": "this","lore": [{"text": "$(damage)","extra": [{"text": "/50 Verwendungen","color": "gray","italic": false}],"color": "gray","italic": false}],"mode": "replace_section","offset": 6,"size": 1},{"function": "minecraft:set_components","components": {"minecraft:damage": $(damage)}}]