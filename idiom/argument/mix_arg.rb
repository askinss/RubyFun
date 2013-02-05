def me *args
  puts args.class
  args
end

puts me :x,:y=>1,:z=>'A'
