class Entity
  attr_accessor :is_public,:is_department
  def initialize
   [:is_public?,:is_department?].each{|m| Entity.define_boolean_method(m)}
  end
  private
  def self.define_boolean_method m
     define_method(m){
       self.send(m.to_s.sub(/\?/,''))==true
     }
  end
end

e1=Entity.new

e1.is_public =false
e1.is_department =true

puts e1.is_public?
puts e1.is_department?