class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presence: true, uniqueness: true
  
  has_many :skill_users
  has_many :skills, through: :skill_users

  has_many :personal_users
  has_many :personals, through: :personal_users
    
end
