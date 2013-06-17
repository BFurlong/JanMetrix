class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :f_name
      t.string :l_name
      t.belongs_to :contactable, polymorphic: true

      t.timestamps
    end
  end
end
