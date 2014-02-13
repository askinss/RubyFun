require 'god'
God.watch do |w|
 w.name='simple'
 w.start='ruby /home/wangsong/project/charlot/RubyFun/god/simple.rb'
   w.keepalive(:memory_max => 150.megabytes,
              :cpu_max => 50.percent)
end
