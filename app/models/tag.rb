class Tag < ApplicationRecord
  has_many :tag_users
  has_many :users, through: :tag_users
  validates :name, presence: true, uniqueness: true
  #has_many :profiles
end
