module SaveCallback
  def self.included(base)
    base.send :extend , ClassMethods
  end

  def save
    self.class.save_callbacks[:before].each do |method|
      self.send(method.to_sym)
    end 
    
    self.class.save_callbacks[:after].each do |method|
      self.send(method.to_sym)
    end
    r
  end

  protected

  def save_impl
    puts "save"
  end

  module ClassMethods
    def self.extended(base)
      (class<<base;self;end).send(:define_method,:callbacks) do
        @callbacks ||= {}
        @callbacks[:before] ||= []
        @callbacks[:after]  ||= []
        @callbacks
      end
    end
   
   [:before_save,:after_save].each do |m|
     define_method(m){
       
     }
   end
 
    def before_save(*methods)
      before_save_callbacks = save_callbacks[:before]
      methods.each do |method|
        before_save_callbacks << method.to_s.strip if method.to_s.strip =~ /\S/
      end
    end
 
    def after_save(*methods)
      before_save_callbacks = save_callbacks[:after]
      methods.each do |method|
        before_save_callbacks << method.to_s.strip if method.to_s.strip =~ /\S/
      end
    end

  end
end

class A
  
  include SaveCallback
  before_save :br 
  after_save :ar 
  
  def br;  puts "br_save" ;  end
  def ar; puts "ar_save"; end 
end
 
a = A.new
a.save
 