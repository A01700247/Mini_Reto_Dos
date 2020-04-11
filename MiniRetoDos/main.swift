//
//  main.swift
//  MiniRetoDos
//
//  Created by Diego Macias on 11/04/20.
//  Copyright © 2020 Dacomhbb. All rights reserved.
//

import Foundation

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class  Auto {
    
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    var estadoNumérico : Int  = 0
    
    init() {
         self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        let velActual = self.velocidad
        var velCadena : String = "Apagado"
        
        switch(self.velocidad){
        case .Apagado:
            self.velocidad = .VelocidadBaja
            velCadena = "Velocidad Baja"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velCadena = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velCadena = "Velocidad Alta"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velCadena = "Velocidad Media"
        }
        
        return (velActual.rawValue, velCadena)
    }

}


var auto = Auto()

for i in 1...20{
    let resultado = auto.cambioDeVelocidad()
    print("Velocidad: \(resultado.actual) Estado: \(resultado.velocidadEnCadena)")
}
