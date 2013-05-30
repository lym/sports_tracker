class NewsViewer < ActiveRecord::Base
  attr_accessible :author, :body, :excerpt, :title

  #belongs_to :admin_user
end
