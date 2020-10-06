class User < ApplicationRecord
  has_many :entries, dependent: :destroy

  # validates :name, presence: true, uniqueness: true
  # validates :email, presence: true 
  # length: { in: 6..20 }
end
