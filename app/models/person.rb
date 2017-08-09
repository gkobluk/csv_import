class Person < ApplicationRecord

  validates :email_address, uniqueness: true
end
