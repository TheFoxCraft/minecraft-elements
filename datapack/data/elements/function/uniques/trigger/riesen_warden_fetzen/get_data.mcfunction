
execute if score .server elements_uniqueitem_bosse_riesen_warden_fetzen matches 0 run data modify storage elements_bosse_uniques riesen_warden_fetzen.UUID set from block ~ ~ ~ server_data.rewarded_players[0]
execute if score .server elements_uniqueitem_bosse_riesen_warden_fetzen matches 0 run function elements:uniques/trigger/riesen_warden_fetzen/pre with storage elements_bosse_uniques riesen_warden_fetzen
kill @s