class C
  attr_accessor :age,:name
  def age
    puts @age.to_f
  end 
end

c=C.new
c.age=12
c.age
