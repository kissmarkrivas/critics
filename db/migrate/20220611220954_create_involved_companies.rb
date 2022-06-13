class CreateInvolvedCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :involved_companies do |t|
      t.boolean :developer
      t.boolean :publisher
      t.references :company, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
