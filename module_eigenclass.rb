module Me
  def get
    puts 'module Me # get'
  end
end

class I
  class<<self
  include Me
  end
end

I.get

obj=Object.new
class <<obj
  include Me
end
obj.get
puts obj.singleton_methods