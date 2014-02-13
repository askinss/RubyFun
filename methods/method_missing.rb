class M
  def method_missing(m,*args)
    puts "call:#{m}:#{args}"
  end

  def k *a
    puts a
  end
end

M.new.k? 5555,{:a=>3}
M.new.k 5555,{:a=>3}
module MM
  def self.method_missing(m,args)
    # begin
    send(m,args)
  # rescue Exception=>e
  # puts e.message
  # end
  end

  def self.ok args
    # raise( RuntimeError, "no address of hash" )  unless args[:address]
    begin
      raise( RuntimeError, "no address of hash" )  unless args[:address]
    rescue Exception=>e
      puts e.message
    end
  end
end

MM.ok(:name=>"jack",:age=>12)
class A
  class <<self
    [:a?,:b?].each do |w|
      define_method(w){|*args,&block|
        puts w
        puts args.class
        puts block_given?
      }
    end
  end
end

A.a? 12.2,234,3,3
A.b?(1233){puts 'a'} 