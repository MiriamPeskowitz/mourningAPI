class Entry < ApplicationRecord
  belongs_to :user
  # dependent destroy? 
  # validates :title, :content, :public, presence: true
end


# length: { maximum: 500 