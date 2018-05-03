meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = {}
aux = {}
aux2 = {}
max = 0

for i in (0..meses.length-1)
  h[meses[i]] = ventas[i]
end

h.each {|key, value| aux[value] = key}
h = aux


h.each {|key, value| max = key if key > max}
puts "El mes con mayor ventas es #{h[max]}"
