class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_activities, :dependent => :destroy
  has_many :activities, through: :user_activities, :dependent => :destroy


  # validates :name, presence: true#, length: {minimum: 6}
  # validates :email, :username, presence: true
end
