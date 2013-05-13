class A
    attr_accessor :name,:age
    def initialize(name,age)
      self.name=name
      self.age=age
    end
    def self.get_all
      arr=[]
      for i in 1...3 
        arr<<A.new("name:#{i}",i)
      end
      arr
    end
    def self.do_collect a
      puts a.collect{|i| i.name}.include?('name:1')
    end
end

as=A.get_all
# as.each do |a|
  # puts a.name
# end
 
 
A.do_collect as