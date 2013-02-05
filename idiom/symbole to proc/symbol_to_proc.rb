
names=['jack','tom','bob']
# 1
puts names.map{|name| name.capitalize}

# 2
puts names.map(&:capitalize.to_proc)

# 3
puts names.map(&:capitalize)

puts [1,2,3].inject(0){|memo,obj| memo+obj}
puts [1,2,3].inject(0,&:+)

