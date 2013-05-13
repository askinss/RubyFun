require 'net/http'
require 'json'
require 'uri'
class User
  def get
    Net::HTTP.start('localhost',3000) do |h|
      res=h.get('/users/get?id=2','Accept'=>'application/json')
      puts res.code
      jack=JSON.parse( res.body)
      puts jack
      jack={}
      puts jack.class
      puts res.message
    end
  end
  
  def set
    p={:name=>'john'}
    # uri=URI.parse('')
   res= Net::HTTP.post_form(URI.parse('http://localhost:3000/users/set'),p)
   puts res.body
  end
  
end

u=User.new
# u.get
u.set