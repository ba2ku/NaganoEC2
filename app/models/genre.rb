class Genre < ApplicationRecord
    has_one :item, dependent: :destroy
end
