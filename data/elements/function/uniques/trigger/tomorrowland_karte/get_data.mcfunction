
execute if score .server elements_uniqueitem_bosse_tomorrowland_karte matches 0 run data modify storage elements_bosse_uniques tomorrowland_karte.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_tomorrowland_karte matches 0 run function elements:uniques/trigger/tomorrowland_karte/pre with storage elements_bosse_uniques tomorrowland_karte
kill @s