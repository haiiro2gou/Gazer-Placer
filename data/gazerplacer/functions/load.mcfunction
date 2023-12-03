#> gazerplacer:load
# @within tag/function minecraft:load

# リリースチェック
    data modify storage global Ashen.GazerPlacer.IsProduction set value false

# 初回限定ロード
    execute if data storage global Ashen.GazerPlacer{IsProduction: 1b} unless data storage global Ashen.GazerPlacer.Version run function gazerplacer:load_once
    execute if data storage global Ashen.GazerPlacer{IsProduction: 0b} run function gazerplacer:load_once

# マイグレーション
    function gazerplacer:migration/
