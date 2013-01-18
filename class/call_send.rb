require 'rails'
 require_relative 'send.rb'

module CallSend
  def self.calls
    return eval("send".camelize).send :get
  end
end

puts CallSend.calls