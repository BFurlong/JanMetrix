class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :ph_num
      t.string :type
      t.integer :lead_id
      t.integer :ext

      t.timestamps
    end
  end
end
