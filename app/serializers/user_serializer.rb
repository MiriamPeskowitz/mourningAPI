class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
  has_many :entries
end
