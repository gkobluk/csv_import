class Person < ApplicationRecord

  validates :email_address, uniqueness: true
  validates_presence_of :name, :unless => lambda { self.email_address.blank? }
  validates_presence_of :email_address, :unless => lambda { self.name.blank? }
end
