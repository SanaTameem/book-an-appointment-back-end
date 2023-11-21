class Car < ApplicationRecord
  MAX_VALUE = 100_000
  MIN_VALUE = 1
  validates :name, presence: true
  validates :image, presence: true
  validates :model, presence: true
  has_many :reservations, dependent: :destroy
  validates :finance_fee, presence: true, numericality: {
    greater_than_or_equal_to: MIN_VALUE,
    less_than_or_equal_to: MAX_VALUE
  }
  validates :total_amount, presence: true, numericality: {
    greater_than_or_equal_to: MIN_VALUE,
    less_than_or_equal_to: MAX_VALUE
  }
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
end
