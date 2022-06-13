class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.string :country
      t.string :cover

      t.timestamps
    end
  end
end
