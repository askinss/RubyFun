require 'rails'
require 'json'
nd=Class.new
nd.instance_variable_set :@bc,1

puts nd.instance_methods
puts nd.instance_variables
puts nd.to_json