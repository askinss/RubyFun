class AttrTrick
  attr_accessor :name
  def initialize args
    self.name=args[:name]
  end  
  
  def f_set_name _name
    name=_name
  end
  
  def t_set_name _name
    self.name=_name
  end
end

at=AttrTrick.new(:name=>'Jack')
puts at.name
at.f_set_name 'Tom'
puts at.name
at.t_set_name 'Tom'
puts at.name

# Ruby 不知是局部变量赋值还是拟太方法，默认局部变量