//: Mini Reto 2: Velocimetro Digital

import UIKit


enum Velocidades : Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(){
        self = .apagado
    }
}


class Auto {
    var velocidad : Velocidades
    
    
    
    init(velocidad : Velocidades)
    {
        self.velocidad = Velocidades()
    }
    
    func cambioDeVelocidad() -> (actual : Int , velocidadEnCadena : String) {
        
        var actual : Int = 0
        var cadena : String = ""
        actual=velocidad.rawValue
        
        switch velocidad {
        case .apagado:
            velocidad = .velocidadBaja
            cadena = "Apagado"
        case .velocidadBaja:
            velocidad = .velocidadMedia
            cadena = "Velocidad Baja"
        case .velocidadMedia:
            velocidad = .velocidadAlta
            cadena = "Valocidad Media"
        case .velocidadAlta:
            velocidad = .velocidadMedia
            cadena = "Velocidad Alta"
        }
        
        return (actual,cadena)
        
    }
}

var auto=Auto(velocidad: .apagado)

for i in 0 ... 19
{
    var(actual,cadena)=auto.cambioDeVelocidad()
    print ("\(actual)\t -\t \(cadena)")
}
