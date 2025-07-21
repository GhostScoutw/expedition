
$execute as @p[tag=this.player] at @s run tp @n[tag=this.menu] ^$(x) ^$(y) ^$(z) facing entity @p[tag=this.player]

execute as @n[tag=this.menu] at @s on passengers run rotate @s ~ ~