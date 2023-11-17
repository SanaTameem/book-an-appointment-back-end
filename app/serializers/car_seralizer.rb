class CarSerializer
  include ActiveModel::Serializer

  attributes :id, :name, :image, :model, :finance_fee, :total_amount,
             :discription, :duration, :created_at, :updated_at
end
