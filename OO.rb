#El  simbolo  @  indica que esa variable PERTENECE SOLO A ESA INSTANCIA DE LA CLASE
class Person
  def initialize(name)
    @name = name
  end
end

me = Person.new("Alan")



#El simbolo  $  hace que una variable sea GLOBAL -> No son una gran idea, ya que pueden ser cambiadas desde cualquier lado.
class MyClass
  $my_variable = "Hello!"
end

puts $my_variable



#El simbolo  @@  indica que esa variable PERTENECE A LA CLASE
class Persona
  @@cuantos = 0

  def initialize(nombre)
    @nombre = nombre
    @@cuantos += 1
  end

  def decirMiNombre
    "Mi nombre es: #{@nombre}"
  end

  #Al poner el nombre de la clase antes del metodo indica que ese metodo sera accedido solo por la clase
  def Persona.contarCuantosClase
    @@cuantos
  end

  #Si no se pone el self, se puede acceder desde cualquier instancia. El resultado sera el mismo
  def contarCuantosInstancia
    @@cuantos
  end
end

alan = Persona.new("Alan")
lesli = Persona.new("Lesli")
max = Persona.new("Max")

puts alan.decirMiNombre

puts "Se han dado de alta: #{Persona.contarCuantosClase} personas"
puts "Se han dado de alta: #{alan.contarCuantosInstancia} personas"



class Computer
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "Un nuevo archivo se ha creado en esta computadora"
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new("Alan Ramirez","Passw0rd")

