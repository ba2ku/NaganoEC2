class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.integer :item_id,null:false
      t.integer :user_id,null:false
      t.integer :amount,null:false,default:0

      t.timestamps
    end
  end
end
