class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :entries
  has_many :entries
end
