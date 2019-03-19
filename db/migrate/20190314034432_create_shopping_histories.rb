class CreateShoppingHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_histories do |t|
      t.integer :user_id,null:false
      t.integer :address_history_id,null:false
      t.datetime :shopping_date,null:false
      t.string :status,null:false

      t.timestamps
    end
  end
end
