class CreateOrderedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :ordered_items do |t|
      t.integer :item_id,null:false
      t.integer :shopping_history_id,null:false
      t.integer :price,null:false
      t.integer :quantity,null:false,default:1

      t.timestamps
    end
  end
end
