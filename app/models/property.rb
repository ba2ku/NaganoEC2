class Property < ApplicationRecord
    has_one :item, dependent: :destroy
end
