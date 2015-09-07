# encoding=utf-8
all_files = Dir.entries(".")


# p all_files

first_letter_list = []


all_files.each do |item|
  
  # puts item
  # if item[0] == "《"
    first_letter_list << item[0..10]

    # File.rename(item, item[1..item.size])
    # p item[1..item.size]
  # end
end

puts first_letter_list.uniq.size
p first_letter_list.size