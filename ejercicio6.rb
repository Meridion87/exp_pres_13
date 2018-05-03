restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
plato = ""
valor = 0
prom = 0
arreglo_key = []
arreglo_value = []


restaurant_menu.each {|key, value|
  if value > valor
    plato = key
    valor = value
  end
  }

  puts "El plato más caro es #{plato}"

restaurant_menu.each {|key, value|
  if value < valor
    plato = key
    valor = value
  end
  }

puts "El plato más barato es #{plato}"

restaurant_menu.each {|key, value| prom += value}
prom /= restaurant_menu.length

puts "El promedio de los platos es #{prom}"

restaurant_menu.each {|key, value| arreglo_key.push(key)}
print arreglo_key
puts

restaurant_menu.each {|key, value| arreglo_value.push(value)}
print arreglo_value
puts

restaurant_menu.each {|key, value| restaurant_menu[key] = value * 1.19}
print restaurant_menu
puts
