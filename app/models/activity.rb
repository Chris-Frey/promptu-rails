class Activity < ApplicationRecord
  # validates :name, :description, :user_id, presence: true
  # validates :start_time, :location, :length

  has_many :user_activities
  has_many :users, through: :user_activities
end


