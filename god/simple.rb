i=0
loop do
  # puts 'Hello'
  # 100000.times { data << 'x' }
  File.open('/home/wangsong/project/charlot/RubyFun/god/simple.md','a') do |file|
    file.puts i+=1
  end
  sleep 10
end