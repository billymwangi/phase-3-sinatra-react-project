puts "🌱 Seeding spices..."

# Seed your database here
Expense.create(name: "barber", cost: 250)
Expense.create(name: "books", cost: 1000)
Expense.create(name: "grocery shopping", cost: 2000)

Category.create(name:"Utilities")
Category.create(name:"Clothing")
puts "✅ Done seeding!"
