require 'rubygems'
require 'redis'
require 'json'

class AddF
  def initialize
    @redis=Redis.new(:host=>'192.168.0.138',:port=>6378)
  end
  def get
    puts @redis.lrange('f4',0,@redis.llen('f4'))
  end
  def add
    for i in 1..1000
      @redis.lpush('f4',i.to_s)
    end
  end
end

a=AddF.new
 a.add
a.get