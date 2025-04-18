
execute if score .server elements_uniqueitem_bosse_amboesse matches 0 run data modify storage elements_bosse_uniques amboesse.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_amboesse matches 0 run function elements:uniques/trigger/amboesse/pre with storage elements_bosse_uniques amboesse
kill @s