
execute if score .server elements_uniqueitem_bosse_taubenkacke matches 0 run data modify storage elements_bosse_uniques taubenkacke.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_taubenkacke matches 0 run function elements:uniques/trigger/taubenkacke/pre with storage elements_bosse_uniques taubenkacke
kill @s