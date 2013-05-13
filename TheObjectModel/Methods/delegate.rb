require 'delegate'

class Assistant
  def initialize(name)
    @name=name
  end
  
  def read_email
    "#{@name} It's mostly spam."
  end
  
  def check_schedule
    "#{@name} You have a meeting day."
  end
  
end

class Manager<DelegateClass(Assistant)
  def initialize(assistant)
    super(assistant)
  end
  
  def attend_meeting
    "Please hold my calls."
  end
end

frank=Assistant.new('Frank')
ana=Manager.new(frank)
puts ana.attend_meeting
puts ana.read_email
