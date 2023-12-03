#> gazerplacer:interaction/kill
# @within function gazerplacer:tick/player

execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.UserID = @e[tag=this,limit=1] Ashen.GazerPlacer.UserID run kill @s
