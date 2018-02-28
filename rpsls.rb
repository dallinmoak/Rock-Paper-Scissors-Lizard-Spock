require_relative "get_input"

plays = {
  "rock" => ["lizard", "scissors"],
  "paper" => ["rock", "spock"],
  "scissors" => ["paper", "lizard"],
  "lizard" => ["paper", "spock"],
  "spock" => ["rock", "scissors"]
}

puts "lets play rock paper scissors spock!"
done = false
while !done
  play = get_input("1..2..3..PLAY: ", ["rock", "paper", "sissors","lizard","spock"])
  comp_play = plays.key plays.values.sample 
  # comp_play = "paper"
  print "your play: #{play}\n"
  print "computer play: #{ comp_play}\n"

  if play == comp_play
    puts "Tie"
  elsif plays[play].include? comp_play
    puts "#{play} beats #{comp_play} You win"
  else
    puts "#{comp_play} beats #{play}. I win"
  end
  ans = get_input("done? (y/n): ", ["y", "n"])
  done = true if ans == "y"
end
    
  