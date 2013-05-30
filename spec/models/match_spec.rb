require 'spec_helper'

describe Match do
  describe "attributes" do
    it "should have a match_date attribute" do
      @match = Match.new
      @match.should respond_to :match_date
    end

    it "should have a player_one attribute" do
      @match = Match.new
      @match.should respond_to :player_one
    end

    it "should have a player_two attribute" do
      @match = Match.new
      @match.should respond_to :player_two
    end

    it "should have a sport attribute" do
      @match = Match.new
      @match.should respond_to :sport
    end

    it "should have a tournament attribute" do
      @match = Match.new
      @match.should respond_to :tournament
    end
  end

  describe "Validations" do
    before(:each) do
      @attr = { :match_date => '2013-01-30 11:00:00', :player_one => 'player one',
                :player_two => 'player two', :sport => 'sport', :tournament => 'tournament'
      }
    end

    it "should require a match date" do
      @attr[:match_date] = ''
      new_match = Match.new @attr
      new_match.should be_invalid
    end

    it "should require player one" do
      @attr[:player_one] = ''
      new_match = Match.new @attr
      new_match.should be_invalid
    end

    it "should require player two" do
      @attr[:player_two] = ''
      new_match = Match.new @attr
      new_match.should be_invalid
    end

    it "should require the specific sport category" do
      @attr[:sport] = ''
      new_match = Match.new @attr
      new_match.should be_invalid
    end

    it "should require a tournament" do
      @attr[:tournament] = ''
      new_match = Match.new @attr
      new_match.should be_invalid
    end
  end
end
