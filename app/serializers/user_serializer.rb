class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :description, :password
  has_many :entries
end
