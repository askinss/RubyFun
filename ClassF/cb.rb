require 'active_support'

class Record
  include ActiveSupport::Callbacks
  define_callbacks :save
  def save
    run_callbacks :save do
      puts "- save"
    end
  end
end

class PersonRecord < Record
  attr_accessor :name,:age
  set_callback :save, :before, :saving_message
  def saving_message
    puts "saving..."
    puts self.name
  end

  set_callback :save, :after do
    puts self.name
    puts self.age
    puts "saved"
  end

end

person = PersonRecord.new
person.name='jack'
person.age=12
person.save