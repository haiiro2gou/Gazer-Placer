#> gazerplacer:use/
# @within function gazerplacer:tick/player

# check data
    execute store result score $Match Ashen.GazerPlacer.Temporary run data modify entity @s interaction.player set from entity @e[tag=this,limit=1] UUID

# exec
    execute if score $Match Ashen.GazerPlacer.Temporary matches 0 as @a[gamemode=!adventure,gamemode=!spectator,tag=this,limit=1] at @s run function gazerplacer:detector/
    execute if score $Match Ashen.GazerPlacer.Temporary matches 0 as @a[gamemode=!adventure,gamemode=!spectator,tag=this,limit=1] unless data storage gazerplacer:exec Detector run tellraw @s [{"nbt": "Ashen.Global.Prefix.FAILED", "storage": "global"}, {"translate": "Ashen.GazerPlacer.Use.OverDistance", "fallback": "You are looking too far away."}]
    execute if score $Match Ashen.GazerPlacer.Temporary matches 0 as @a[gamemode=!adventure,gamemode=!spectator,tag=this,limit=1] if data storage gazerplacer:exec Detector run function gazerplacer:use/main
    execute if score $Match Ashen.GazerPlacer.Temporary matches 0 as @a[gamemode=!creative,gamemode=!survival,tag=this,limit=1] run tellraw @s [{"nbt":"Ashen.Global.Prefix.FAILED","storage":"global"},{"translate":"Ashen.GazerPlacer.Failed","fallback":"Blocks cannot be placed in this gamemode!"}]

# reset
    scoreboard players reset $Match Ashen.GazerPlacer.Temporary
    data remove entity @s interaction
