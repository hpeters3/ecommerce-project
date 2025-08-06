i = 0
id = 1

while i < 100
    book = Book.new
    book.id = id
    book.title = Faker::Book.title
    book.author = Faker::Book.author
    book.genre = Faker::Book.genre
    book.price = Faker::Commerce.price(range: 0..10.0, as_string: true)
    book.save!

    i += 1
    id += 1
end
