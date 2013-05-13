class MyClass
  def test
    @var=10
    add()
    self
  end
  def add
    @var+=1
  end
end

m=MyClass.new
puts m.test.instance_variables
