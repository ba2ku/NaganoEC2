class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :property,null:false

      t.timestamps
    end
  end
end
