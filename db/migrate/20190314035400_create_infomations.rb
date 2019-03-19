class CreateInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :infomations do |t|
      t.string :infomation

      t.timestamps
    end
  end
end
