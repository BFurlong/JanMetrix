class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.string :domain
      t.string :full_email
      t.string :type
      t.belongs_to :emailable, polymorphic: true

      t.timestamps
    end
  end
end
