require "test_helper"

class LoanTest < ActiveSupport::TestCase
  test "should create loan" do
    client = Client.create(name: "John Doe", address: "Street 1", phone: "123456789")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    loan = Loan.create(book: book, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    assert loan.save
  end

  test "should loan have one client" do
    client = Client.create(name: "John Doe", address: "Street 1", phone: "123456789")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    loan = Loan.create(book: book, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    assert loan.client == client
  end

  test "should loan have one book" do
    client = Client.create(name: "John Doe", address: "Street 1", phone: "123456789")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10)
    loan = Loan.create(book: book, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    assert loan.book == book
  end
end
