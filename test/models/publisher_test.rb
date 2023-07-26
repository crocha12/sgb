require "test_helper"

class PublisherTest < ActiveSupport::TestCase
  test "should create publisher" do
    publisher = Publisher.new(name: "Publisher A")
    assert publisher.save
  end

  test "should publisher have books" do
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567890")
    assert publisher.books.size == 1
  end

  test "should publisher does not have books" do
    publisher = Publisher.new(name: "Publisher A")
    assert publisher.save
    assert publisher.books.size == 0
  end

  test "should publisher have many books" do
    publisher = Publisher.create(name: "Publisher A")
    book1 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567890")
    book2 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567891")
    assert publisher.books.size == 2
  end
end
