require 'date'
# 
# class String
  # def is_date?
    # temp=self.gsub(/[-.\/]/, '')
    # puts temp
    # puts temp.to_i
    # begin
      # if temp.to_i
        # ['%Y%m%d'].each do |f|
          # return true if Date.strptime(temp, f)
        # end
      # end
    # rescue
    # #do nothing
    # end
    # return false
  # end
# end
# 
# puts "test".is_date?
# puts "2010-12-1".is_date?
# puts '2012/12/1dd2'.is_date?
# 
# puts '1d#$ d2'.to_i
# # puts Date.valid_date?('2012','12','1dd2')
# 
# puts '1237-02-1d2'.match(/^\d{4}-(0?[1-9]|1[0-2])-(0?[1-9]|[1-2]\d|3[0-1])$/)
# 
# puts Date.parse('2013-11-01') < Date.today
class D
   def self.working_days_from_date(date)
          date = date + 1.day if date.cwday == 6
          day_of_the_week = date.cwday == 7 ? 0 : date.cwday
          calendar_days, business_days = self, self
          result_date = day_of_the_week + business_days
          if (result_date >= 6)
            business_days -= (6 - day_of_the_week)
            calendar_days += 2
            weeks = business_days / 5
            calendar_days += (weeks * 2)
          end
          date + calendar_days.days
        end
end
puts D.working_days_from_date( Date.parse('2013-11-01'))
