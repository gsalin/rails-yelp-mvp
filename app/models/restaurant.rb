class Restaurant < ApplicationRecord
  validates :category, inclusion: { in: ["chinese", "italian", "french", "japanese", "belgian"], allow_nil: false }, presence: true
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
