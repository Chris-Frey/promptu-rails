class UserActivity < ApplicationRecord
  validates :activity_id, :user_id, presence: true

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :activity, class_name: 'Activity', foreign_key: 'activity_id', dependent: :destroy
end
