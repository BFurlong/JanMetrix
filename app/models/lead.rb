class Lead < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :updated_at, :addressable_attributes, :callable_attributes
  has_one :street_address, :as => :addressable
  has_one :phone_number, as: :callable

  accepts_nested_attributes_for :street_address, :allow_destroy => true

end
