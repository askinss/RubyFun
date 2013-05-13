class MyClass
  def my(*arg)
    arg[1]*3
  end
end

o=MyClass.new
puts o.send(:my,5,78)
 # puts 'jakc'.to_sym.class
