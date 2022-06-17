class AddDefaultCriticsCountToUser < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :critics_coun, from: nil, to: 0
  end
end
