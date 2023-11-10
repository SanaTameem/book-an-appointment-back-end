class Car < ApplicationRecord

    validates :name, presence: true
    validates :image, presence: true
    validates :brand, presence: true
    validates :reservation_fee, presence :true, numericality: {
        greather_than_or_equal_to: 1, less_than_or_equal_to: 10000
    }
end
