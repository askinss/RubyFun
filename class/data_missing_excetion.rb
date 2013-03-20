class DataMissingError<StandardError

end

class S
  def self.s
    raise DataMissingError.new,"ddd"
      end
      
      def self.ss
        begin
          s
        rescue DataMissingError=>e
          puts e.message
          puts e.backtrace
        end
      end
end

S.ss

