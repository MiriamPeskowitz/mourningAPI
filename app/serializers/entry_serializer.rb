class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :created_at, :user_id
  # belongs_to :user
end
