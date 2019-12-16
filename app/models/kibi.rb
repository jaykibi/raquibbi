class Kibi < ApplicationRecord
  validates :description, presence: true, length: { maximum: 140, minimum: 1 }
  validates :name, presence: true, length: { maximum: 50, minimum: 1 }
  validates :address, presence: true, length: { maximum: 50, minimum: 1 }
end
