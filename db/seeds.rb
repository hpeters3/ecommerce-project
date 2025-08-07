i = 0
id = 1

while i < 100
    book = Book.new
    book.id = id
    book.title = Faker::Book.title
    book.author = Faker::Book.author
    book.genre = Faker::Book.genre
    book.price = Faker::Commerce.price(range: 15.0..75.0, as_string: true)
    book.save!

    i += 1
    id += 1
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
