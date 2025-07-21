scoreboard players set @s ex.player.input_cooldown 3
playsound minecraft:block.wooden_button.click_on master @s ~ ~ ~ 2 1

execute as @n[tag=these.menu,tag=selected] at @s run function ex:player/menu/space_check

