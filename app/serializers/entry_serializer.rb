class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :user_id, :user
  belongs_to :user
end
