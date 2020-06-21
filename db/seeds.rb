# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
	price = 1000 + (i*100)
	description = "A T-shirt is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light and inexpensive fabric and are easy to clean."
  Product.create(name: "T shirts", merchant_name: "Nike", price: price, size: ["S", "M", "L"], colour: ["Blue", "Red", "Black"], description: description) 
end

10.times do |i|
	price = 1000 + (i*100)
	description = "A Casual Shirts is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light and inexpensive fabric and are easy to clean."
  Product.create(name: "Casual Shirts", merchant_name: "Nike", price: price, size: ["S", "M", "L"], colour: ["Blue", "Red", "Black"], description: description) 
end


10.times do |i|
	price = 1000 + (i*100)
	description = "A Formal Shirts is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light and inexpensive fabric and are easy to clean."
  Product.create(name: "Formal Shirts", merchant_name: "Puma", price: price, size: ["S", "M", "L"], colour: ["Blue", "Red", "Black"], description: description) 
end
