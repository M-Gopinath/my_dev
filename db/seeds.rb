# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding roles for application:"

Role.where(name: "SUPERADMIN", short_name: "SA", description: "Have all access to the application.").first_or_create
Role.where(name: "MANAGER", short_name: "MGR", description: "Have all access except creating new user to the application.").first_or_create
Role.where(name: "EMPLOYEE", short_name: "EMP", description: "Have limited access to the application.").first_or_create

puts "Seeding users for application:"

User.create([
	{email: "superadmin@mail.com", password: "superadmin@mail.com", password_confirmation: "superadmin@mail.com", role_id: 1},
	{email: "manager@mail.com", password: "manager@mail.com", password_confirmation: "manager@mail.com", role_id: 2},
	{email: "employee@mail.com", password: "employee@mail.com", password_confirmation: "employee@mail.com", role_id: 3}])
