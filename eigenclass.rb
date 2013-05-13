# class I
  # def get
    # puts 'this is method: get'
  # end
# end
# 
# i=I.new
# puts i.class
# 
# def i.set
  # puts 'this is method of i: set'
# end
# 
# i.set
# 
# eigenclass=class<<i
  # self
# end
# 
# puts eigenclass.class 

class C
  def a_method
   puts 'C#a_method()'
  end
end

class D<C
  
end

obj=D.new
obj.a_method

class Object
  def eigenclass
    class<<self
      self
    end
  end
end

puts 'abc'.eigenclass

class<<obj
  def a_singleton_method
    puts 'obj#a_singleton_method()'
  end
end

puts obj.eigenclass
obj.a_singleton_method
puts obj.eigenclass.superclass
puts D.eigenclass.superclass
puts C.eigenclass.superclass
puts Object.eigenclass.superclass
puts BasicObject.eigenclass.superclass
puts Class.eigenclass.superclass
puts Module.eigenclass.superclass










