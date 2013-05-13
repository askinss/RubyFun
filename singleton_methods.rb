str='i am from china'
def str.title?
  self.upcase==self
end
puts str.title?

#puts str.methods
puts str.singleton_methods