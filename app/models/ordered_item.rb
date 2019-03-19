class OrderedItem < ApplicationRecord
    belongs_to :shopping_history
    belongs_to :item
end
