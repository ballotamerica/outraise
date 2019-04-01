class Contribution < ApplicationRecord
  belongs_to :contact
  belongs_to :form
  belongs_to :user
end
