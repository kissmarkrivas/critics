class AddIndexNameToPlatform < ActiveRecord::Migration[7.0]
  def change
    add_index :platforms, :name, unique: true
  end
end
