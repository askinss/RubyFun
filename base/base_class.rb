class BaseClass
  def initialize args={}
    args.each do |attr,value|
     self.instance_variable_set "@#{attr}",value
    end
  end
end