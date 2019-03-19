class Label < ApplicationRecord
    has_one :item, dependent: :destroy
end
