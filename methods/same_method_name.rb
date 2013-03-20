class Sam
  def self.get
    puts "from class method"
  end
  
  def get
    puts "from instance method"
  end
end

Sam.get
Sam.new.get