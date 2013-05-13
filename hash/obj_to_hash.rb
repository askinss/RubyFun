require 'json'
class Stu
  attr_accessor :name,:age
  def initialize args
    self.name=args[:name]
    self.age=args[:age]
  end
end

a=Stu.new(:age=>12,:name=>'aaaa')
puts a
puts a.instance_variables.class.name
s=['aad','bdd',"cadf"]
s.collect! {|x| x.capitalize} # => ["a$", "b$", "c$", "d$"] 
puts s
