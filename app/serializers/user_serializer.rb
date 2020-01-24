class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :website, :username, :location, :bio

  has_many :syllabuses
end
