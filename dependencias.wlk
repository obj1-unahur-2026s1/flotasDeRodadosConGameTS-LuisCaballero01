class Dependencia{
    const flota = []
    const property cantidadEmpleados

    method pesoTotalFlota() = flota.sum({r => r.peso()})
    method estaBienEquipada() = (flota.size() >= 3) && flota.all({r => r.velocidadMaxima() >= 100})
    method capacidadTotalEnColor(unColor) = self.rodadosDeColor(unColor).sum({r => r.capacidad()})
    method rodadosDeColor(unColor) = flota.filter({r => r.color() == unColor})
    method colorDelRodadoMasRapido() = flota.max({r => r.velocidadMaxima()}).color()
    method capacidadFaltante() = (flota.sum({r => r.capacidad()}) - cantidadEmpleados).abs()
    method esGrande() = (cantidadEmpleados >= 40) && (flota.size() >= 5)
    
    method agregarAFlota(unRodado){
        flota.add(unRodado)
    }
    method quitarDeFlora(unRodado){
        flota.remove(unRodado)
    }

}