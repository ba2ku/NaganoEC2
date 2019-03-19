class AddcolumnUsers3 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :address_id
    add_column :addresses, :user_id, :integer
  end
end
