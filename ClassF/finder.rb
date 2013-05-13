require 'redis'

$redis=Redis.new
class BaseClass
  def initialize args={}
    if args.count>0
      args.each do |k,v|
        instance_variable_set "@#{k}",v
      end
    end
  end

  def save
    instance_variables.each do |attr|
      $redis.hset @key,attr.to_s.sub(/@/,''),instance_variable_get(attr) if instance_variable_defined?(attr)
    end
    return true
  end

  def self.find key
    if $redis.exists key
      c=self.new
      ($redis.hgetall key).each do |k,v|
        c.instance_variable_set "@#{k}",v
      end
    return c
    end
    return nil
  end

end

class Finder<BaseClass
  attr_accessor :key,:name,:age,:address
  def d
    @address='CHINA'
  end
end

f=Finder.new(:key=>'tom',:age=>12,:name=>'jack')
f.d
puts f.save

ff=Finder.find("tom")

puts ff.age

# class S
  # attr_accessor :name
  # def dd
    # name
  # end
  # def d
     # name='tom'
    # puts name
  # end
# end
# 
# s=S.new
# s.name='jack'
# s.d
# puts s.name

# puts s.methods


