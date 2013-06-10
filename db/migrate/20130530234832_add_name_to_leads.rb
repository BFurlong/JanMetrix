class AddNameToLeads < ActiveRecord::Migration
  def change
  	add_column :leads, :name, :string
  	add_column :leads, :last_updated, :datetime
  end
end
