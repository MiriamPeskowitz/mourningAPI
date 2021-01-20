class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :id, :user_id
  belongs_to :user, serializer: UserSerializer
end
