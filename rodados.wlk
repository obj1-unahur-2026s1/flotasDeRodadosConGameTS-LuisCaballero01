import partes.*
import game.*
import colores.*
class Chevrolet{
    var position = game.at(0,0)
    method image() = color.image()

    method position() = position
    method position(nuevaPosicion){
        posiciones.add(position)
        position = nuevaPosicion
    }

    var property color
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300


//Parte 4
    const property posiciones = []
    method pasoPor(unaPosicion) = posiciones.contains(unaPosicion)
    method pasoPorFila(numeroFila) = posiciones.any({p => p[1] == numeroFila})
// Con [1] se accede al segundo dato de una colección. Y Position es una colección de 2 datos, siendo Y las filas.
    method recorrioFilas(listaDeFilas) = listaDeFilas.all({f => self.pasoPorFila(f)})

    method registrarCambioDePosicion(posicion){
        posiciones.add(posicion)
    }

// reversión que se me ocurre
    // method filasPorLasQuePasó() = posiciones.map({p => p[1]})
    // method pasoPorFila(numeroFila) = self.filasPorLasQuePasó().contains(numeroFila)
    // method recorrioFilas(listaDeFilas) = listaDeFilas.all({f => self.filasPorLasQuePasó().contains(f)})
}

class Renault{
    const tieneTanqueAdicional

    method capacidad() = if (tieneTanqueAdicional) 3 else 4
    method velocidadMaxima() = if (tieneTanqueAdicional) 120 else 110
    method peso() = if(tieneTanqueAdicional) 1350 else 1200
    method color() = azul
}

class AutoEspecial{
    const property capacidad
    const property velocidadMaxima
    const property peso
    const property color
}

object traffic{
    var interior = comodo
    var motor = motorPulenta

    method capacidad() = interior.capacidadQueOtorga()
    method velocidadMaxima() = motor.velocidadMaximaPosible()
    method peso() = 4000 + interior.peso() + motor.peso()
    method color() = blanco

    method cambiarInterior(unIntrior){
        interior = unIntrior
    }
    method cambiarMotor(unMotor){
        motor = unMotor
    }
}

