class AddDefaultCategoryToGame < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up { change_column :games, :category, :integer, default:0 }
      dir.down { change_column :games, :category, :integer, default: nil }
    end
  end
end
