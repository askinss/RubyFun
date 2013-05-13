require 'net/http'
class U
  def get
    uri=URI.parse('http://0.0.0.0:3000')
    puts uri.host
    puts uri.port
  end
end

u=U.new
u.get