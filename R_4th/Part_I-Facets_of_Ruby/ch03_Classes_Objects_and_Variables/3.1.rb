#---
# Excerpted from "Programming Ruby 1.9 and 2.0",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby4 for more book information.

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_3.rb
class BookInStock
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end  
  def isbn
    @isbn
  end

  def price
    @price
  end
  # .. 
end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN   = #{book.isbn}"
puts "Price  = #{book.price}"

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_4.rb
class BookInStock      
  
  attr_reader :isbn, :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end  

  # .. 
end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN   = #{book.isbn}"
puts "Price  = #{book.price}"

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_5.rb
class BookInStock      
  
  attr_reader :isbn, :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end  

  def price=(new_price)
    @price = new_price
  end

  # ...
end

book = BookInStock.new("isbn1", 33.80)
puts "ISBN      = #{book.isbn}"
puts "Price     = #{book.price}"
book.price = book.price * 0.75        # discount price
puts "New price = #{book.price}"

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_6.rb
class BookInStock      
  attr_reader   :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end  
  # ...
end

book = BookInStock.new("isbn1", 33.80)
puts "ISBN      = #{book.isbn}"
puts "Price     = #{book.price}"
book.price = book.price * 0.75        # discount price
puts "New price = #{book.price}"

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_7.rb
class BookInStock      
  
  attr_reader   :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end    
  
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  # ...
end

book = BookInStock.new("isbn1", 33.80)
puts "Price          = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"

#--- http://media.pragprog.com/titles/ruby4/code/tut_classes/stock_stats/book_in_stock_8.rb
class BookInStock      
  
  attr_reader   :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end    
  
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
  # ...
end

book = BookInStock.new("isbn1", 33.80)
puts "Price          = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
book.price_in_cents = 1234
puts "Price          = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
