module Me
  def get
    puts 'module Me#get()'
  end
end

obj=Object.new
obj.extend Me
obj.get

class I
  extend Me
end

I.get