class Personal < ApplicationRecord
  has_many :skills, through: :slill_users
end
