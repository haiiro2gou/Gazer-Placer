#> gazerplacer:config/list
# @within function gazerplacer:config/

# verify
    $execute unless data storage gazerplacer:player Players[{ID: $(Index)}] run function gazerplacer:config/init

# 持ち込み
    $data modify storage gazerplacer:player Config set from storage gazerplacer:player Players[{ID: $(Index)}].Config

# 通知
    execute if data storage gazerplacer:player Config{NotifyResult: 1b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.NotifyResult.Lore", "fallback": "Display execution results"}]}, "extra": [{"text": "[✓] ", "color": "green", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.NotifyResult.Title", "fallback": "Notification"}]}]
    execute if data storage gazerplacer:player Config{NotifyResult: 0b} run tellraw @s [{"text": "", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 1"}, "hoverEvent": {"action": "show_text", "value": [{"translate": "Ashen.GazerPlacer.Config.NotifyResult.Lore", "fallback": "Display execution results"}]}, "extra": [{"text": "[✗] ", "color": "red", "bold": true}, {"translate": "Ashen.GazerPlacer.Config.NotifyResult.Title", "fallback": "Notification"}]}]

# リセット
    data remove storage gazerplacer:player Config
