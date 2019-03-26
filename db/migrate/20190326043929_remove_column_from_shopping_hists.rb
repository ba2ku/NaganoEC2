class RemoveColumnFromShoppingHists < ActiveRecord::Migration[5.2]
  def change
  	remove_column :shopping_histories, :address_history_id
  end
end