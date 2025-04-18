execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Eine Neue Stage hat begonnen, du hattest allerdings noch Bossfrüchte aus der Alten Stage übrig, die jetzt nicht mehr gültig sind. Als Ausgleich wurden dir 30 Level pro Frucht gegeben.","color":"red"}]
execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tag @s add elements_recycle_boss-frucht_stage-1
execute as @a if score .server elements_stage matches 2 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run scoreboard players operation @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage

execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 3 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Eine Neue Stage hat begonnen, du hattest allerdings noch Bossfrüchte aus der Alten Stage übrig, die jetzt nicht mehr gültig sind. Als Ausgleich wurden dir 300 Level pro Frucht gegeben.","color":"red"}]
execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 3 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tag @s add elements_recycle_boss-frucht_stage-2
execute as @a if score .server elements_stage matches 3 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run scoreboard players operation @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage

execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 4 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Eine Neue Stage hat begonnen, du hattest allerdings noch Bossfrüchte aus der Alten Stage übrig, die jetzt nicht mehr gültig sind. Als Ausgleich wurden dir 600 Level pro Frucht gegeben.","color":"red"}]
execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 4 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tag @s add elements_recycle_boss-frucht_stage-3
execute as @a if score .server elements_stage matches 4 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run scoreboard players operation @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage

execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 5 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tellraw @s ["",{"translate":"elements.main.other.[","color":"gray"},{"translate":"elements.main.other.elements","color":"light_purple"},{"translate":"elements.main.other.]","color":"gray"},{"text":"Eine Neue Stage hat begonnen, du hattest allerdings noch Bossfrüchte aus der Alten Stage übrig, die jetzt nicht mehr gültig sind. Als Ausgleich wurden dir 700 Level pro Frucht gegeben.","color":"red"}]
execute as @a[scores={elements_custom-items_shop_boss-frucht_remain=1..}] if score .server elements_stage matches 5 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run tag @s add elements_recycle_boss-frucht_stage-4
execute as @a if score .server elements_stage matches 5 unless score @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage run scoreboard players operation @s elements_custom-items_shop_boss-frucht_current_stage = .server elements_stage



execute as @a[tag=elements_recycle_boss-frucht_stage-1,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run xp add @s 30 levels
execute as @a[tag=elements_recycle_boss-frucht_stage-1,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run scoreboard players remove @s elements_custom-items_shop_boss-frucht_remain 1
execute as @a[tag=elements_recycle_boss-frucht_stage-1,scores={elements_custom-items_shop_boss-frucht_remain=0}] run tag @s remove elements_recycle_boss-frucht_stage-1

execute as @a[tag=elements_recycle_boss-frucht_stage-2,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run xp add @s 300 levels
execute as @a[tag=elements_recycle_boss-frucht_stage-2,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run scoreboard players remove @s elements_custom-items_shop_boss-frucht_remain 1
execute as @a[tag=elements_recycle_boss-frucht_stage-2,scores={elements_custom-items_shop_boss-frucht_remain=0}] run tag @s remove elements_recycle_boss-frucht_stage-2

execute as @a[tag=elements_recycle_boss-frucht_stage-3,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run xp add @s 600 levels
execute as @a[tag=elements_recycle_boss-frucht_stage-3,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run scoreboard players remove @s elements_custom-items_shop_boss-frucht_remain 1
execute as @a[tag=elements_recycle_boss-frucht_stage-3,scores={elements_custom-items_shop_boss-frucht_remain=0}] run tag @s remove elements_recycle_boss-frucht_stage-3

execute as @a[tag=elements_recycle_boss-frucht_stage-4,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run xp add @s 700 levels
execute as @a[tag=elements_recycle_boss-frucht_stage-4,scores={elements_custom-items_shop_boss-frucht_remain=1..}] run scoreboard players remove @s elements_custom-items_shop_boss-frucht_remain 1
execute as @a[tag=elements_recycle_boss-frucht_stage-4,scores={elements_custom-items_shop_boss-frucht_remain=0}] run tag @s remove elements_recycle_boss-frucht_stage-4
