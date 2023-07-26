require "test_helper"

class ClientTest < ActiveSupport::TestCase
  test "should create client" do
    client = Client.new(name: "John Doe", address: "Street 1", phone: "123456789")
    assert client.save
  end

  test "should client have one loan" do
    client = Client.create(name: "John Doe", address: "Street 1", phone: "123456789")
    publisher = Publisher.create(name: "Publisher A")
    book = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567890")
    loan = Loan.create(book: book, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    assert client.loans.size == 1
  end

  test "should client have many loans" do
    client = Client.create(name: "John Doe", address: "Street 1", phone: "123456789")
    publisher = Publisher.create(name: "Publisher A")
    book1 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567890")
    book2 = Book.create(title: "Ruby Programming", publisher: Publisher.first, amount: 10, isbn: "1234567891")
    loan1 = Loan.create(book: book1, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    loan2 = Loan.create(book: book2, client: client, start_date: Date.today, end_date: Date.today + 7.days)
    assert client.loans.size == 2
  end
end
