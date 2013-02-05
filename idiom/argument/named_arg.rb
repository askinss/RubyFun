def me args
  puts args.class
  args
end

puts  me({:name=>'jack',:age=>12})
