class CreateSicCodes < ActiveRecord::Migration
  def change
    create_table :sic_codes do |t|

      t.timestamps
    end
  end
end
