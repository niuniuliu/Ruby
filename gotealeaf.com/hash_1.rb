family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
# p family

immediate_family = family.select do |k, v|
  k = :sisters || k = :brothers || k = aunts
end

p immediate_family.values.flatten


