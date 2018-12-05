x = 5
y = 5

if x>y
  puts "x es mayor que y"
elsif x<y
  puts "x es menor que y"
else
  puts "x es igual a y"
end



hungry = true

if hungry
  puts "Tengo hambre"
else
  puts "No tengo hambre"
end

#Sirve para checar si algo es FALSO
unless hungry
  puts "No tengo hambre"
else
  puts "Tengo hambre"
end



puts "Escribe alguna palabra:"
user_input = gets.chomp
user_input.downcase!

#Hay que tener cuidado con mayus y minus, ya que si hace distincion.
if user_input.include? "s"
  puts "Tu palabra contiene la letra s, y se reemplazara con una r"
  user_input.gsub!(/s/, "r")
  puts "La nueva cadena es: #{user_input}"
else
  puts "Tu palabra no contiene la letra s. No se hara nada"
end



puts "***WHILE***"
i = 0

while i <= 5
  puts i
  i += 1
end



puts "***UNTIL***"
j =3

#Este loop se va a realizar hasta que j sea igual a 6
until j == 6
  puts j
  j += 1
end



puts "***FOR QUE EXCLUYE EL NUMERO FINAL***"

for num in 1...10
  puts num
end



puts "***FOR QUE INCLUYE EL NUMERO FINAL***"

for num in 1..10
  puts num
end



puts "Para omitir algun valor en el for"

for i in 1..10
  next if i == 3
  puts i
end



puts "Iterar en algun arreglo"
arreglo = [1,2,3,4,5]

arreglo.each do |item|
  item *= 10
  puts item
end



puts "***TIMES***"

10.times {
  puts "Hola"
}

3.times do
  puts "Adios"
end



puts "***LOOP***"
m = 0

loop do
  puts "Ruby!"
  m += 1
  break if m==30
end



puts "***DOWNTO***"

95.downto(80) do |val|
  puts val
end



puts "***UPTO***"

"L".upto("P") do |letter|
  puts letter
end




puts "Escribe una cadena para tranformarla en arreglo: "
cadena = gets.chomp

palabras = cadena.split(" ")
i=1

palabras.each do |item|
  puts "Palabra: #{i}: #{item}"
  i += 1
end









