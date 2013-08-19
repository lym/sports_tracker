class NewsViewer < ActiveRecord::Base
  attr_accessible :author, :body, :excerpt, :title, :media

  #belongs_to :admin_user
  has_attached_file :media, :styles => { :full => "419x282>" }
end
