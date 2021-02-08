class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :description, :id, :entries
  has_many :entries, serializer: EntrySerializer
end
