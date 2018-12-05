5.times do
  puts "I'm a block!"
end



arreglo = [1,2,3,4]

#Con each no se puede modiicar nada internamente del arreglo original.
arreglo.each do |n|
  puts n
end

puts "***********"

#Con collect o collect! si podemos hacer operaciones y modificarlo internamente.
arreglo.collect! do |n|
  n ** 2
end

puts arreglo

puts "***********"

arreglo2 = arreglo.collect do |n|
  n ** 2
end

puts arreglo2



#Cuando llegue a yield se va a ejecutar lo que pusimos en el bloque (entre llaves o entre do-end) -> Inyectar el codigo en el bloque.
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test {
  puts ">>> We're in the block!"
}

#Otra manera de hacerlo
block_test do
  puts ">>> Otra prueba de yield"
end



def metodoConYield(name)
  puts "El nombre en el parametro del metodo es: #{name}"
  yield "NombreYield"
  yield name
end

metodoConYield("Alan") do |item|
  puts "El nombre que va en yield es: #{item}"
end



def doble(n)
  yield n
end

doble(2) do |item| #El argumento de yield se recibe en |item|
  puts item*2
end


#Podemos definir a los procedimientos como un bloque guardado para ejecutarlo cuantas veces sea necesario
puts "***PRIMER PROCEDIMIENTO***"
cubo = Proc.new do |x|
  x ** 3
end

arreglo = [1,2,3]

arreglo.collect!(&cubo)

puts arreglo



puts "***ROUND DOWN***"
round_down = Proc.new do |item|
  item.floor
end

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

ints = floats.collect(&round_down)

puts ints



#collect va a regresar o modificar el arreglo completo con alguna operacion
#select va a regresar o modificar una porcion del arreglo dada una condicion
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]

over_4_feet = Proc.new do |item|
  item >= 4
end

group_1.select!(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)

puts group_1
puts can_ride_2




numeros = [1,2,3,4,5]

palabras = numeros.collect do |n|
  n.to_s
end

print palabras

#Tambien se puede mandar a llamar de esta manera
palabras2 = numeros.collect(&:to_s)

print palabras2



#Las lambdas funcionana de manera similar
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda do |param|
  param.to_sym
end

symbols = strings.collect(&symbolize)

print symbols



my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda do |param|
  param.is_a? Symbol
end

symbols = my_array.select(&symbol_filter)

print symbols



puts "\n***RECAPITULANDO***"
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select do |item|
  item.is_a? Integer
end

puts ints



ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

under_100 = Proc.new do |item|
  item < 100
end

youngsters = ages.select(&under_100)

puts youngsters



crew = {
    captain: "Picard",
    first_officer: "Riker",
    lt_cdr: "Data",
    lt: "Worf",
    ensign: "Ro",
    counselor: "Troi",
    chief_engineer: "LaForge",
    doctor: "Crusher"
}

first_half = lambda do |key,val|
  val < "M"
end

a_to_m = crew.select(&first_half)

puts a_to_m