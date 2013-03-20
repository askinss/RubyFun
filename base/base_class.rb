require_relative 'hook.rb'
class BaseClass
  def initialize args={}
    args.each do |attr,value|
     self.instance_variable_set "@#{attr}",value
    end
  end
  
  extend Hook
  
  before(:b) {["a"]}
  
  def b 
    puts "bnnn"
  end
  
  def a
    puts "aaa"
  end
end

BaseClass.new.a