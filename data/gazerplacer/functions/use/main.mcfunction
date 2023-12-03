#> gazerplacer:use/main
# @within function gazerplacer:use/

# WIP
    tellraw @s "Work in Progress"

# get target
    function gazerplacer:detector/
    execute if data storage gazerplacer:exec Detector{Check: 0b} run tellraw @s [{"nbt": "Ashen.Global.Prefix.Failed", "storage": "global"}, {"translate": "Ashen.GazerPlacer.Use.OverDistance", "fallback": "You are looking too far away."}]
    