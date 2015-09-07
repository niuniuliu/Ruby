movies = {
  Transformers: 5,
  "The Pursuit" => 4.5,
  District: 4
}
puts "What's your favorite movie?"

choice = gets.chomp.capitalize

# movies[choice]

if !choice.nil? && movies[choice.to_sym]
    puts "The movies \"<#{choice}>\" rating is #{movies[choice.to_sym]}."
else
    puts "Sorry, the movie your input \"<#{choice}>\" is not existing in our database."
end
