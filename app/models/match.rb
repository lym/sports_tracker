class Match < ActiveRecord::Base
  attr_accessible :match_date, :player_one, :player_two, :sport, :tournament

  validates_presence_of :match_date, :player_one, :player_two, :sport, :tournament

  has_one :result
end
