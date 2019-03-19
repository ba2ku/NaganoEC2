class ShoppingHistory < ApplicationRecord
    has_many :address_histories, dependent: :destroy
    has_many :ordered_items, dependent: :destroy
    belongs_to :user
end
