class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :car

    validates :user, presence: true
    validates :car, presence: true
    validates :start_city, presence: true
    validates :destination_city, presence: true
    validates :reserved_date, presence: true
end
