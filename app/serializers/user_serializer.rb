class UserSerializer < ActiveModel::Serializer
  has_many :activities
  has_many :user_activities
  has_many :goals
  attributes :id, :name, :email
end
