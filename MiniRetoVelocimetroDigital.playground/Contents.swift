//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    var descripcion : String {
        switch self {
        case .Apagado:
        return "Apagado"
        case .VelocidadBaja:
        return "Velocidad baja"
        case .VelocidadMedia:
        return "Velocidad media"
        case .VelocidadAlta:
        return "Velocidad alta"
        }
    }
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String){
        if velocidad.rawValue == 0{
            velocidad = Velocidades.VelocidadBaja
        }else if  velocidad.rawValue  == 20{
            velocidad = Velocidades.VelocidadMedia
        }else if  velocidad.rawValue  == 50 {
            velocidad = Velocidades.VelocidadAlta
        }else if  velocidad.rawValue  == 120{
           velocidad = Velocidades.VelocidadMedia
        }
        return(velocidad.rawValue,velocidad.descripcion)
    }

}


var auto = Auto()
for i in 1...20{
    if i == 1{
        print("\(auto.velocidad.rawValue), \(auto.velocidad.descripcion) \n")
    }
    else{
        let velocidad = auto.cambioDeVelocidad()
        print("\(velocidad.actual), \(velocidad.velocidadEnCadena) \n")
    }
}


