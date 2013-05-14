class Match < ActiveRecord::Base
  attr_accessible :match_date, :player_one, :player_one_wins, :player_two, :player_two_wins, :players_draw, :sport
end
