class SicCode < ActiveRecord::Base
  # attr_accessible :title, :body

  attr_accessible :sic, :description
  
  belongs_to :sic, :polymorphic => true
end
