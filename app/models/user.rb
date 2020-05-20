class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #validates :name, presence: true, uniqueness: true

  has_many :tag_users
  has_many :tags, through: :tag_users
  
  #has_many :profiles
  
end
