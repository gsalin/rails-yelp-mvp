class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "french", "japanese", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
