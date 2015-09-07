def change_capitalize(string)
  if string.size > 10
    string = string.upcase
  end
  return string
end

input_string = ARGV[0]
p change_capitalize(input_string)