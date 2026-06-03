class Dependencia{
    const flota = []
    const pedidos = []
    const property cantidadEmpleados

    method pesoTotalFlota() = flota.sum({r => r.peso()}) // testeado
    method estaBienEquipada() = (flota.size() >= 3) && flota.all({r => r.velocidadMaxima() >= 100}) // testeado
    method capacidadTotalEnColor(unColor) = self.rodadosDeColor(unColor).sum({r => r.capacidad()}) // testeado
    method rodadosDeColor(unColor) = flota.filter({r => r.color() == unColor})
    method colorDelRodadoMasRapido() = flota.max({r => r.velocidadMaxima()}).color() // testeado
    method capacidadFaltante() = (flota.sum({r => r.capacidad()}) - cantidadEmpleados).abs() // testeado
    method esGrande() = (cantidadEmpleados >= 40) && (flota.size() >= 5)

    method agregarAFlota(unRodado){
        flota.add(unRodado)
    }
    method quitarDeFlora(unRodado){
        flota.remove(unRodado)
    }

// parte 3
    method totalDePasajerosEnPedidos() = pedidos.sum({p => p.cantPasajeros()})
    method noPuedesSerSatisfechos() = pedidos.filter({p => !self.puedeSerSatisfechoPorAlguno(p)})
    method puedeSerSatisfechoPorAlguno(unPedido) = flota.any({v => unPedido.puedeSerSatisfechoPor(v)})
    method todosLosPedidosSonIncompatiblesCon(unColor) = pedidos.all({p => p.coloresIncompatibles().contains(unColor)})

    method agregarPedido(unPedido){
        pedidos.add(unPedido)
    }
    method quitarPedido(unPedido){
        pedidos.remove(unPedido)
    }
    method relajarTodosLosPedidos(){
        pedidos.forEach({p => p.relajar()})
    }

}