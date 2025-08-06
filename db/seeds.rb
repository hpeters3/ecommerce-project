i = 0

while i < 101
    book = Book.new
    book.title = Faker::Book.title
    book.author = Faker::Book.author
    book.genre = Faker::Book.genre
    book.price = Faker::Commerce.price(range: 0..10.0, as_string: true)
    book.save!

    i += 1
end
