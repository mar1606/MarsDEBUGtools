bossbar add mars:tusb_status_mp {"text":"error"}

execute as @a[tag=m.view_MP] at @s store result bossbar mars:tusb_status_mp max run scoreboard players get @e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view] MPMax
execute as @a[tag=m.view_MP] at @s store result bossbar mars:tusb_status_mp value run scoreboard players get @e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view] MP
bossbar set mars:tusb_status_mp color purple
execute as @a[tag=!m.bossbar_view_mp] run bossbar remove mars:tusb_status_mp
tag @a add m.bossbar_view_mp