class Car < ApplicationRecord
  MAX_VALUE = 100_000
  MIN_VALUE = 1
  validates :name, presence: true
  validates :image, presence: true
  validates :model, presence: true
  validates :finance_fee, presence: true, numericality: {
    greather_than_or_equal_to: MIN_VALUE, less_than_or_equal_to: MAX_VALUE
  }
  validates :total_amount, presence: true, numericality: {
    greather_than_or_equal_to: MIN_VALUE, less_than_or_equal_to: MAX_VALUE
  }
  validates :discription
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
end
