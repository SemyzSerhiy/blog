# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
require 'faker'

password = 'password'

user = User.create(
  username: Faker::Internet.user_name,
  password: password
)

billing_infos = BillingInfo.create(
  last4: Faker::Number.number(4),
  country: Faker::Address.country,
  brand: Faker::Business.credit_card_type,
  user_id: User.last.id { |users| (p users.id)}
)

books = Book.create(
  body: Faker::Book.title,
)

books_users = BookUser.create(
  user_id: User.last.id { |userss| (p userss.id)},
  book_id: Book.last.id { |bookis| (p bookis.id)}
)
