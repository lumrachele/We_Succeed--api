class GoalSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :name, :value, :reached, :current
end
