class Car < ApplicationRecord
  MAX_VALUE = 10_000
  MIN_VALUE = 1
  validates :name, presence: true
  validates :image, presence: true
  validates :brand, presence: true
  validates :reservation_fee, presence: true, numericality: {
    greather_than_or_equal_to: MIN_VALUE, less_than_or_equal_to: MAX_VALUE
  }
end
