class Result < ActiveRecord::Base
  attr_accessible :match_id, :score

  belongs_to :match
end
