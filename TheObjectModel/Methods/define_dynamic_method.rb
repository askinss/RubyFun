## 
# Module/define_method()
##
class MyClass
  define_method :get do |*arg|
    arg[2]*5
  end
end

o=MyClass.new
puts o.get(12,3,45)
puts o.send(:get,123,43,52)
