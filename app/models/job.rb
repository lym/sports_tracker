class Job < ActiveRecord::Base
  attr_accessible :category, :description, :location, :qualifications, :title
end
