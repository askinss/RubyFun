require 'zip/zip'

class Z
  def self.dozip

    begin
      zipfile_name = "archive.zip"
      Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|

        File.open('test.rb', 'w+') do |f2|
          f2.puts "Created by Satish\nThank Goddddd!"
        end

        zipfile.add("tesdt.rb", "test.rb")

      end
    rescue Exception=>e
      puts e
    end
  end
  
  def self.del
    if File.exists? 'ClassF/d.rb'
      puts 'dd'
    File.delete('ClassF/d.rb')
    end
  end
end
 Z.dozip
 