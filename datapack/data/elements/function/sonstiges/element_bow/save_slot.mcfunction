$data remove storage elements_playerdata_$(ID) ElementBow_ArrowItem
$data modify storage elements_playerdata_$(ID) ElementBow_ArrowItem set from entity @s Inventory[{Slot:9b}]
$data remove storage elements_playerdata_$(ID) ElementBow_ArrowItem.Slot