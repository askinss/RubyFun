# class String
# alias :real_len :length
# def length
# 'kakak'
# end
# end
#
# puts 'abc'.length
# puts 'abc'.real_len
class A
  def a
    puts 'i-obj#a()'
  end
  alias :old :a

  def a
    old
    puts 'ii-obj#a()'
  end

end

i=A.new

i.a
i.old