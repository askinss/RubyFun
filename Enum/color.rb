require_relative "enum"

class SColor
  include Enum   
  SColor.define  :BLUE, 0, "blue"
  SColor.define  :RED, 1, "red"
end

puts SColor.get_by_value(SColor::BLUE)
