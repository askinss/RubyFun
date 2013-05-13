require 'redis'
class RedisTest
  @@r=Redis.new(:host=>'127.0.0.1',:port=>'6378')
  def self.test_hash_all
    @@r.hmset 'students','stu001','jack','stu002','tom','stu003','tom'
    count=@@r.hlen
    puts "count: #{count}"
    for i in 0...count 
       
    end
  end
end