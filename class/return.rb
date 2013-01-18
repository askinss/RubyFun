class S
  def self.g b
    if b
    return
    end
  end
end

S.g true
S.g false
class D
  def self.get a,b
    a=12
    b="bbb"
  end

  def get a,b
    a=12
    b="bbb"
  end

end

a=13
b="b"
D.get a,b
puts a,b
D.new.get a,b
puts a,b
