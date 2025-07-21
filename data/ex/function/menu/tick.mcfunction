tag @s add this.menu
execute as @a if score @s ex.generic.id = @n[type=block_display,tag=this.menu] ex.generic.id run tag @s add this.player

function ex:menu/offset_tp with entity @s data.offset

execute if entity @s[tag=selected] on passengers run data merge entity @s {Glowing:1b}
execute unless entity @s[tag=selected] on passengers run data merge entity @s {Glowing:0b}

execute unless entity @p[tag=this.player] run function ex:menu/remove_this

tag @a[tag=this.player] remove this.player
tag @s remove this.menu