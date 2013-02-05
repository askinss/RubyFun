class Attr
  def name=value
    @name=value
  end
  def name
    @name
  end
end

a=Attr.new
a.name='Jack'
puts a.name
