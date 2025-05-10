
execute if score .server elements_uniqueitem_bosse_runans_bow matches 0 run data modify storage elements_bosse_uniques runans_bow.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_runans_bow matches 0 run function elements:uniques/trigger/runans_bow/pre with storage elements_bosse_uniques runans_bow
kill @s