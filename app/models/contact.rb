class Contact < ActiveRecord::Base
  attr_accessible :f_name, :l_name

  belongs_to :contactable, polymorphic: true
end
