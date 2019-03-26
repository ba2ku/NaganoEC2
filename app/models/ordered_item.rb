class OrderedItem < ApplicationRecord
    belongs_to :shopping_history,optional: true
    belongs_to :item,optional: true
end
