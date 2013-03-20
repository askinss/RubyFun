class ClassBeforeFilter<BaseClass
  attr_accessor :name
  extend BeforeFilter
  before_filter :
end

module BeforeFilter
  def before_filter *args
  end   
end