class Droptables2 < ActiveRecord::Migration[5.2]
  def change
  	# drop_table :item_properties
  	# drop_table :item_genres
  	add_column :items, :genre_id, :intger
  	add_column :items, :property_id, :intger
  	add_column :items, :label_id, :intger
  	add_column :items, :artist_id, :intger
  	remove_column :genres, :item_id
  	remove_column :properties, :item_id
  	remove_column :labels, :item_id
  	remove_column :artists, :item_id
  end
end
