class Lead < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :updated_at, :address_attributes, :phone_attributes
  has_one :address, :as => :addressable
  has_one :phone, as: :callable
  has_many :emails, as: :emailable
  has_many :contacts, as: :contactable


  accepts_nested_attributes_for :address, :phone, :allow_destroy => true

end
