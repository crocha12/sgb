author1 = Author.create(name: "John Doe", birth_date: "1985-05-15", country: "United States")
author2 = Author.create(name: "Jane Smith", birth_date: "1978-11-22", country: "Canada")
author3 = Author.create(name: "Michael Johnson", birth_date: "1990-07-10", country: "United Kingdom")

publisher1 = Publisher.create(name: "ABC Publications")
publisher2 = Publisher.create(name: "XYZ Books")

book1 = Book.create(title: "Ruby Programming", publisher: publisher1, amount: 10)
book2 = Book.create(title: "Python for Beginners", publisher: publisher2, amount: 15)
book3 = Book.create(title: "Java Fundamentals", publisher: publisher1, amount: 8)

book1.authors << author1
book1.authors << author3
book2.authors << author2
book3.authors << author3

client1 = Client.create(name: "Alice Johnson", address: "123 Main St", phone: "555-1234")
client2 = Client.create(name: "Bob Smith", address: "456 Oak Ave", phone: "555-5678")

loan1 = Loan.create(book: book1, client: client1, start_date: "2023-07-01", end_date: "2023-07-15")
loan2 = Loan.create(book: book2, client: client2, start_date: "2023-07-05", end_date: "2023-07-20")
