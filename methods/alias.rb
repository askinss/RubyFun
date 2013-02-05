class A

  def get
    puts "pp"
  end
    alias :g :get
end

A.new.g 
