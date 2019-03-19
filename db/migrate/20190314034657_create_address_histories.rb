class CreateAddressHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :address_histories do |t|
      t.integer :shopping_history_id,null:false
      t.string :postcode,null:false
      t.string :prefecture,null:false
      t.string :city,null:false
      t.string :street,null:false
      t.string :building

      t.timestamps
    end
  end
end
