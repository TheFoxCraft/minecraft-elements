scoreboard players add @a elements_mana_regeneration_timer 1
execute as @a[scores={elements_mana_regeneration_timer=20..}] if score @s elements_mana_mana-count < @s elements_mana_mana-max run scoreboard players operation @s elements_mana_mana-count += @s elements_mana_regeneration-per-sec
execute as @a[scores={elements_mana_regeneration_timer=20..}] run scoreboard players remove @s elements_mana_regeneration_timer 20
execute as @a if score @s elements_mana_mana-count > @s elements_mana_mana-max run scoreboard players operation @s elements_mana_mana-count = @s elements_mana_mana-max