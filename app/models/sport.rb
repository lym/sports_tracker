class Sport < ActiveRecord::Base
  attr_accessible :description, :name, :icon

  has_attached_file :icon

  validates_presence_of :name
  validates_attachment_presence :icon
  validates_attachment_content_type :icon, :content_type => ['image/png', 'image/vnd.microsoft.icon']
end
