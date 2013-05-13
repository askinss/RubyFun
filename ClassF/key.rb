class Key
  attr_accessor :key,:name
  def gen_key
    @key="key:#{@name}"
  end
end

k=Key.new
k.name="dd"
k.gen_key
puts k.key
puts k.instance_variable_get :@key
