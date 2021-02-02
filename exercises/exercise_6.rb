require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Sepehr", last_name: "Sobhani", hourly_rate: 55)



@store2.employees.create(first_name: "Mike", last_name: "Denver", hourly_rate: 60)
@store2.employees.create(first_name: "Bob", last_name: "Jones", hourly_rate: 55)
@store2.employees.create(first_name: "Jack", last_name: "Forest", hourly_rate: 50)
@store2.employees.create(first_name: "Cat", last_name: "Dawson", hourly_rate: 45)

