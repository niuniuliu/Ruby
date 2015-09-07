=begin
class AccTest
  def pub
    puts "pub is a public method."
  end

  public :pub  # pub set to public

  def priv
    puts "priv is a private method."
  end

  private :priv # set priv to private method

end
=end

# Below method is for mutilple public or private method define at one time

class AccTest
  public

  def pub
    puts "pub is a public method."
  end

  private
  def priv
    puts "priv is a private method."
  end

end


acc = AccTest.new

acc.pub
acc.private