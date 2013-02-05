class D
  @@t={:c=>"client",:s=>"supplier"}
  def self.g t
    puts @@t[t]
  end
  
  def self.c a
    if a==:a
      puts a
      puts a.class
    end
  end
end

D.g :c
D.g :s

D.c :b
D.c :a