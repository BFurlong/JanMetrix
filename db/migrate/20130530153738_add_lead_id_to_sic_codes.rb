class AddLeadIdToSicCodes < ActiveRecord::Migration
  def change
  	add_column :sic_codes, :lead_id, :integer
  end
end
