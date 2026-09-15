object knightRider {
    method peso() = 500
    method peligrosidad() = 10
}

object bumbleblee{
    method peso() = 800
    var estaTransformado = false

    method peligrosidad(){
        if(estaTransformado){
            return 30
        }else{
            return 15
        }
    }
    
}

object paqueteDeLadrillos{
    var cantLadrillos = 0

    method peso() = cantLadrillos * 2 
    method peligrosidad() = 2
    method cantidad(valor) {
        cantLadrillos = valor
    } 
    
    
}

object arenaAGranel{
    var pesoActual = 0
    method peso() = pesoActual
    method peligrosidad() = 1
    method nuevoPeso(nuevo){
        pesoActual = nuevo
    }

}


object bateriaAntiaerea{
    var estaConMisiles = true 

    method peso(){
        if(estaConMisiles){
            return 300
        }else{
            return 200
        }
    }
    method peligrosidad(){
        if(estaConMisiles){
            return 300
        }else{
            return 200
        }
    }
}

object contenedorPortuario{
    method contenedor() = []
    method peligrosidad(){
        if( contenedor.isEmpty() ){
            return 0
        }
        else {
            return contenedor.max({ objeto => objeto.peligrosidad()}).peligrosidad()
        }
    }
    method peso(){
        return 100 + contenedor.filter( c => c.peso())
    }
}

object residuoRadiactivo{
    var pesoActual = 0

    method peso() = pesoActual
    method peligrosidad() = 200
    method cambiarPeso(nuevoPeso){
        pesoActual = nuevoPeso
    }
}

object embalajeDeSeguridad{
    var cobertura = knightRider

    method peso(){
        return cobertura.peso()
    }
    method peligrosidad(){
        return cobertura.peligrosidad() % 2 
    }
}




