class Student
  attr_accessor :name,:age
  def initialize 
    yield self if block_given?
  end
end

stu=Student.new do |s|
  s.name='Jack'
  s.age=23
end

puts stu.name
