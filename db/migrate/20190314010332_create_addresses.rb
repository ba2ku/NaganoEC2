class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id, null:false, default:""
      t.string :postcode, null:false, default:""
      t.string :prefecture, null:false, default:""
      t.string :city, null:false, default:""
      t.string :street, null:false, default:""
      t.string :building, null:false, default:""

      t.timestamps
    end
  end
end