class HomeController < ApplicationController
  def index
    @matches = Match.all
  end
  def legal
  end

  def privacy
  end

  def about
  end

  def contact
  end

  def coming_soon
  end
end
