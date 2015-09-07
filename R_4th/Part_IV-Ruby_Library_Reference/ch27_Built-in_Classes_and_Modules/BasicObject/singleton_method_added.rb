module Chatty
  def Chatty.singleton_method_added(id)
    puts "Adding #{id.id2name}"
  end
  def self.one()     end
  def two()          end
  def Chatty.three() end
end

obj = "cat"
def obj.singleton_method_added(id)
  puts "Adding #{id} to #{self}"
end
def obj.speak
  puts "meow"
end