class DD
  def self.r i
    if i==0
      return 1,2
    end
    return nil
  end
end

a,b=DD.r(2)
puts a
puts b
puts a.class
puts b.class

puts DD.r(1).class

a,b,c=DD.r 0
puts c
puts c.class
puts b
puts b.class