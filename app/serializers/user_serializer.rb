class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :description, :password, :entries
  has_many :entries
end
# dd description back in 