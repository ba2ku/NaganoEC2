class Artist < ApplicationRecord
    has_one :item, dependent: :destroy
end
