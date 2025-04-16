execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["handelsmarkt_buy"],Invulnerable:1b,Silent:1b}

item replace entity @n[type=armor_stand,tag=handelsmarkt_buy] weapon.mainhand from entity @s player.cursor

execute store result storage elements_handelsmarkt_offers Buy.Item_ID int 1 run data get entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:custom_data".ID
function elements:enderchest/handelsplatz/buy/get_price with storage elements_handelsmarkt_offers Buy

execute if score @s elements_tokens_count < @s elements_enderchest_handelsplatz_buy_price run return run function elements:enderchest/handelsplatz/buy/not_enough_tokens

#give tokens
execute store result storage elements_handelsmarkt_offers Buy.Item_ID int 1 run data get entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:custom_data".ID
function elements:enderchest/handelsplatz/buy/give_tokens_pre with storage elements_handelsmarkt_offers Buy

#remove from database
execute store result storage elements_handelsmarkt_offers Buy.Item_ID int 1 run data get entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:custom_data".ID
function elements:enderchest/handelsplatz/buy/remove_from_database with storage elements_handelsmarkt_offers Buy


scoreboard players operation @s elements_tokens_count -= @s elements_enderchest_handelsplatz_buy_price
tellraw @s ["",{"translate":"elements.main.other.[","color": "gray"},{"translate":"elements.main.other.elements","color": "light_purple"},{"translate":"elements.main.other.]","color": "gray"},{"text": "Gekauft! ("},{"score": {"name": "@s","objective": "elements_enderchest_handelsplatz_buy_price"}},{"text": " Token)"}]
# repair item
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:lore".[-1]
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:lore".[-1]
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:lore".[-1]
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:lore".[-1]
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:lore".[-1]
data remove entity @n[type=armor_stand,tag=handelsmarkt_buy] HandItems[0].components."minecraft:custom_data"
item replace entity @s player.cursor from entity @n[type=armor_stand,tag=handelsmarkt_buy] weapon.mainhand



scoreboard players set @a elements_enderchest_handelsplatz_reload_offers 1
execute at @s run kill @n[type=armor_stand,tag=handelsmarkt_buy]