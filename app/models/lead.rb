class Lead < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :updated_at, :address_attributes
  has_one :address

  accepts_nested_attributes_for :address, :allow_destroy => true

end
