#> gazerplacer:config/list
# @within function gazerplacer:config/

# pull
    function indexstorage:pull/

# 通知
    execute if data storage indexstorage: Config.GazerPlacer{NotifyResult: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.NotifyResult.Lore", "fallback": "Display execution results"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.NotifyResult.Title", "fallback": "Notify Result"}]}]
    execute if data storage indexstorage: Config.GazerPlacer{NotifyResult: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.NotifyResult.Lore", "fallback": "Display execution results"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.NotifyResult.Title", "fallback": "Notify Result"}]}]

# 保存
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.ReplaceMode.Lore", "fallback": "Make it replace the viewpoint block when used"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.ReplaceMode.Title", "fallback": "Replace Mode"}]}]
    execute if data storage indexstorage: Config.GazerPlacer{ReplaceMode: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 2"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.ReplaceMode.Lore", "fallback": "Make it replace the viewpoint block when used"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.ReplaceMode.Title", "fallback": "Replace Mode"}]}]

# リセット
    data remove storage indexstorage: Config
