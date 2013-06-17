class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :ph_num
      t.integer :ext
      t.belongs_to :callable, polymorphic: true

      t.timestamps
    end
  end
end
