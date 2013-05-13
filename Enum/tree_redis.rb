require 'rubygems'
require 'redis'
require 'json'

class T
  def initialize
    @r=Redis.new(:host=>'192.168.0.138',:port=>6378)
  end
  
  def set
  @r.hset('tree','root','mgs01')
  arr={1=>2,3=>4,5=>[1,2,3,4]}
   @r.hset('tree','child',arr.to_json)
  end
  
  def get
    puts @r.hget('tree','root')
     c= @r.hget('tree','child')
    puts c.class
    json=JSON.parse(c)
    puts json["5"]
    puts json["5"].class
    puts json.class
  end
end

t=T.new
t.set
t.getclaer
