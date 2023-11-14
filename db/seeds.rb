# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.create(
    name: 'Car 1',
    model: 'Model A',
    discription: 'Description for Car 1',
    image: 'car1.jpg',
    finance_fee: 15000.50,
    total_amount: 25000.75,
    duration: 5
  )

Car.create(
    name: 'Car 2',
    model: 'Model B',
    discription: 'Description for Car 2',
    image: 'car2.jpg',
    finance_fee: 18000.75,
    total_amount: 28000.25,
    duration: 7
  )

Car.create(
    name: 'Car 3',
    model: 'Model C',
    discription: 'Description for Car 3',
    image: 'car3.jpg',
    finance_fee: 20000.0,
    total_amount: 30000.0,
    duration: 4
  )

Car.create(
    name: 'Car 4',
    model: 'Model D',
    discription: 'Description for Car 4',
    image: 'car4.jpg',
    finance_fee: 22000.50,
    total_amount: 32000.75,
    duration: 6
  )

Car.create(
    name: 'Car 5',
    model: 'Model E',
    discription: 'Description for Car 5',
    image: 'car5.jpg',
    finance_fee: 19000.25,
    total_amount: 29000.50,
    duration: 8
  )