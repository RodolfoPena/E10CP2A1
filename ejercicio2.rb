## Ejercicio 2:
## Se tienen las clases *Rectangulo* y *Cuadrado* cuyos constructores
## reciben las medidas de los lados correspondientes.
## Module formula
module Formula
  def perimetro(lado1, lado2)
    2 * (lado1 + lado2)
  end

  def area(lado1, lado2)
    lado1 * lado2
  end
end
## Rectangulo
class Rectangulo
  include Formula
  def initialize(base, altura)
    @base = base
    @altura = altura
  end

  def lados
    puts "#{@base}, #{@altura}"
  end
end
## Cuadrado
class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end

  def lados
    puts "#{@lado}, #{@lado}"
  end
end

r = Rectangulo.new(2, 3)
r.lados
puts r.perimetro(2, 3)
puts r.area(2, 3)

c = Cuadrado.new(8)
c.lados
puts r.perimetro(8, 8)
puts r.area(8, 8)
## Agregar un <u>metodo de instancia</u> llamado *lados* en ambas clases.
## El metodo debe imprimir un *string* con las medidas de los lados.

## Crear un modulo llamado *Formula*.

## Dentro del modulo *Formula* crear un metodo llamado *perimetro* que
## reciba dos argumentos (lados) y devuelva el perimetro.

## Dentro del modulo *Formula* crear un metodo llamado *area* que reciba
## dos argumentos (lados) y devuelva el area.

## Implementar -mediante *Mixin*- el modulo en las clases *Rectangulo*
## y *Cuadrado*.

## Instanciar un *Rectangulo* y un *Cuadrado*.

## Imprimir el area y perimetro de los objetos instanciados utilizando el
## metodo del modulo implementado.
