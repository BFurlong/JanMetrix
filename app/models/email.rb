class Email < ActiveRecord::Base
  attr_accessible :domain, :email_address, :full_email

  belongs_to :emailable, polymorphic: true
end
