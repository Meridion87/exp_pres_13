inventario = {"Notebooks"=> 4, "PC Escritorio"=> 6, "Routers"=> 10, "Impresoras"=> 6}


def menu (inventario)
  puts "Seleccione una opción"
  puts "1. Agregar un item"
  puts "2. Eliminar un item"
  puts "3. Actualizar un item"
  puts "4. Ver stock"
  puts "5. Ver el ítem con mayor stock"
  puts "6. Preguntar por la existencia de un ítem"
  puts "salir"
  puts

  opcion_usr = gets.chomp.to_s

  case opcion_usr
  when "1"
    puts "Ingrese el nombre y valor del item a ingresar separados por una coma. Por ejemplo: computador, 5"
    nomval = gets.chomp
    item = nomval.split(',')[0].to_s
    valor = nomval.split(',')[1].to_i
    inventario[item] = valor

    print inventario
    puts
    menu(inventario)

  when "2"
    puts "Ingrese el nombre del item que desea eliminar"
    nombre = gets.chomp.to_s
    if inventario.key?(nombre)
      inventario.delete(nombre)
    else
      puts "El item que desea eliminar no existe"
    end

    print inventario
    puts
    menu(inventario)

  when "3"
    puts "Ingrese el nombre y valor del item a actualizar separados por una coma. Por ejemplo: computador, 5"
    nomval = gets.chomp
    item = nomval.split(',')[0].to_s
    valor = nomval.split(',')[1].to_i
    if inventario.key?(item)
      inventario[item] = valor
    else
      puts "El item que desea actualizar no existe"
    end

    print inventario
    puts
    menu(inventario)

  when "4"
    puts "La suma del valor de todos los itemes es: " + (inventario.inject(0) {|sum, (k, v)|  sum + v}).to_s
    puts

    menu(inventario)

  when "5"
    nommax = ""
    valmax = 0
    inventario.each do |k, v|
      if v > valmax
        nommax = k
        valmax = v
      end
    end

    puts "El item con valor máximo es #{nommax}"
    puts
    menu(inventario)

  when "62"
    puts "Ingrese el nombre del ítem sobre el cual desea saber su existencia"
    nomitem = gets.chomp.to_s
    if inventario.key?(nomitem)
      puts "Sí"
    else
      puts "No"
    end

    puts
    menu(inventario)

  when "salir"
    exit

  else
    menu()
  end

end

menu(inventario)
