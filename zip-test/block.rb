class Student
  attr_accessor :name,:age
  
  @address='NY'
  
  def initialize(name)
    @name=name
  end
  
def get_name
  puts @name
end

def self.s
  @address='BJ'
end
def self.g
  puts @address
end

end

def add_m(c)
  c.class_eval do
    def get_n; @name; end
  end
end

s=Student.new 'jack'
Student.s
Student.g
# 
# m=s.method :get_name
# m.call
# 
# add_m Student
# puts s.get_n

# pro=proc {{:name=>'jack',:age=>12}}
# s=Student.new(pro)
# puts s.name.call[:name]


# def add(a,b)
  # yield(a,b)
# end
# 
# def padd(a,b,&p)
  # add(a,b,&p)
# end
# 
# puts padd(1,2) {|x,y| x+y}

# module Kernel
  # def using(resource)
    # begin
      # yield
    # ensure
      # puts 'nil'
      # resource.dispose()
      # # puts resource.name
    # end
  # end
# end
# 
# s=Student.new('jack',12)
# using(s){
  # puts s.name
# }
# puts s.age


# class I
  # def initialize
    # @i=12
  # end
  # def get
    # puts @i
  # end
# end
# 
# ii=I.new
# ii.instance_eval do
  # @i="jack"
# end
# 
# ii.get


# def d(c)
  # c.call*2
# end
# 
# l=lambda {return 10}
# puts d(l)
# 
# # p=proc {return 10} #error
# p=proc {10} # ok
# puts d(p)


























