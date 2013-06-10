class Lead < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :updated_at
  has_one :sic_code, :as => :sic

  accepts_nested_attributes_for :sic_code
end
