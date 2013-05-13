# module Filters
  # def self.included(base)
    # base.class_eval do
      # extend ClassMethods
      # include Filters::InstanceMethods
    # end
  # end
#   
  # module ClassMethods
    # def append_before_filter(*filters,&block)
      # filter_chain.append_filter_to_chain(filters,:before,&block)
    # end
    # alias :before_filter :append_before_filter
  # end
#   
  # module InstanceMethods
    # private
    # def run_before_filters(chain,index,nesting)
      # while chain[index]
        # filter=chain[index]
        # break unless filter
        # filter.call(self)
      # end
    # end
  # end
# end
# 
# 

