class CarsController < ApplicationController
  def create
    @car = Car.new(car_params)
    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: { error: 'Car data is not recorded!!' }
    end
  end

  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :image, :brand, :reservation_fee)
  end
end
