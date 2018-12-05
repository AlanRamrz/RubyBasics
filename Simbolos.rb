miPrimerSimbolo = :perrito

puts miPrimerSimbolo



persona1 = {
    "nombre" => "Alan",
    "edad" => 26
}

persona2 = {
    "nombre" => "Bob Esponja",
    "edad" => 30
}

#Por cada variable, se usa una direccion de memoria diferente
puts "El valor es: #{persona1["nombre"]}"
puts "El valor es: #{persona2["nombre"]}"



persona3 = {
    :nombre => "Calamardo",
    :edad => 26
}

persona4 = {
    :nombre => "Patricio",
    :edad => 30
}

#Por cada simbolo con el mismo nombre, se usa la misma direccion de memoria
puts "El valor es: #{persona3[:nombre]}"
puts "El valor es: #{persona4[:nombre]}"


#Solo puede haber una copia del mismo simbolo, mientras que de los strings puede haber multiples.
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id



strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s|
  symbols.push(s.to_sym) #symbols.push(s.intern)  --> ES LO MISMO
end

puts symbols



cadena = "Esta es una cadena"
puts cadena.to_sym



movies = {
    :toy_story => "Habla de juguetes",
    :lion_king => "Habla de leones",
    :incredibles => "Habla de heroes"
}

#Cambio la sintaxis a la siguiente, solamente se puede dentro de hashes
movies2 = {
    toy_story: "Habla de juguetes",
    lion_king: "Habla de leones",
    incredibles: "Habla de heroes"
}

puts movies[:toy_story]
puts movies2[:toy_story]



puts "SELECT EN UN HASH"
movie_ratings = {
    memento: 3,
    primer: 3.5,
    the_matrix: 5,
    truman_show: 4,
    red_dawn: 1.5,
    skyfall: 4,
    alex_cross: 2,
    uhf: 1,
    lion_king: 3.5
}

good_movies = movie_ratings.select do |movie,rating|
  rating == 3.5
end

good_movies.each do |k,v|
  puts "La pelicula #{k} tiene un rating de #{v} puntos"
end



#Proyecto que va a gestionar peliculas: agregar, borrar, update, etc
peliculas = {
    peli1: 7,
    peli2: 10,
    peli3: 5
}

while true

  puts "Seleccion:"
  choice = gets.chomp

  case choice
    when "add"
      puts "Escribe el nombre de la pelicula:"
      title = gets.chomp

      puts "Escribe el rating de la pelicula:"
      rating = gets.chomp

      if peliculas[title.to_sym] == nil
        peliculas[title.to_sym] = rating.to_i
        puts "Added!"
      else
        puts "Ya existe"
      end

    when "update"
      puts "Dame el titulo a actualizar:"
      title = gets.chomp

      if peliculas[title.to_sym] == nil
        puts "Esta pelicula no existe."
      else
        puts "Dame el nuevo rating:"
        rating = gets.chomp

        peliculas[title.to_sym] = rating.to_i
        puts "Updated!"
      end

    when "display"
      peliculas.each do |mov,rat|
        puts "La pelicula #{mov} tiene un rating de: #{rat}"
      end

    when "delete"
      puts "Dame la pelicula a eliminar:"
      title = gets.chomp

      if peliculas[title.to_sym] == nil
        puts "Esta pelicula no existe"
      else
        peliculas.delete(title.to_sym)
      end
    else
      puts "Error!"
  end

end

