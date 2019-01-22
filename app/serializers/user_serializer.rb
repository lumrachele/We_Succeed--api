class UserSerializer < ActiveModel::Serializer
  has_many :activities
  has_many :goals
  attributes :id, :name, :email
end
