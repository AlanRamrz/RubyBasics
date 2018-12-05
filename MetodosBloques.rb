def imprime10numeros
  for i in 1..10
    puts i
  end
end

def crearArreglo
  arreglo = (1..10).to_a
  puts arreglo
end

def cuadrado(num)
  res = num ** 2
  return res
end

def byThree?(num)
  if num % 3 == 0
    res = true
  else
    res = false
  end

  return res
end

def byThreee?(num)
  return num % 3 == 0
end



puts "DEFINICION DE METODOS"

imprime10numeros

puts "************"

crearArreglo

puts "************"

puts cuadrado(3)

puts "********"

puts byThree?(3)
puts byThreee?(3)



puts "SORTING"

arreglo = [3,2,7,34,0,6,1,2]

arreglo.sort!
arreglo.reverse!

puts arreglo



#Proyecto que va a ordenar una biblioteca de manera ascendente o descendente

def ordenarNumeros(arreglo,reversa)
  res = arreglo.sort #Hace return del sort -> NO modifica el objeto intrinsecamente

  if reversa
    res.reverse! #No hace return del sort -> SI modifica el objeto intrinsecamente
  end

  return res
end

numeros = [2,43,5,0,1,76,12,34]

asc = ordenarNumeros(numeros,false)
desc = ordenarNumeros(numeros,true)

puts "*****NORMAL"
puts numeros

puts "*****ASC"
puts asc

puts "*****DESC"
puts desc




