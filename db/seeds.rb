# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ExpenseType.create(name: 'Food',description: "Food and Resturant expense")
ExpenseType.create(name: 'Entertainment', description: "Entertainment Moovie and Other")
ExpenseType.create(name: 'Education', description: "Education tutorail and Meetup")
ExpenseType.create(name: 'Rent', description: "PG Rent and Hotel Charges")
ExpenseType.create(name: 'Travel', description: "Going anywhere like temple and mall")
ExpenseType.create(name: 'Donation', description: "Donation to temple,person")
ExpenseType.create(name: 'Saving', description: "FD and Other way")
ExpenseType.create(name: 'Loan', description: "Education Loan or credit card")
ExpenseType.create(name: 'Billing', description: "Recharge and Electricity Bill")
ExpenseType.create(name: 'Home', description: "Requirement at Home")
ExpenseType.create(name: 'Daily Items', description: "Daily Use things")