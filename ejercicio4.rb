personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
hash = {}

for i in 0..(personas.length-1)
  hash[personas[i]] = edades[i]
end

print hash

def muestra_edad (hash)
  hash.each { |key, value|
    puts "#{key} tiene #{value} años"
  }
end

muestra_edad(hash)
