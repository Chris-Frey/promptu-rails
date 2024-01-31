class Activity < ApplicationRecord
  # validates :name, :description, presence: true
  # validates :start_time, :location, :length
  has_many :users
  has_many :users, through: :user_activities
end


