class Review < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
