class Student
  def get_jack
    @name='jack'
  end
end

s=Student.new
puts s.instance_variables
puts s.methods.grep(/^get/)
s.get_jack
puts s.instance_variables
puts s.methods.grep(/^get/)


puts '--------------------'
puts String.methods
puts '////////////////////'
puts String.instance_methods
