class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :lead_id

      t.timestamps
    end
  end
end
