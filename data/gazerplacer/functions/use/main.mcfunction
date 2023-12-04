#> gazerplacer:use/main
# @within function gazerplacer:use/

# get target
    function gazerplacer:detector/
    execute unless data storage gazerplacer:exec Detector run tellraw @s [{"nbt": "Ashen.Global.Prefix.FAILED", "storage": "global"}, {"translate": "Ashen.GazerPlacer.Use.OverDistance", "fallback": "You are looking too far away."}]
