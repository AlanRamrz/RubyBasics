#Por default, todos los metodos son publicos a menos que indiquemos que son privados
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end

  public def bark
    puts "Woof!"
  end

  private def id
    @id_number = 12345
  end

  #Manualmente, asi se hacen los getters y setters
  def getName
    @name
  end

  def setName(name)
    @name = name
  end

  def presentacion
    puts "Hola, me llamo #{@name} y soy un #{@breed}"
  end
end

max = Dog.new("Max", "Beagle")

max.presentacion

puts max.getName

max.setName("Kid")

max.presentacion



#con  attr  me evito hacer getters y setters. el  attr_accessor  permite leer y escribir el atributo.
class Persona
  attr_reader :nombre
  attr_writer :apellido
  attr_accessor :edad

  def initialize(nombre, apellido, edad)
    @nombre = nombre
    @apellido = apellido
    @edad = edad
  end
end



#Un modulo es un toolkit de constantes y metodos
module Circle

  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end

#Para acceder a las constantes de un modulo hay que usar FORZOSAMENTE  ::
puts Circle::PI

#Para acceder a los metodos de un modulo podemos usar  .  o  ::
puts Circle.area(3)
puts Circle::area(4)




module ModuloTest
  CONSTANTE_MODULO = "Max es un beagle"

  def saluda
    puts "Hola, saludos desde el modulo"
  end
end

#Al usar  include  puedo acceder a los metodos y constantes del modulo sin poner el nombre del modulo como prefijo
class Personita
  include ModuloTest

  def initialize(nombre)
    @nombre = nombre
  end

  def diHola
    puts CONSTANTE_MODULO
    saluda
  end
end

alan = Personita.new("Alan")

alan.diHola



class Account
  attr_reader :name, :balance

  #Significa que puedo llamar el constructor solo con el parametro nombre -> balance va a defaultear a 100.
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  private def pin
    pin = 1234
  end

  private def pin_error
    "Access denied: incorrect PIN."
  end

  def display_balance(pin_number)
    if pin_number == pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
end

checking_account = Account.new("Alan Ramirez")

checking_account.display_balance(1234)
checking_account.withdraw(1234,60)
puts "El nombre del titular de la cuenta es: #{checking_account.name} --> Puedo llamarlo asi porque tiene attr_reader"

checking_account_2 = Account.new("Max",1000)
checking_account_2.display_balance(1234)

