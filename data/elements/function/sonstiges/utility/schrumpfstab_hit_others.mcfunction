advancement revoke @s only elements:utility/schrumpfstab_hit_others
execute on attacker unless score @s elements_mana_mana-count matches 200.. run return fail

execute unless score @s elements_mana_item_schrumpfstab_stufe matches 1 run return fail

execute on attacker run scoreboard players remove @s elements_mana_mana-count 200
tag @s add schrumpfstab_hit_others
execute on attacker at @s run title @s actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Du hast ",{"selector": "@p[tag=schrumpfstab_hit_others]"}," für kurze Zeit geschrumpft!"]
execute on attacker run scoreboard players set @s elements_sonstiges_actionbar_pause 40

attribute @s scale modifier add schrumpfstab_scale -0.95 add_multiplied_total
scoreboard players set @s elements_mana_item_schrumpfstab_hit_others_timer 10
scoreboard players set @s elements_mana_item_schrumpfstab_stufe 2

execute on attacker at @s run title @p[tag=schrumpfstab_hit_others] actionbar ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},"Du wurdest von ",{"selector": "@s"}," für kurze Zeit geschrumpft!"]
scoreboard players set @s elements_sonstiges_actionbar_pause 40

tag @s remove schrumpfstab_hit_others
# normal ist opfer
# on attacker ist angreifer