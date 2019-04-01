class Contact < ApplicationRecord
  belongs_to :user

  has_many :addresses
  has_many :phones
  has_many :emails
  has_many :notes
  has_many :contributions
end
