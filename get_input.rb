def get_input prompt, good_input
  good_input = good_input.map{|i| i.to_s}
  print prompt
  outp = gets.chomp
  good = good_input.include?(outp)
  if !good
    while !good
      print "Try again. #{prompt}"
      outp = gets.chomp
      good = true if good_input.include?(outp)
    end
  end
  outp
end