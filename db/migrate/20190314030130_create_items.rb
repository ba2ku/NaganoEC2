class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :jacket, null:false, default:""
      t.integer :price,null:false, default:0
      t.text :details
      t.integer :stock,null:false, default:0
      t.datetime :release_day, default: -> { 'CURRENT_TIMESTAMP' }
      t.boolean :display_flag,null:false, default:true
      t.string :name, null:false

      t.timestamps
    end
  end
end
