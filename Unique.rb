puts "If de una sola linea" if 2>1

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each do |val|
  puts val if val % 2 == 0
end

#Recordemos que unless checa que algo sea FALSO
puts "Unless de una sola linea" unless 2>3

#boolean ? true : false
puts 3 < 4 ?  "Tres es menor a 4" : "Tres es mayor a 4"



puts "Hello there, choose a language:"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "German" then puts "Guten Tag!"
  when "Finnish" then puts "Haloo!"
  else puts "I don't know that language!"
end



favorite_book = nil
puts favorite_book

#El operador   ||=   hace que la variable se asigne solo si no se la ha dado valor antes.
#Aqui si se le asigna porque antes no tenia nada
favorite_book ||= "Cat's Cradle"
puts favorite_book

#Aqui no se le asigna porque ya tenia antes algo.
favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

#Aqui forzosamente se asigna
favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book



#Ruby no necesita un return. Va a regresar la ultima expresion evaluada
def suma(a,b)
  a+b
end

def multiploDe3?(n)
  n % 3 == 0
end

def square(n)
  n ** 2
end

numero = suma(2,5)
puts "El numero en el implicit return es: #{numero}"

numero = 4
puts "El numero #{numero} es multiplo de 3: #{multiploDe3?(numero)}"



#El metodo respond_to? va a regresar TRUE si ese metodo existe para es objeto y FALSE si no.
edad = 26

puts edad.respond_to?(:next) #true -> regresa el numero siguiente de un entero

puts edad.respond_to?(:metodoPerrito) #false -> no existe el metodo perrito


#Otra manera de agregar objetos a un arreglo es usar el simbolo <<
arreglo = [1,2,3,4,5]

arreglo.push(6)
arreglo << 7

arreglo.each do |n|
  puts n
end

#Tambien funciona en strings
cadena = "Hola "

cadena += "como "
cadena << "estas"

puts cadena





