require_relative 'carta'

class Baraja
  attr_accessor :cartas
  def initialize(cartas=0)
   @numero = [1,2,3,4,5,6,7,8,9,10,11,12,13]
   @pinta = ['C','D','P','T']
   @cartas = @numero.product(@pinta)
  end
  def barajar
   @cartas = @cartas.shuffle
  end
  def sacar
    @cartas.pop
  end
  def repartir
     @cartas.sample(5)
  end
    
end

baraja1 = Baraja.new
print baraja1.cartas
puts "\n"
print baraja1.barajar
puts "\n"
print baraja1.sacar
puts "\n"
print baraja1.repartir