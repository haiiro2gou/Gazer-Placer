#> gazerplacer:give
# @user

# validation
    execute unless data storage gazerplacer:exec Replace run data modify storage gazerplacer:exec Replace set value false
    execute unless data storage gazerplacer:exec IsOffhand run data modify storage gazerplacer:exec IsOffhand set value false

# データ取得
    function gazerplacer:config/get

# 杖生成
    execute in gazerplacer:clipboard run loot replace block 0 0 0 container.0 loot gazerplacer:rod
    execute in gazerplacer:clipboard run data modify storage gazerplacer:exec Item set from block 0 0 0 Items[0]

# データ代入
    execute if data storage gazerplacer:player Config{ReplaceMode: 1b} run data modify storage gazerplacer:exec Item.tag.display.Lore prepend value '[{"text": "", "color": "gray", "italic": false}, {"translate": "Ashen.GazerPlacer.Mode", "fallback": "Replace Mode"}, {"text":": "}, {"translate": "Ashen.GazerPlacer.ReplaceEnabled", "fallback": "Enabled", "color": "green"}]'
    execute if data storage gazerplacer:player Config{ReplaceMode: 0b} run data modify storage gazerplacer:exec Item.tag.display.Lore prepend value '[{"text": "", "color": "gray", "italic": false}, {"translate": "Ashen.GazerPlacer.Mode", "fallback": "Replace Mode"}, {"text":": "}, {"translate": "Ashen.GazerPlacer.ReplaceEnabled", "fallback": "Disabled", "color": "red"}]'

# 渡す
    execute in gazerplacer:clipboard run item replace block 0 0 0 container.0 with stone
    execute in gazerplacer:clipboard run data modify block 0 0 0 Items[0] set from storage gazerplacer:exec Item
    execute in gazerplacer:clipboard if data storage gazerplacer:exec {Replace: 0b} run loot give @s mine 0 0 0 debug_stick
    execute in gazerplacer:clipboard if data storage gazerplacer:exec {Replace: 1b, IsOffhand: 0b} run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute in gazerplacer:clipboard if data storage gazerplacer:exec {Replace: 1b, IsOffhand: 1b} run item replace entity @s weapon.offhand from block 0 0 0 container.0

# リセット
    data remove storage gazerplacer:exec Items
    data remove storage gazerplacer:exec Replace
    data remove storage gazerplacer:exec IsOffhand
