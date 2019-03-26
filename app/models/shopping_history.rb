class ShoppingHistory < ApplicationRecord
    has_one :address_history, dependent: :destroy
    accepts_nested_attributes_for :address_history,allow_destroy: true
    has_many :ordered_items, dependent: :destroy
	accepts_nested_attributes_for :ordered_items,allow_destroy: true
    belongs_to :user
end
