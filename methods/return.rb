class A
  def self.g a
   c=1 if a==0
   return c,1
  end
end

puts A.g 0
puts A.g(1)[0].class
