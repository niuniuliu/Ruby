
# one time run

def rename_current_folder_name
  # puts Dir.pwd

  movie_file = []
  src_file = []

  Dir.entries(Dir.pwd).each do |item|
    if File.file?(item)

      if item =~ /\d\w\./
      # puts item
      src_file << item      
    end
    if item =~/\d_\w/
      # puts item
      movie_file << item
    end
  end
end
# p   movie_file 
# p src_file

if src_file.size == movie_file.size
  # p src_file
  (0...src_file.size).each do |y|
    if src_file[y] && movie_file[y]
      x = src_file[y].gsub('.srt', '.mp4')
      # p Dir.pwd + '/' + src_file[y]
      # p Dir.pwd + '/' + x
      # p Dir.pwd + '/' + movie_file[y]

      name_to = Dir.pwd + '/' + x
      name_from = Dir.pwd + '/' + movie_file[y]

      p name_from
      p name_to
      File.rename(name_from, name_to)

    end
  end

  # p movie_file

end

end

# rename_current_folder_name
# p Dir.pwd
# File.rename("/Users/TimLiu/Desktop/C-tutorials-C-Essential-Training/01. What Is C#/188207_01_01_MM30_history.mp4", "/Users/TimLiu/Desktop/C-tutorials-C-Essential-Training/01. What Is C#/01. The history of C#.mp4")

Dir.entries(Dir.pwd).each do |item|
  # p item
  if File.directory?(item)
    # p item
    if item != '.' && item != '..'
      # p Dir.pwd + '/' + item
    Dir.chdir(Dir.pwd + '/' + item)
    # p Dir.pwd
    rename_current_folder_name
    # rename_current_folder_name
    Dir.chdir('..')
    # p Dir.pwd

    end
  end

end