require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  test "should create author" do
    author = Author.new(name: "John Doe", birth_date: "1985-05-15", country: "United States")
    assert author.save
  end

  test "should author have books" do
    author = Author.create(name: "John Doe", birth_date: "1985-05-15", country: "United States")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    author.books << book
    assert author.books.count == 1
  end

  test "should author does not have books" do
    author = Author.new(name: "John Doe", birth_date: "1985-05-15", country: "United States")
    assert author.save
    assert author.books.count == 0
  end
end
