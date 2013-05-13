class Lay
  def method_missing(method,*args)
    puts "u called: #{method}"
    puts args
  end
end

l=Lay.new
l.get('b','c','a')
