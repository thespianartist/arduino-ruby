require "rubygems"
require "arduino_firmata"

#hacemos una conexión a Arduino
arduino = ArduinoFirmata.connect
#Imprimimos la version de Firmata como exito de conexión
puts "firmata version #{arduino.version}"


#Un cliclo infinito que nos permite cada 0.5 segundos
#Prender o Apagar el Led que esta en el puerto 13,
#Imprimimos en consola el estado del led

loop do
  arduino.digital_write 13, true
  sleep 0.5
  puts "Prende"
  arduino.digital_write 13, false
  sleep 0.5
  puts "Apaga"
end
