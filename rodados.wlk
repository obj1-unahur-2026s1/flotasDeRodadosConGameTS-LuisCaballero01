import partes.*
import game.*
class Chevrolet{
    const property color
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
}

class Renault{
    const tieneTanqueAdicional

    method capacidad() = if (tieneTanqueAdicional) 3 else 4
    method velocidadMaxima() = if (tieneTanqueAdicional) 120 else 110
    method peso() = if(tieneTanqueAdicional) 1350 else 1200
    method color() = "azul"
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
    method color() = "blanco"

    method cambiarInterior(unIntrior){
        interior = unIntrior
    }
    method cambiarMotor(unMotor){
        motor = unMotor
    }
}

