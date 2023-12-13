#> gazerplacer:config/
# @user

# Prefix
    tellraw @s [{"text": "================================", "color": "gold"}]
    tellraw @s [{"translate": "Ashen.GazerPlacer.Version", "fallback": "\u00A7aGazer Placer %s", "with": [{"nbt": "Ashen.GazerPlacer.Version", "storage": "minecraft:global", "color": "dark_gray"}]}, {"text": " "}, {"translate": "Ashen.GazerPlacer.Config.Title", "fallback": "Config"}]
    tellraw @s [{"text": ""}]

# List
    function gazerplacer:config/list

# Suffix
    tellraw @s [{"text": ""}]
    tellraw @s [{"translate": "Ashen.GazerPlacer.Config.Close", "fallback": "[Exit]", "color": "gray", "clickEvent": {"action": "run_command", "value": "/trigger Ashen.GazerPlacer.Trigger set 0"}}]
    tellraw @s [{"text": "================================", "color": "gold"}]

# Trigger
    scoreboard players reset @s Ashen.GazerPlacer.Trigger
    scoreboard players enable @s Ashen.GazerPlacer.Trigger
