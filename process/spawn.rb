pid = spawn({"FOO"=>"BAR", "BAZ"=>nil}, "cd /home/wangsong/project/brilliantech/ifEpm/ && rake resque:work")
puts pid
