summon armor_stand ~ ~ ~ {Silent:true,Invulnerable:true,Tags:["element_arrow_load"]}
$data modify entity @n[tag=element_arrow_load] HandItems[0] set from storage elements_playerdata_$(ID) ElementBow_ArrowItem
item replace entity @s inventory.0 from entity @n[tag=element_arrow_load] weapon.mainhand
kill @n[tag=element_arrow_load]