#encoding: utf-8
class Exec
  def self.ex a
    begin
          raise( ArgumentError, "格式错误" )  unless a.is_a?(String)
           raise( ArgumentError, "格式错误" )  unless a.is_a?(Array)
     rescue Exception => e
        # puts e.to_s
      end
  end
   def self.aex a
    begin
          raise( ArgumentError, "格式错误" )  unless a.is_a?(String)
             raise( ArgumentError, "格式错误" )  unless a.is_a?(Array)
     rescue ArgumentError => e
        # puts e.to_s
        a=1
      end
  end
  
  def self.noex a
   a=1 unless a.is_a?(String)
     a=1 unless a.is_a?(Array)
  end
end

t=10
start=Time.now
puts start
t.times{Exec.ex(1)}
send=Time.now
puts send
puts send-start

start=Time.now
puts start
t.times{Exec.noex(1)}
send=Time.now
puts send
puts send-start

start=Time.now
puts start
t.times{Exec.aex(1)}
send=Time.now
puts send
puts send-start


