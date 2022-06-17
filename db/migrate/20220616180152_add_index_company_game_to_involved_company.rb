class AddIndexCompanyGameToInvolvedCompany < ActiveRecord::Migration[7.0]
  def change
    add_index :involved_companies, [:game_id, :company_id], unique: true
  end
end
