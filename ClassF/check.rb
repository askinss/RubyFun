module CheckedAttributes
  def self.included(base)
    base.extend ClassMethods
  end
  module ClassMethods
    def attr_checked(attr,&v)
      define_method "#{attr}=" do |value|
        raise 'invalid atrr' unless v.call(value)
        instance_variable_set("@#{attr}",value)
      end
        
     define_method attr do
       instance_variable_get "@#{attr}"
     end   
    end
  end
end

class Stu
  include CheckedAttributes
  
  attr_checked :age do |v|
    v>18
  end 
end

s=Stu.new
s.age=2