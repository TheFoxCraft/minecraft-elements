$execute as @a[nbt={UUID:$(UUID)}] run scoreboard players add @s elements_miningxp_fishing_xp 4


$execute as @a[scores={elements_custom-items_shop_fishing-frucht_enable=1},nbt={UUID:$(UUID)}] run scoreboard players add @s elements_custom-items_shop_fishing-frucht_counter 1

$execute as @a[scores={elements_custom-items_shop_fishing-frucht_counter=3..},nbt={UUID:$(UUID)}] run scoreboard players add @s elements_miningxp_fishing_xp 4
$execute as @a[scores={elements_custom-items_shop_fishing-frucht_counter=3..},nbt={UUID:$(UUID)}] run scoreboard players remove @s elements_custom-items_shop_fishing-frucht_counter 3

$execute as @a[scores={elements_miningxp_fishing_level=..99},nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text":"Fishing: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_xp"},"color":"blue"},{"text":"/","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_nextlevel"},"color":"blue"},{"text":" XP","color":"blue"}]
$execute as @a[scores={elements_miningxp_fishing_level=100},nbt={UUID:$(UUID)}] run title @s actionbar ["",{"text":"Fishing: ","color":"blue"},{"score":{"name":"@s","objective":"elements_miningxp_fishing_xp"},"color":"blue"},{"text":" XP","color":"blue"}]
