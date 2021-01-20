class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :id, :created_at, :user_id
  belongs_to :user, serializer: UserSerializer
end
