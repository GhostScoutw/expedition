
tag @s add this
execute as @e[type=item_display,tag=character] if score @s ex.generic.id = @n[type=marker,tag=this] ex.generic.id run tag @s add this.origin

execute if entity @n[type=item_display,tag=this.origin,tag=moving] run particle dust_color_transition{from_color:[0.012,1.000,0.902],scale:1,to_color:[1.000,1.000,1.000]} ~ ~ ~

execute unless entity @n[tag=this.origin] run tag @s remove this
tag @s remove this
tag @n[tag=this.origin] remove this.origin
