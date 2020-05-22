class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presence: true, uniqueness: true

  has_many :skill, through: :slill_users
  has_many :personal, through: :personal_users
  
  #has_many :profiles
  
end
