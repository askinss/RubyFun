class A
  def self.p
    a=[[1,2],[1,2],[1,3]]
    b=[1,2,3,4,4,5].delete(4)
   # b.delete(4)
    a.delete([1,2])
    puts b
    puts a
  end
end

A.p