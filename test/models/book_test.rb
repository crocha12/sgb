require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should create book" do
    publisher = Publisher.create(name: "Publisher A")
    book = Book.new(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    assert book.save
  end

  test "should book have one authors" do
    author = Author.create(name: "John Doe", birth_date: "1985-05-15", country: "United States")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    book.authors << author
    assert book.authors.count == 1
  end

  test "should book have many authors" do
    author1 = Author.create(name: "John Doe", birth_date: "1985-05-15", country: "United States")
    author2 = Author.create(name: "Jane Doe", birth_date: "1985-05-15", country: "United States")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    book.authors << author1
    book.authors << author2
    assert book.authors.count == 2
  end
end
