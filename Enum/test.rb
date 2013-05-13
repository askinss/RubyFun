

require_relative 'color'
  
class Test

 def put_colors
   
  SColor.all.each{|i| puts "key:#{i.key}  value:#{i.value}  desc:#{i.desc}"}
  puts SColor::BLUE
 
 puts SColor.get(:RED).desc
  
 end
 
end

t=Test.new
t.put_colors