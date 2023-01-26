#> pretty_smith:check/checked
# カスタム鍛冶台レシピが見つからなかったら、フラグだけ設定してあげる
### Copyright © 2023 赤石愛

data modify storage player_item_tuner: condition.if set from storage pretty_smith: items[-1]
data modify storage player_item_tuner: result.merge set value {tag:{Trim:{CustomSmith:"Checked"}}}

function #player_item_tuner:modify/inventory
