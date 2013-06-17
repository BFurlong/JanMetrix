class AddSqFtToLeads < ActiveRecord::Migration
  def change_table :leads do |t|
  	t.integer :sqft
  	t.string :status
  	t.boolean :happy_current_service
  	t.boolean :have_service
  	t.integer :no_employees
  	t.boolean :do_not_call
  	t.string :industry
  	t.string :lead_source
  end
end
