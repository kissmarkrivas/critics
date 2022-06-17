class AddIndexNameToCompany < ActiveRecord::Migration[7.0]
  def change
    add_index :companies, :name, unique: true
  end
end
