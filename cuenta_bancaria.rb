class CuentaBancaria
  attr_accessor :nombre_banco, :numero_cuenta, :saldo
  def initialize(nombre_banco, numero_cuenta, saldo = 0)
    @nombre_banco = nombre_banco
    @numero_cuenta = numero_cuenta
    @saldo = saldo
  end
  def transferir (monto, cuenta_externa)
    @saldo = @saldo - monto
    cuenta_externa.saldo = cuenta_externa.saldo + monto
  end
end

class Usuario
  attr_accessor :nombre_usuario
  def initialize(nombre_usuario, cuentas)
    @nombre_usuario = nombre_usuario
    @cuentas = cuentas
  end
  def saldo_total
    total = 0
    @cuentas.each do |cuenta|
      total += cuenta.saldo
    end
    total
  end
end

cuenta1 = CuentaBancaria.new("bci", 18344843, 5000)
cuenta2 = CuentaBancaria.new("bci", 28343524, 10000)
cuenta3 = CuentaBancaria.new("bci", 31265395, 15000)
cuenta4 = CuentaBancaria.new("bci", 54823490, 20000)

usuario1 = Usuario.new("robert", [cuenta3, cuenta4])
print usuario1.saldo_total
