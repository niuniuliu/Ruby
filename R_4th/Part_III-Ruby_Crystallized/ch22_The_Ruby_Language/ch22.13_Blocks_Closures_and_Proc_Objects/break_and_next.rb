def ten_times
  10.times do |i|
    if yield(i)
      puts "Caller likes #{i}"
    end
  end
end

ten_times do |number|
  next(true) if number ==7
end

# produces:
# Caller likes 7