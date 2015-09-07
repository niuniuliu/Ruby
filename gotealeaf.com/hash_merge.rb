# opposites = {positive: "negative", up: "down", right: "left"}

# opposites.keys.each {|key| p key}

# opposites.values.each {|value| p value}

# opposites.each do |k, v|
#   p k
#   p v
# end

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person.has_key?(:name)

# p person.has_value?("Bob")

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']


# new_hash = {}

# words.each do |item|
#   key = item.split('').sort.join
#   if new_hash.has_key?(key)
#     new_hash[key].push(item)
#   else
#     new_hash[key] = Array(item)
#   end
# end 

# p new_hash

# result = {}

# words.each do |word|
#   key = word.split('').sort.join
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end

# result.each do |k, v|
#   puts "------"
#   p v
# end

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p my_hash.keys
p my_hash2.keys

