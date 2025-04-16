#main
execute as @a run attribute @s luck modifier remove wanderlachs_luck
execute as @a[nbt={Inventory:[{id:"minecraft:salmon",components:{"minecraft:custom_model_data":2}}]}] run attribute @s luck modifier add wanderlachs_luck 100 add_value

execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Es wurde bei dir Im Handelsmarkt eingekauft!"},{"text": " +","color": "gold"},{"score": {"name": "@s","objective": "elements_enderchest_handelsplatz_tokens_to_give"},"color": "gold"},{"text": " Token!","color": "gold"}]
execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run scoreboard players operation @s elements_tokens_count += @s elements_enderchest_handelsplatz_tokens_to_give
execute as @a[scores={elements_enderchest_handelsplatz_tokens_to_give=1..}] run scoreboard players set @s elements_enderchest_handelsplatz_tokens_to_give 0