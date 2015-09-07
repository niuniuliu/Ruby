filename = "test_file.txt"
File.open(filename,"w") do |f|
  f.print  # write untrusted program into file.
end

Thread.start do
  $SAFE = 4
  load(filename, true)
end