class M
  def method_missing(m,*args)
    puts "call:#{m}"
  end
end

M.new.k

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
