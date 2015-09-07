#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.


class BookInStock
end

a_book = BookInStock.new
p a_book
another_book = BookInStock.new
p another_book

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock.rb
class BookInStock      
  attr_reader :isbn, :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end  
end

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_1.rb
b1 = BookInStock.new("isbn1", 3)
p b1

b2 = BookInStock.new("isbn2", 3.14)
p b2

b3 = BookInStock.new("isbn3", "5.67")
p b3

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_1a.rb
b1 = BookInStock.new("isbn1", 3)
puts b1

b2 = BookInStock.new("isbn2", 3.14)
puts b2

b3 = BookInStock.new("isbn3", "5.67")
puts b3

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_2.rb
class BookInStock
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
puts b1
b2 = BookInStock.new("isbn2", 3.14)
puts b2
b3 = BookInStock.new("isbn3", "5.67")
puts b3

