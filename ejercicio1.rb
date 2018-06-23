## Ejercicio 1: Método de clase
## El archivo *notas.txt* contiene las notas de 4 alumnos.

## La clase *Alumno* posee un constructor que recibe el nombre
## del alumno junto a sus cuatro notas.
class Alumno
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end
end

def read_file(filename)
  data = []
  file = File.open(filename, 'r') { |file| data = file.readlines }
  alumnos = []
  data.each do |alumno|
    alumnos << Alumno.new(*alumno.split(', '))
  end
  alumnos
end

filename = './E10CP2A1/scores.txt'
print read_file(filename)

# Se pide:
# Crear un metodo de clase llamado *read_file* que reciba como argumento el
# <u>nombre del archivo</u> (por defecto debe ser 'notas.txt') y devuelva la
# coleccion de objetos. El metodo debe alojar las instrucciones que se encuentran
# despues de la clase. Finalmente imprimir la coleccion de objetos generada.
# Hint: Debes reemplazar el argumento de *File.open* con el nombre del argumento
# del método *read_file*
