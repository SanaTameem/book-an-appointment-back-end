class Api::V1::CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
    if @car
      render json: @car, status: :ok
    else
      render json: { error: 'Car not found' }, status: :not_found
    end
  end

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
      render json: @car, status: :updated, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :image, :model, :finance_fee, :total_amount, :discription, :duration)
  end
end
