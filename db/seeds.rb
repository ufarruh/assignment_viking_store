# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Product.destroy_all
Phone.destroy_all
Category.destroy_all

def generate_user
  u = User.new
  u.first_name = "#{Faker::Name.first_name}"
  u.last_name = "#{Faker::Name.last_name}"
  u.email = "#{Faker::Internet.email}"
  u.save!  
end 

def generate_products
  p = Product.new
  p.title = "#{Faker::Commerce.product_name}"
  p.description = "#{Faker::Lorem.paragraph}"
  p.price = Faker::Commerce.price
  p.sku_number = Faker::Number.number(8)
  p.category_id = rand(1..30)
  p.save!
end  
 

def generate_category
  c = Category.new
  c.title = Faker::Commerce.department(2, true)
  c.user_id = rand(1..100)
  c.save!
end


100.times do |num|  
  generate_user
  generate_products
end

30.times { generate_category }





