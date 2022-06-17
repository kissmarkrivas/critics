class AddIndexNameToGame < ActiveRecord::Migration[7.0]
  def change
    add_index :games, :name, unique: true
  end
end
