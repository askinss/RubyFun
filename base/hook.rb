module Hook
  def before(method,&callback)
    add_hook :before,method,&callback
  end

  def hooks
    @hooks||=Hash.new do |h,m|
    h[m]={before:[],hijacked:false}
    end
  end

  def add_hook(where,m,&callback)
    hooks[m][where]<<callback
    ensure_hijacked m if hooks.has_key? m
  end
  
  def ensure_hijacked(m)
    puts hooks[m][:hijacked]||!instance_methods.include?(m)
    puts instance_methods
    return if hooks[m][:hijacked]||!instance_methods.include?(m)
    meth=instance_method m
    _hooks=hooks
    _hooks[m][:hijacked]=true 
    define_method m do |*args,block| 
     _hooks[m][:before].each &call
     return_value=meth.bind(self).call(*args,&block)     
    end
  end
end