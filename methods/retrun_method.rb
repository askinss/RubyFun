class M
  def self.one
    return 1
  end
  def self.two
    return 1,2
  end
end


a,b=M.one
puts b.class