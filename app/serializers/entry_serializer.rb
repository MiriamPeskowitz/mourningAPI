class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :user_id
end
