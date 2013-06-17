class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zipcode
      t.belongs_to :addressable, polymorphic: true

      t.timestamps
    end
  end
end
