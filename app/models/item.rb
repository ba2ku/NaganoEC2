class Item < ApplicationRecord
    belongs_to :property
    belongs_to :artist
    belongs_to :genre
    belongs_to :label

    has_many :musics, dependent: :destroy
    accepts_nested_attributes_for :musics, allow_destroy: true
    has_many :ordered_items, dependent: :destroy

    attachment :jacket
    end