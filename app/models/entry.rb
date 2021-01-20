class Entry < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: :true
end


# length: { maximum: 500 }
