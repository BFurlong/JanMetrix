class AddSicCodeToSicCodes < ActiveRecord::Migration
  def change
  	add_column :sic_codes, :sic, :integer
  	add_column :sic_codes, :description, :string
  end
end
