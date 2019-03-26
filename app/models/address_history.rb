class AddressHistory < ApplicationRecord
    belongs_to :shopping_history,optional: true
end
