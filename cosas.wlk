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