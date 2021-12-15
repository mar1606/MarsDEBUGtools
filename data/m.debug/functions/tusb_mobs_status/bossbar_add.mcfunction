bossbar add mars:tusb_status_hp {"text":"error"}

execute as @a[tag=m.view_HP] at @s store result bossbar mars:tusb_status_hp max run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] HPMax
execute as @a[tag=m.view_HP] at @s store result bossbar mars:tusb_status_hp value run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] HP
bossbar set mars:tusb_status_hp color green
execute as @a[tag=!m.test] run bossbar remove mars:tusb_status_hp
tag @a add m.bossbar_view