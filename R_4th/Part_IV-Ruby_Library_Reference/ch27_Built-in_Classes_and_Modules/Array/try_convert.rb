puts Array.try_convert([1]).inspect        #=> [1]
puts Array.try_convert("1").inspect        #=> nil

arg = []
if tmp = Array.try_convert(arg)                    # the argument is an array
elsif tmp = String.try_convert(arg)                # the argument is a string
end

arg =""
if tmp = Array.try_convert(arg)                    # the argument is an array
elsif tmp = String.try_convert(arg)                # the argument is a string
end