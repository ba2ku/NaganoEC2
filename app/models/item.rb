class Item < ApplicationRecord
    belongs_to :property
    belongs_to :artist
    belongs_to :genre
    belongs_to :label

    has_many :musics, dependent: :destroy
    has_many :ordered_items, dependent: :destroy

    attachment :jacket
    end