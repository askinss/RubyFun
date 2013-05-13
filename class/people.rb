class Object
  def eigenclass
    class << self;self;end
  end
end
class People
  def self.name 
    puts 'people'
  end
  def self.age
    puts 100
  end
end

class Father<People
  class<<self
   def address
     puts "China"
   end
  end
  def self.age
    puts 23
  end
  def father
    puts "jack"
  end
end

# def Father.name
  # puts "jack"
# end

class Son<Father
  
end
Son.address
Father.address
son=Son.new
son.father
puts son.eigenclass
puts Son.eigenclass
puts Father.eigenclass
 
puts son.eigenclass.superclass
puts Son.eigenclass.superclass
puts Father.eigenclass.superclass
 