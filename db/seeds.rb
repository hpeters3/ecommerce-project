i = 0
id = 1

categories = [ :onsale, :nostock, :bestseller, :general ]
category_types = categories.map do |category|
  Category.create!(name: category)
end

while i < 100
    category = category_types.sample
    book = Book.new
    book.id = id
    book.title = Faker::Book.title
    book.author = Faker::Book.author
    book.genre = Faker::Book.genre
    book.price = Faker::Commerce.price(range: 15.0..75.0, as_string: true)
    book.category = category
    book.save!

    id += 1
    i += 1
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
