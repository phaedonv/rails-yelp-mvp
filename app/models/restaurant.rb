class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
