#> gazerplacer:give
# @user

# validation
    execute unless data storage gazerplacer: Give.Replace run data modify storage gazerplacer: Give.Replace set value false
    execute unless data storage gazerplacer: Give.Offhand run data modify storage gazerplacer: Give.Offhand set value false

# データ取得
    function indexstorage:pull/

# 杖生成
    execute in ashen_lib:clipboard run loot replace block 0 0 0 container.0 loot gazerplacer:rod
    execute in ashen_lib:clipboard run data modify storage gazerplacer: Give.Item set from block 0 0 0 Items[0]

# データ代入
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 1b} run data modify storage gazerplacer: Give.Item.tag.display.Lore prepend value '[{"text": "", "color": "gray", "italic": false}, {"translate": "Ashen.GazerPlacer.Mode", "fallback": "Replace Mode"}, {"text":": "}, {"translate": "Ashen.GazerPlacer.ReplaceEnabled", "fallback": "Enabled", "color": "green"}]'
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} run data modify storage gazerplacer: Give.Item.tag.display.Lore prepend value '[{"text": "", "color": "gray", "italic": false}, {"translate": "Ashen.GazerPlacer.Mode", "fallback": "Replace Mode"}, {"text":": "}, {"translate": "Ashen.GazerPlacer.ReplaceEnabled", "fallback": "Disabled", "color": "red"}]'

# 渡す
    execute in ashen_lib:clipboard run item replace block 0 0 0 container.0 with stone
    execute in ashen_lib:clipboard run data modify block 0 0 0 Items[0] set from storage gazerplacer: Give.Item
    execute in ashen_lib:clipboard if data storage gazerplacer: Give{Replace: 0b} run loot give @s mine 0 0 0 debug_stick
    execute in ashen_lib:clipboard if data storage gazerplacer: Give{Replace: 1b, IsOffhand: 0b} run item replace entity @s weapon.mainhand from block 0 0 0 container.0
    execute in ashen_lib:clipboard if data storage gazerplacer: Give{Replace: 1b, IsOffhand: 1b} run item replace entity @s weapon.offhand from block 0 0 0 container.0

# リセット
    data remove storage gazerplacer: Give
    data remove storage indexstorage: Config
