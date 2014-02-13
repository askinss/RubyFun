class S
  def a s
    puts s
  end
end

class SS<S
  def a ss
    ss+="jack"
    super
  end
end

s=SS.new
s.a("ddd")

