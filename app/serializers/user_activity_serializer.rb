class UserActivitySerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :goal
  belongs_to :activity

  # #     t.integer "user_id"
  #     t.integer "activity_id"
  #     t.integer "goal_id"
  #     t.integer "points"
  #     t.string "note"
  attributes :id, :user_id, :activity_id, :goal_id, :points, :note
end
