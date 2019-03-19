class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.integer :item_id,null:false
      t.integer :cd_number,null:false
      t.string :music_name,null:false
      t.integer :music_order,null:false
      t.text :test_url,default:""

      t.timestamps
    end
  end
end
