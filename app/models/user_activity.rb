class UserActivity < ApplicationRecord
  validates: :activity_id, :user_id, presence: true

  belongs_to :user
  belongs_to :activity
  validates :activity_id, :user_id, presence: true


end
