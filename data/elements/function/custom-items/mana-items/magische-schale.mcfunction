advancement revoke @s only elements:mana-items/magische-schale

execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=..99}] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=..99}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=..99}] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Du hast keine 100 Mana","color": "red"},{"text": " (Aktuell: ","color": "red"},{"score": {"name": "@s","objective": "elements_mana_mana-count"},"color": "red"},{"text": ")","color": "red"}]
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=100..}] at @s run playsound entity.generic.eat master @s ~ ~ ~ 100 1
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=100..}] run scoreboard players set @s elements_sonstiges_actionbar_pause 20
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=100..}] run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "100 Mana verbraucht (Jetzt: "},{"score": {"name": "@s","objective": "elements_mana_mana-count"}},{"text": ")"}]
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=100..}] run effect give @s saturation 2 255 true
execute as @s[scores={elements_mana_item_magische-schale_cooldown=0,elements_mana_mana-count=100..}] run scoreboard players remove @s elements_mana_mana-count 100

scoreboard players set @s elements_mana_item_magische-schale_cooldown 2