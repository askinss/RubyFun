class Block
  def self.doit
    if block_given?
      puts 'block'
      puts yield(23,12)
    else
      puts "no block"
    end
  end

  def self.hi
    if block_given?
      puts yield(12,2)
    else
    end
  end
end

class CBlock<Block
  def self.doit
    # block=Proc.new
    super {|a,b| puts a+b}
  end
  
  def self.hi
    block=Proc.new {|x,y| puts x+y}
    super &block
  end
end

# CBlock.hi

