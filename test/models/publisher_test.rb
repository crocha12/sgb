require "test_helper"

class PublisherTest < ActiveSupport::TestCase
  test "should create publisher" do
    publisher = Publisher.new(name: "Publisher A")
    assert publisher.save
  end

  test "should publisher have books" do
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    assert publisher.books.count == 1
  end

  test "should publisher does not have books" do
    publisher = Publisher.new(name: "Publisher A")
    assert publisher.save
    assert publisher.books.count == 0
  end

  test "should publisher have many books" do
    publisher = Publisher.create(name: "Publisher A")
    book1 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    book2 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    assert publisher.books.count == 2
  end
end
