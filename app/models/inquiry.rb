class Inquiry < ActiveRecord::Base
  INQUIRY_TYPES = ["Customer Service Complaint", "General Inquiry", "Other"].freeze

  attr_accessible :email, :message, :name, :priority, :inquiry_type, :phone_number
  validates_presence_of :email, :message
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_inclusion_of :inquiry_type, :in => INQUIRY_TYPES

end
