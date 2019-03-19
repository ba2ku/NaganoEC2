class AddDetailsToUsers2 < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address_id, :integer
    remove_column :addresses, :user_id
  end
end
