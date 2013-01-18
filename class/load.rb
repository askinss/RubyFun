class L
  def self.get d
    puts d
    a
    return yield if block_given?
    return 0
  end
end

puts L.get load('class/block.rb')

