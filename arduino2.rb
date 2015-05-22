require 'bundler/setup'
require 'dino'

#Hacemos una conexión serial con Arduino
board = Dino::Board.new(Dino::TxRx::Serial.new)

#Configuracion del led
led = Dino::Components::Led.new(pin: 13, board: board)

#Cada 0.5, prendemos y apagamos el led
[:on, :off].cycle do |switch|
  led.send(switch)
  puts "Ciclo"
  sleep 0.5
end
