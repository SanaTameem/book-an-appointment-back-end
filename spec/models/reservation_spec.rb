require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:car) }
  end

  describe 'validations' do
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:car) }
    it { should validate_presence_of(:start_city) }
    it { should validate_presence_of(:destination_city) }
    it { should validate_presence_of(:reserved_date) }
  end
end
