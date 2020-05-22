class Personal < ApplicationRecord
  has_many :skill, through: :slill_users
end
