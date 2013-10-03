require_relative 'config'
require 'faker'
require_relative '../app/models/teacher'


  9.times do
    teacher = Teacher.new
    teacher.first_name = Faker::Name.first_name
    teacher.last_name = Faker::Name.last_name
    teacher.email = Faker::Internet.email
    teacher.phone = Faker::PhoneNumber.phone_number
    teacher.save
  end





