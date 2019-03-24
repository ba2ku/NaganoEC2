class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :postcode
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :building

      t.timestamps
    end
  end
end
