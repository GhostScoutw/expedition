scoreboard players set @s ex.player.input_cooldown 3
playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 2 0.5

execute as @n[tag=these.menu,tag=selected] run tag @s add origin.selected
execute as @n[tag=these.menu,tag=selected] at @s positioned ~ ~0.5 ~ run tag @n[tag=these.menu,tag=!selected,distance=..0.5] add selected

execute as @n[tag=these.menu,tag=origin.selected] run tag @s remove selected
execute unless entity @n[tag=these.menu,tag=selected] as @n[tag=these.menu,tag=origin.selected] at @s positioned ~ ~-10 ~ run tag @n[tag=these.menu,tag=!selected] add selected

execute as @n[tag=origin.selected] run tag @s remove origin.selected
