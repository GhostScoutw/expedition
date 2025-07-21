
execute as @a at @s run function ex:player/tick
execute as @e[type=marker,tag=weapon.tip] at @s run function ex:character/weapon_tip

execute as @e[type=item_display,tag=character] at @s run function ex:character/tick

execute as @e[type=block_display,tag=menu] at @s run function ex:menu/tick