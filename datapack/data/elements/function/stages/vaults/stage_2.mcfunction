execute in elements:hub positioned 57 100 9 if data block ~ ~ ~ server_data.rewarded_players as @e[type=item,distance=..2,nbt={Item:{components:{"minecraft:custom_data":{"vault_loot_needs_owner":1b}}}}] run data modify entity @s Owner set from block ~ ~ ~ server_data.rewarded_players[0]
tag @s add gravity_stone_ignore
data remove entity @s Item.components."minecraft:custom_data"