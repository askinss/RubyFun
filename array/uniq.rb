class A
  def self.p
    a=[[1,2],[1,2],[1,3]]
    puts a.uniq
    b = [["student","sam"], ["student","george"], ["teacher","matz"]]
b=b.uniq { |s| s.first } # => [["student", "sam"], ["teacher", "matz"]]
puts b.first
  end
end

A.p