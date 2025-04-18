tellraw @a ["",{"translate":"elements.main.other.server","color": "yellow"},{"selector": "@s"},{"text":" hat ein "},{"text": "EINZIGARTIGES LEGENDÄRES ITEM","color": "gold","italic": true,"bold": true},{"text": " gefunden und dafür "},{"text": "25.000 Level","color": "green"},{"text": " bekommen!"}]

function elements:sonstiges/savely_give_loot {id:"elements:items/uniques/shops/hasenpfote"}
xp add @s 25000 levels
execute at @s run playsound ui.toast.challenge_complete master @s

scoreboard players set @s elements_uniqueitem_shop_hasenpfote 1
scoreboard players set .server elements_uniqueitem_shop_hasenpfote 1

#spawn item in HUB

execute in elements:hub as @e[type=marker,tag=elements_unique_placeholder_empty,sort=random,limit=1] run tag @s add current_unique_item

execute in elements:hub as @n[type=marker,tag=current_unique_item] at @s run summon item_display ~ ~ ~ {billboard:"center",Tags:["elements_unique","elements_unique_hasenpfote","elements_unique_hasenpfote_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:barrier",count:1}}
execute in elements:hub as @n[type=marker,tag=current_unique_item] at @s run summon text_display ~ ~0.65 ~ {billboard:"center",Tags:["elements_unique","elements_unique_hasenpfote","elements_unique_hasenpfote_name"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"bold":true,"color":"gold","italic":false,"translate": "elements.item.unique.hasenpfote.name"}',alignment:"center"}

execute store result storage elements_getid ID int 1 run scoreboard players get @s elements_playerid
function elements:uniques/get_name with storage elements_getid
data modify storage elements_unique_item_set_name item_id set value "hasenpfote"
function elements:uniques/get_dimension
function elements:uniques/set_name with storage minecraft:elements_unique_item_set_name

execute in elements:hub as @n[type=marker,tag=current_unique_item] at @s run summon armor_stand ~ ~ ~ {Tags:["elements_unique_set"],Invisible:1b,Invulnerable:1b}
execute in elements:hub as @n[type=armor_stand,tag=elements_unique_set] at @s run loot replace entity @s weapon.mainhand loot elements:items/uniques/shops/hasenpfote
execute in elements:hub as @n[type=armor_stand,tag=elements_unique_set] at @s run data modify entity @n[type=item_display,tag=elements_unique_hasenpfote] item set from entity @s HandItems[0]
execute in elements:hub as @n[type=armor_stand,tag=elements_unique_set] at @s run kill @s



execute in elements:hub as @n[type=marker,tag=current_unique_item] run tag @s remove elements_unique_placeholder_empty
execute in elements:hub as @n[type=marker,tag=current_unique_item] run tag @s remove current_unique_item