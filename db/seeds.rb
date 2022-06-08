# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

store = Store.find_or_create_by!(name: 'sample')

5.times do
  product = Product.find_or_create_by!(name: FFaker::Product.model, store_id: store.id)
  5.times do
    Comment.find_or_create_by!(product_id: product.id, store_id: store.id, body: FFaker::Lorem.paragraph)
  end
end
