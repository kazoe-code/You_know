class Skill < ApplicationRecord
  has_many :personal, through: :personal_users
end
