#> pretty_smith:check/replace
# カスタム鍛冶台レシピが見つかったら、置き換えてあげる
### Copyright © 2023 赤石愛

data modify storage player_item_tuner: condition.if set from storage pretty_crafter: found.items.0.0
data modify storage player_item_tuner: result.set set from storage pretty_crafter: found.recipe.result

function #player_item_tuner:modify/inventory
