object caperucita {
   const pesoDeCaperucita = 60 
   
   method peso() = pesoDeCaperucita + canasta.peso()
}

object canasta {
  var cantidadDeManzanas = 6
  
  method perderManzana() { cantidadDeManzanas = cantidadDeManzanas - 1 }
  
  method peso() = cantidadDeManzanas * 0.2
  
  method reiniciar() { cantidadDeManzanas = 6 }
}

object abuelita {
  const pesoDeAbuela = 50
  
  method peso() = pesoDeAbuela
}

object feroz {
  var pesoDeLobo = 10
  const pesoOriginal = 10
  
  method estaSaludable() = pesoDeLobo >= 20 && pesoDeLobo <= 150
  
  method aumentarPeso(cantidad) { pesoDeLobo = pesoDeLobo + cantidad }
  
  method disminuirPeso(cantidad) { pesoDeLobo = pesoDeLobo - cantidad }
  
  method correr() { self.disminuirPeso(1) }
  
  method comer(cosa) {
    const ingerido = cosa.peso()
    self.aumentarPeso(ingerido * 0.1)
  }

  method crisis() { pesoDeLobo = pesoOriginal }
  
  method peso() = pesoDeLobo
}

object cazador {
  const pesoDelCazador = 70
  
  method peso() = pesoDelCazador
  
  method provocarCrisis(lobo) { lobo.crisis() }
  
  method disparar(lobo, cantidad) { lobo.disminuirPeso(cantidad) }

  method hipnotizar(lobo) {
    lobo.disminuirPeso(8)
  }

  method adiestrar(lobo) {
    lobo.disminuirPeso(12)
  }
}