class Phone < ActiveRecord::Base
  attr_accessible :ext, :ph_num

  belongs_to: :callable, :polymorphic => true
end
