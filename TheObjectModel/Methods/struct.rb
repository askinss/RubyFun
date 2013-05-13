class MStruct
  def initialize
    @attributes={}
  end
  def method_missing(name,*args)
    attribute=name.to_s
    if attribute=~ /=$/
      @attributes[attribute.chop]=args[0]
    else
      @attributes[attribute]
    end
  end
end


s=MStruct.new
s.name="jack"
puts s.name 