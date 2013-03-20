class People
  attr_accessor :name,:sex
  def initialize args
    self.name=args[:name]
  end
  def die
    puts "hello, god my name is #{self.name}..."
  end
  def angry
    puts "i am angry!"
  end
end

class Man<People
  attr_accessor :wife
  
  def marry
    puts "i am marrid, oh...really.... you kown..."
  end
  
  def angry
    super
    puts "but #{self.name}, angry is not good.."
  end
end

class Boy<Man
  attr_accessor :school
  def initialize args
    super
    self.school=args[:school]
  end
  
  def marry
    puts 'marry? i am a boy, that is too crazy!'
  end
end

j=Boy.new(:name=>"jack",:school=>"CZ")
j.die
j.angry
j.marry
puts j.school
puts "my school is #{j.school}"

m=Man.new(:name=>"jack's dad")
m.marry