class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change

  	add_column :users, :sign_in_count, :integer, :null => false, :default => 0
  	add_column :users, :current_sign_in_at, :datetime
  	add_column :users, :last_sign_in_at, :datetime
  	add_column :users, :current_sign_in_ip, :string
  	add_column :users, :last_sign_in_ip, :string
    add_column :users, :phone_number, :string, :null => false, :default => ""
    add_column :users, :registration, :boolean, :null => false, :default => true
    add_column :users, :kanji_last, :string, :null => false, :default => ""
    add_column :users, :kanji_first, :string, :null => false, :default => ""
    add_column :users, :katakana_last, :string, :null => false, :default => ""
    add_column :users, :katakana_first, :string, :null => false, :default => ""
    add_column :users, :admin_user, :boolean, :null => false, :default => false
  end
end
