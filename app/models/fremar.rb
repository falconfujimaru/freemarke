class Fremar < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true, length: { maximum: 50 }
  validates :seller, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 50 }
  validates :price, presence: true,
    numericality: { 
      only_integer: true,
      greater_than: 1
    }
  validates :description, presence: true, length: { maximum: 1000 }
end
