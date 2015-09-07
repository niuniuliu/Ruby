dog = "dog is trusted"
cat = lambda { $SAFE = 3; "cat is untrusted" }.call
puts "dog.untrusted? = #{dog.untrusted?}"
puts "cat.untrusted? = #{cat.untrusted?}"
# running at safe level 1, these operations will succeed
puts dog.upcase!
puts cat.upcase!
# running at safe level 4, we can modify the cat
lambda { $SAFE = 4; cat.downcase! }.call
puts "cat is now '#{cat}'"
# but we can't modify the dog
lambda { $SAFE = 4; dog.downcase! }.call
puts "so we never get here"
# produces:
# from prog.rb:16:in `block in <main>'
# from prog.rb:16:in `call'
# from prog.rb:16:in `<main>'
# dog.untrusted? = false
# cat.untrusted? = true
# DOG IS TRUSTED
# CAT IS UNTRUSTED
# cat is now 'cat is untrusted'
# prog.rb:16:in `downcase!': Insecure: can't modify string (SecurityError)