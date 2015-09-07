original_array = [1, 3, 5, 7, 9, 11]
target_arry = []

original_array.each do |i|
  # target_arry.push(i + 2)
  target_arry << i + 2
end

p original_array
p target_arry