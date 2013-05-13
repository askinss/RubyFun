require 'redis'

class BaseClass
  attr_accessor :created_at
  $redis=Redis.new
  def initialize args={}
    puts self.class.name
    if args.count>0
      args.each do |k,v|
        instance_variable_set "@#{k}",v
      end
    end
  end

  def save
    # return false  if $redis.exists @key
    instance_variables.each do |attr|
      $redis.hset @key,attr.to_s.sub(/@/,''),instance_variable_get(attr)
    end
    $redis.hset @key,'created_at',Time.now.to_i
  end

  def update
  end

  def self.find key
    if $redis.exists key
    return self.new($redis.hgetall key)
    end
    return nil
  end

  def destory
    if $redis.exists @key
    $redis.del @key
    return true
    end
    return false
  end

end