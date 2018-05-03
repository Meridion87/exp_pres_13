h = {"x"=> 1, "y"=>2}

h["z"]=3

h["x"]=5

h.delete("y")

puts "yeeah" if h["z"] != nil

aux = {}
h.each {|key, value| aux[value] = key}

h = aux

print h
