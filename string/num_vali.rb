class V
  # vali if string is Number and less than 0
  def self.str_is_notNum_less_zero str
    return /^[\d]+(\.[\d]+){0,1}$/ ===str
  end

  # vali if string is positive integer
  def self.str_is_positive_integer str
    return (/^[1-9]\d*$/ ===str)
  end

end

# puts V.str_is_positive_integer "12"
# puts V.str_is_positive_integer "012"
# puts V.str_is_positive_integer "120"
# puts V.str_is_positive_integer "12d"
# puts V.str_is_positive_integer "1.2"
# puts V.str_is_positive_integer "-12"
# 
# puts V.str_is_positive_integer "-d12"



puts V.str_is_notNum_less_zero '1212'
puts V.str_is_notNum_less_zero '121.2'
puts V.str_is_notNum_less_zero '-1212'
puts V.str_is_notNum_less_zero '-12.12'

puts V.str_is_notNum_less_zero '1212'
puts V.str_is_notNum_less_zero '1212d'
puts V.str_is_notNum_less_zero '1212f'

