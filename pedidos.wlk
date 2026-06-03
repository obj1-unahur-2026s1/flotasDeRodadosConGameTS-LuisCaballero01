class Pedido{
    const coloresIncompatibles
    const distanciaARecorrer
    var tiempoMaximoDeViaje
    const cantPasajeros
    method velocidadRequerida() = distanciaARecorrer / tiempoMaximoDeViaje

    method puedeSatisfacer(unAuto){
        return  unAuto.velocidadMaxima()+10 >= self.velocidadRequerida()+10 &&
                unAuto.capacidad() >= cantPasajeros &&
                !coloresIncompatibles.contains(unAuto.color())
    }

    method acelerar(){
        tiempoMaximoDeViaje -= 1
    }
    method relajad(){
        tiempoMaximoDeViaje += 1
    }
}