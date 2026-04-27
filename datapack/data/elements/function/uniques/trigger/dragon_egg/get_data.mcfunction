
execute if score .server elements_uniqueitem_bosse_dragon_egg matches 0 run data modify storage elements_bosse_uniques dragon_egg.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_dragon_egg matches 0 run function elements:uniques/trigger/dragon_egg/pre with storage elements_bosse_uniques dragon_egg
kill @s