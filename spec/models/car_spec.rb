require 'rails_helper'

RSpec.describe Car, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:finance_fee) }
    it { should validate_presence_of(:total_amount) }

    it do
      should validate_numericality_of(:finance_fee)
        .is_greater_than_or_equal_to(Car::MIN_VALUE)
        .is_less_than_or_equal_to(Car::MAX_VALUE)
    end

    it do
      should validate_numericality_of(:total_amount)
        .is_greater_than_or_equal_to(Car::MIN_VALUE)
        .is_less_than_or_equal_to(Car::MAX_VALUE)
    end

    it do
      should validate_numericality_of(:duration)
        .only_integer
        .is_greater_than(0)
    end
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end
end
