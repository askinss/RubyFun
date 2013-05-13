module Foo
 def  get_ref
    BarItem.find(self.refKey)
 end
 class_eval %(

    get_ref.instance_variales.each do |attr|
       
    end
  )
end
 
require_relative 'base_class.rb'

class Bar<BaseClass
  attr_accessor :key,:refKey
#  
   # def get_ref
     # BarItem.find(@refKey)
   # end
    include Foo
end

class BarItem<BaseClass
  attr_accessor :key,:name,:address
  
end
arr=Array.new(10) {|i| i } 
    arr.each do |i|
      i=i.to_s
      b=BarItem.new(:key=>'item'+s,:address=>'address'+i)
      b.save
 end
    
bar=Bar.new(:key=>'bar1',:refKey=>'item1')
puts bar.get
