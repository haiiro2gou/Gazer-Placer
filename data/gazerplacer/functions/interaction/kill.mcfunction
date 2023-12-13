#> gazerplacer:interaction/kill
# @within function gazerplacer:tick/player

execute as @e[tag=Ashen.GazerPlacer.Interaction] if score @s Ashen.GazerPlacer.Detector = @e[tag=this,limit=1] Ashen.Global.UserID run kill @s
