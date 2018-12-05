def electionWinner(votes)
  my_hash = Hash.new(0)

   votes.each do |item|
     my_hash[item] += 1
   end

   my_hash = my_hash.sort_by do |k,v|
     [v]
   end

  my_hash.reverse!
  winner, val = my_hash.first

  puts my_hash

  winner

end

votes = ["Alan","Omar","Alan","Ro","Omar","Omar","Ro","Ro"]
winner = electionWinner(votes)
puts "The winner is #{winner}"
