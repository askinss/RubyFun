arr=[1,23]
e='kaka'
eval('arr<<e')
puts arr

module SD
  def self.do
    self.send(:po)
  end
  def self.po
    puts '88888888888888888'
  end
end

SD.do


class D
  def d 
    puts self.class.name
  end
  def self.dd
    puts name
  end
end
class DD<D
  
end

DD.new.d
DD.dd