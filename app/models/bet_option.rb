class BetOption < ActiveRecord::Base
  attr_accessible :available_for, :name, :number_of_sub_options
end
