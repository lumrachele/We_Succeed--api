class UserActivity < ApplicationRecord
  belongs_to :user
  belongs_to :goal
  belongs_to :activity
end
