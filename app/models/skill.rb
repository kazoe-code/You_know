class Skill < ApplicationRecord
  has_many :users, through: :personal_users
  has_many :personals, through: :personal_users
end
