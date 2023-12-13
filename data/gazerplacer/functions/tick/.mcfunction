#> gazerplacer:tick/
# @within tag/function ashen_lib:tick/

# kill click checker
    execute as @e[tag=Ashen.GazerPlacer.Interaction] unless score @s Ashen.GazerPlacer.Detector matches -2147483648..2147483647 run kill @s
